// src/utils/timestampUtils.js
// Funções unificadas para leitura de timestamps (original_timestamp, createdAt).
// Prioridade: original_timestamp = Carimbo do Forms (data em que a pessoa se inscreveu).
// Fallback: createdAt = quando o registro foi criado/importado no Supabase.

/**
 * Converte um campo de timestamp para segundos desde epoch.
 * Suporta: string ISO, Firestore Timestamp (seconds, _seconds, toDate), timestampValue (REST).
 */
export function getTimestampSeconds(tsField) {
  if (tsField == null) return null;
  if (typeof tsField === 'number') {
    if (tsField > 1e12) return tsField / 1000; // ms
    if (tsField > 0 && tsField < 1e11) return tsField; // seconds
    return null;
  }
  if (typeof tsField === 'string') {
    const d = new Date(tsField);
    return isNaN(d.getTime()) ? null : d.getTime() / 1000;
  }
  if (typeof tsField === 'object') {
  if (typeof tsField.seconds === 'number') return tsField.seconds;
  if (typeof tsField._seconds === 'number') return tsField._seconds;
  if (typeof tsField.toDate === 'function') {
    try {
      const d = tsField.toDate();
      return isNaN(d.getTime()) ? null : d.getTime() / 1000;
    } catch { return null; }
  }
  if (tsField.timestampValue) {
    const tv = tsField.timestampValue;
    if (typeof tv === 'string') {
      const d = new Date(tv);
      return isNaN(d.getTime()) ? null : d.getTime() / 1000;
    }
    if (typeof tv?.seconds === 'number') return tv.seconds;
    if (typeof tv?.toDate === 'function') {
      try { return tv.toDate().getTime() / 1000; } catch { return null; }
    }
  }
  }
  return null;
}

/**
 * Retorna o timestamp de cadastro do candidato em segundos.
 * Prioriza original_timestamp (Carimbo do Forms); fallback para createdAt.
 */
export function getCandidateTimestamp(c) {
  if (!c) return null;
  const o = getTimestampSeconds(c.original_timestamp ?? c.originalTimestamp);
  if (o != null) return o;
  return getTimestampSeconds(c.createdAt);
}
