(function () {
  'use strict';

  const NOTE_NAMES = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#'];
  const A4_MIDI = 69;
  const A4_HZ = 440;
  const LOWEST_MIDI = 21;  // A1
  const HIGHEST_MIDI = 93; // A6
  const SPHERE_MIDI_MIN = 45; // A2
  const SPHERE_MIDI_MAX = 93; // A6

  const WAVE_ANGLES = [0, Math.PI / 2, Math.PI, (3 * Math.PI) / 2];
  const CANVAS_IDS = ['waves-0', 'waves-1', 'waves-2', 'waves-3', 'waves-summary'];

  // Teclado físico: grave (1) ao agudo (M) — escala cromática (cada tecla = 1 semitom, incluindo sustenidos)
  const PIANO_KEYS = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm'];
  const PIANO_KEY_TO_MIDI = (function () {
    const map = {};
    const n = PIANO_KEYS.length;
    for (let i = 0; i < n; i++) {
      map[PIANO_KEYS[i]] = LOWEST_MIDI + i; // 1 semitom por tecla: A1, A#, B, C, C#, ...
    }
    return map;
  })();

  let audioContext = null;
  const keysCurrentlyHeld = {};
  const activeNotes = new Map();
  const activeWaveNotes = [];
  const touchMarkers = [];
  let wavePhase = 0;
  let summaryRotation = 0;
  let isPointerDown = false;
  let lastDragMidi = null;

  function midiToHz(midi) {
    return A4_HZ * Math.pow(2, (midi - A4_MIDI) / 12);
  }

  function getNoteName(midi) {
    const octave = Math.floor(midi / 12) - 1;
    const nameIndex = midi % 12;
    return NOTE_NAMES[nameIndex] + octave;
  }

  // Lá (A) = vermelho (hue 0). Cromática: A, A#, B, C, C#, D, D#, E, F, F#, G, G#
  function noteIndexToHue(noteIndex) {
    return (noteIndex % 12) * (360 / 12);
  }

  function noteToColor(midi) {
    const chromaIndex = midi % 12; // 0 = A, 1 = A#, ... 11 = G#
    const hue = noteIndexToHue(chromaIndex);
    return `hsl(${hue}, 75%, 55%)`;
  }

  function playNote(midi, continuous) {
    if (!audioContext) audioContext = new (window.AudioContext || window.webkitAudioContext)();
    if (audioContext.state === 'suspended') audioContext.resume();

    if (activeNotes.has(midi)) {
      if (continuous) return;
      const prev = activeNotes.get(midi);
      try { prev.osc.stop(); } catch (_) {}
      activeNotes.delete(midi);
    }

    const freq = midiToHz(midi);
    const color = noteToColor(midi);
    const osc = audioContext.createOscillator();
    const gain = audioContext.createGain();

    osc.type = 'triangle';
    osc.frequency.value = freq;
    osc.connect(gain);
    gain.connect(audioContext.destination);

    const now = audioContext.currentTime;
    gain.gain.setValueAtTime(0, now);
    gain.gain.linearRampToValueAtTime(0.25, now + 0.02);
    if (!continuous) {
      gain.gain.setTargetAtTime(0.0001, now + 0.02, 0.25);
      osc.stop(now + 1.8);
      setTimeout(function () { activeNotes.delete(midi); }, 2000);
    }

    osc.start(now);
    activeNotes.set(midi, { osc, gain, continuous });

    const waveEntry = {
      midi,
      color,
      freq,
      fadeOut: false,
      alpha: 1,
      startTime: performance.now()
    };
    activeWaveNotes.push(waveEntry);
    if (!continuous) {
      setTimeout(function () { waveEntry.fadeOut = true; }, 50);
    }

    touchMarkers.push({
      time: performance.now(),
      color,
      midi
    });
  }

  function setWaveNoteFadeOut(midi) {
    const entry = activeWaveNotes.find(function (n) { return n.midi === midi; });
    if (entry) entry.fadeOut = true;
  }

  function stopNote(midi) {
    const entry = activeNotes.get(midi);
    if (!entry) return;
    const { osc, gain, continuous } = entry;
    if (!continuous) return;
    const now = audioContext.currentTime;
    gain.gain.setTargetAtTime(0.0001, now, 0.22);
    osc.stop(now + 0.4);
    activeNotes.delete(midi);
    setWaveNoteFadeOut(midi);
  }

  function midiFromElement(el) {
    if (!el || !el.classList || !el.classList.contains('note-row')) return null;
    var midi = parseInt(el.dataset.midi, 10);
    return isNaN(midi) ? null : midi;
  }

  function handlePointerMove(clientX, clientY) {
    if (!isPointerDown || lastDragMidi === null) return;
    var el = document.elementFromPoint(clientX, clientY);
    var midi = midiFromElement(el);
    if (midi !== null && midi !== lastDragMidi) {
      stopNote(lastDragMidi);
      var prevRow = getRowByMidi(lastDragMidi);
      if (prevRow) prevRow.classList.remove('active');
      var continuous = document.getElementById('continuous').checked;
      playNote(midi, continuous);
      lastDragMidi = midi;
      var row = getRowByMidi(midi);
      if (row) row.classList.add('active');
    }
  }

  function buildKeyboard() {
    const container = document.getElementById('keyboard-inner');
    const continuousCheck = document.getElementById('continuous');

    for (let midi = HIGHEST_MIDI; midi >= LOWEST_MIDI; midi--) {
      const name = getNoteName(midi);
      const color = noteToColor(midi);

      const row = document.createElement('button');
      row.type = 'button';
      row.className = 'note-row';
      row.dataset.midi = String(midi);
      row.style.backgroundColor = 'transparent';
      row.setAttribute('aria-label', 'Nota ' + name);

      const label = document.createElement('span');
      label.className = 'note-label';
      label.textContent = name;
      row.appendChild(label);
      const line = document.createElement('span');
      line.className = 'note-line';
      line.style.backgroundColor = color;
      row.appendChild(line);

      const handleStart = function (e) {
        e.preventDefault();
        isPointerDown = true;
        lastDragMidi = midi;
        const continuous = continuousCheck.checked;
        playNote(midi, continuous);
        row.classList.add('active');
      };

      const handleEnd = function (e) {
        if (e.type === 'mouseup' || e.type === 'mouseleave' || e.type === 'touchend' || e.type === 'touchcancel') {
          stopNote(midi);
          row.classList.remove('active');
          if (lastDragMidi === midi) {
            isPointerDown = false;
            lastDragMidi = null;
          }
        }
      };

      row.addEventListener('mousedown', handleStart);
      row.addEventListener('touchstart', handleStart, { passive: false });
      row.addEventListener('mouseup', handleEnd);
      row.addEventListener('mouseleave', handleEnd);
      row.addEventListener('touchend', handleEnd);
      row.addEventListener('touchcancel', handleEnd);

      container.appendChild(row);
    }

    document.addEventListener('mousemove', function (e) {
      if (e.buttons !== 1) return;
      handlePointerMove(e.clientX, e.clientY);
    });
    document.addEventListener('mouseup', function () {
      if (lastDragMidi !== null) {
        stopNote(lastDragMidi);
        var r = getRowByMidi(lastDragMidi);
        if (r) r.classList.remove('active');
      }
      isPointerDown = false;
      lastDragMidi = null;
    });
    container.addEventListener('touchmove', function (e) {
      if (e.touches.length > 0) handlePointerMove(e.touches[0].clientX, e.touches[0].clientY);
    }, { passive: true });
    document.addEventListener('touchend', function () {
      if (lastDragMidi !== null) {
        stopNote(lastDragMidi);
        var r = getRowByMidi(lastDragMidi);
        if (r) r.classList.remove('active');
      }
      isPointerDown = false;
      lastDragMidi = null;
    });
  }

  const FADE_SPEED = 0.018;
  const MARKER_FADE_MS = 2000;
  const AMPLITUDE = 28;
  const STEP = 4;
  const MARKER_X = 40;
  const CYCLES = 4;

  // Ângulos como no círculo trigonométrico: cada quadro = mesma onda vista em ângulo diferente (sin(ωt + ângulo))
  function getPointOnWave(width, height, freq, phaseOffset) {
    var k = (freq / 440) * 2;
    var t = (MARKER_X / width) * Math.PI * CYCLES + wavePhase + phaseOffset;
    return { x: MARKER_X, y: height / 2 + Math.sin(t * k) * AMPLITUDE };
  }

  function drawSilenceLine(ctx, width, height) {
    ctx.strokeStyle = 'rgba(255, 255, 255, 0.5)';
    ctx.lineWidth = 1;
    ctx.setLineDash([]);
    ctx.beginPath();
    ctx.moveTo(0, height / 2);
    ctx.lineTo(width, height / 2);
    ctx.stroke();
  }

  function drawWaveInContext(ctx, width, height, phaseOffset, notes, drawMarkers) {
    const now = performance.now();
    const step = STEP;
    const cy = height / 2;

    drawSilenceLine(ctx, width, height);

    notes.forEach(function (note) {
      if (note.alpha <= 0) return;

      const parts = note.color.match(/[\d.]+/g);
      const h = parts ? parts[0] : 0;
      const s = parts ? parts[1] : 75;
      const l = parts ? parts[2] : 55;
      ctx.strokeStyle = 'hsla(' + h + ', ' + s + '%, ' + l + '%, ' + note.alpha + ')';
      ctx.lineWidth = 2;
      ctx.beginPath();

      var k = (note.freq / 440) * 2;
      var phase = wavePhase + phaseOffset;
      var amp = AMPLITUDE * note.alpha;

      for (var x = 0; x <= width + step; x += step) {
        var t = (x / width) * Math.PI * CYCLES + phase;
        var y = cy + Math.sin(t * k) * amp;
        if (x === 0) ctx.moveTo(x, y); else ctx.lineTo(x, y);
      }
      ctx.stroke();
    });

    if (drawMarkers) {
      touchMarkers.forEach(function (m) {
        const age = now - m.time;
        if (age > MARKER_FADE_MS) return;
        const alpha = 1 - age / MARKER_FADE_MS;
        const pt = getPointOnWave(width, height, midiToHz(m.midi), phaseOffset);
        const parts = m.color.match(/[\d.]+/g);
        const h = parts ? parts[0] : 0;
        const s = parts ? parts[1] : 75;
        const l = parts ? parts[2] : 55;
        ctx.fillStyle = 'hsla(' + h + ', ' + s + '%, ' + l + '%, ' + alpha + ')';
        ctx.beginPath();
        ctx.arc(pt.x, pt.y, 5, 0, Math.PI * 2);
        ctx.fill();
      });
    }
  }

  function drawSphereSummary(ctx, width, height, notes) {
    var cx = width / 2;
    var cy = height / 2;
    var r = Math.min(width, height) / 2 - 24;

    ctx.fillStyle = '#0a0a0a';
    ctx.fillRect(0, 0, width, height);

    ctx.strokeStyle = 'rgba(255, 255, 255, 0.25)';
    ctx.lineWidth = 1;
    ctx.beginPath();
    ctx.arc(cx, cy, r, 0, Math.PI * 2);
    ctx.stroke();

    var theta = summaryRotation;
    var visibleNotes = activeWaveNotes.filter(function (n) { return n.alpha > 0; });
    visibleNotes.forEach(function (note) {
      var midi = note.midi;
      if (midi < SPHERE_MIDI_MIN || midi > SPHERE_MIDI_MAX) return;
      var phi = ((midi - SPHERE_MIDI_MIN) / (SPHERE_MIDI_MAX - SPHERE_MIDI_MIN)) * Math.PI - Math.PI / 2;
      var x = r * Math.cos(phi) * Math.cos(theta);
      var y = r * Math.sin(phi);
      var sx = cx + x;
      var sy = cy - y;
      var parts = note.color.match(/[\d.]+/g);
      var h = parts ? parts[0] : 0;
      var s = parts ? parts[1] : 75;
      var l = parts ? parts[2] : 55;
      ctx.fillStyle = 'hsla(' + h + ', ' + s + '%, ' + l + '%, ' + note.alpha + ')';
      ctx.beginPath();
      ctx.arc(sx, sy, 6, 0, Math.PI * 2);
      ctx.fill();
    });
  }

  function drawFrame(canvasId, phaseOffset, isSummary) {
    const canvas = document.getElementById(canvasId);
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    const width = canvas.offsetWidth;
    const height = canvas.offsetHeight;
    if (canvas.width !== width || canvas.height !== height) {
      canvas.width = width;
      canvas.height = height;
    }

    const notes = activeWaveNotes.filter(function (n) { return n.alpha > 0; });

    if (isSummary) {
      drawSphereSummary(ctx, width, height, notes);
    } else {
      ctx.fillStyle = '#0a0a0a';
      ctx.fillRect(0, 0, width, height);
      drawWaveInContext(ctx, width, height, phaseOffset, notes, true);
    }
  }

  function drawAll() {
    wavePhase += 0.025;
    summaryRotation += 0.01;

    activeWaveNotes.forEach(function (note) {
      if (note.fadeOut) {
        note.alpha = (note.alpha || 1) - FADE_SPEED;
      }
    });

    for (var i = 0; i < WAVE_ANGLES.length; i++) {
      drawFrame(CANVAS_IDS[i], WAVE_ANGLES[i], false);
    }
    drawFrame('waves-summary', 0, true);

    for (let i = activeWaveNotes.length - 1; i >= 0; i--) {
      if (activeWaveNotes[i].alpha <= 0) activeWaveNotes.splice(i, 1);
    }

    requestAnimationFrame(drawAll);
  }

  function getRowByMidi(midi) {
    return document.querySelector('.note-row[data-midi="' + midi + '"]');
  }

  function setupPianoKeyboard() {
    const continuousCheck = document.getElementById('continuous');

    document.addEventListener('keydown', function (e) {
      if (/INPUT|TEXTAREA|SELECT/.test(document.activeElement && document.activeElement.tagName)) return;
      const key = e.key.toLowerCase();
      const midi = PIANO_KEY_TO_MIDI[key];
      if (midi === undefined) return;
      e.preventDefault();
      if (keysCurrentlyHeld[key]) return;
      keysCurrentlyHeld[key] = midi;
      const continuous = continuousCheck.checked;
      playNote(midi, continuous);
      const row = getRowByMidi(midi);
      if (row) row.classList.add('active');
    });

    document.addEventListener('keyup', function (e) {
      const key = e.key.toLowerCase();
      const midi = PIANO_KEY_TO_MIDI[key];
      if (midi === undefined) return;
      e.preventDefault();
      if (keysCurrentlyHeld[key] !== undefined) {
        stopNote(keysCurrentlyHeld[key]);
        delete keysCurrentlyHeld[key];
        const row = getRowByMidi(midi);
        if (row) row.classList.remove('active');
      }
    });
  }

  function init() {
    buildKeyboard();
    setupPianoKeyboard();
    drawAll();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
