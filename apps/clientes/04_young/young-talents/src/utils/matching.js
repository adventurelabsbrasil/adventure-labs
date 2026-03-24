// src/utils/matching.js
// Sistema de matching entre candidatos e vagas

import { normalizeCity } from './cityNormalizer';
import { normalizeInterestArea, normalizeInterestAreasString } from './interestAreaNormalizer';
import { PIPELINE_STAGES } from '../constants';

/**
 * Calcula o score de match entre um candidato e uma vaga
 * @param {Object} candidate - Candidato
 * @param {Object} job - Vaga
 * @returns {Object} - { score: number (0-100), matches: { city: boolean, interestArea: boolean, details: string[] } }
 */
export function calculateMatchScore(candidate, job) {
  let score = 0;
  const matches = {
    city: false,
    interestArea: false,
    details: []
  };
  const maxScore = 100;

  // Match de Cidade (40 pontos)
  if (candidate.city && job.city) {
    const candidateCity = normalizeCity(candidate.city).toLowerCase().trim();
    const jobCity = normalizeCity(job.city).toLowerCase().trim();
    
    if (candidateCity === jobCity) {
      score += 40;
      matches.city = true;
      matches.details.push(`Cidade: ${candidate.city} ↔ ${job.city}`);
    } else {
      // Match parcial (mesma cidade base, diferente estado)
      const candidateCityBase = candidateCity.split('/')[0].trim();
      const jobCityBase = jobCity.split('/')[0].trim();
      if (candidateCityBase === jobCityBase) {
        score += 20;
        matches.details.push(`Cidade similar: ${candidate.city} ↔ ${job.city}`);
      }
    }
  }

  // Match de Área de Interesse (60 pontos)
  if (candidate.interestAreas && job.interestArea) {
    const candidateAreas = normalizeInterestAreasString(candidate.interestAreas);
    const jobArea = normalizeInterestArea(job.interestArea);
    
    // Verificar se alguma área do candidato corresponde à área da vaga
    const candidateAreasList = candidateAreas.split(',').map(a => a.trim().toLowerCase());
    const jobAreaLower = jobArea.toLowerCase().trim();
    
    // Match exato
    if (candidateAreasList.includes(jobAreaLower)) {
      score += 60;
      matches.interestArea = true;
      matches.details.push(`Área de interesse: ${candidate.interestAreas} ↔ ${job.interestArea}`);
    } else {
      // Match parcial (verifica se alguma palavra-chave corresponde)
      const jobAreaWords = jobAreaLower.split(/[\s,]+/);
      let partialMatch = false;
      candidateAreasList.forEach(candidateArea => {
        jobAreaWords.forEach(jobWord => {
          if (candidateArea.includes(jobWord) || jobWord.includes(candidateArea)) {
            if (jobWord.length > 3) { // Evitar matches muito curtos
              partialMatch = true;
            }
          }
        });
      });
      
      if (partialMatch) {
        score += 30;
        matches.details.push(`Área similar: ${candidate.interestAreas} ↔ ${job.interestArea}`);
      }
    }
  }

  // Bonus: Match completo (cidade + área)
  if (matches.city && matches.interestArea) {
    score = Math.min(100, score + 10); // Bonus de 10 pontos para match completo
  }

  return {
    score: Math.round(score),
    matches,
    level: score >= 80 ? 'high' : score >= 50 ? 'medium' : score >= 20 ? 'low' : 'none'
  };
}

/**
 * Encontra todas as vagas que fazem match com um candidato
 * @param {Object} candidate - Candidato
 * @param {Array} jobs - Lista de vagas
 * @returns {Array} - Lista de { job, matchScore, matchDetails }
 */
export function findMatchingJobs(candidate, jobs) {
  if (!candidate || !jobs || jobs.length === 0) return [];
  
  const openJobs = jobs.filter(j => j.status === 'Aberta');
  
  return openJobs
    .map(job => {
      const match = calculateMatchScore(candidate, job);
      return {
        job,
        matchScore: match.score,
        matchDetails: match.matches,
        matchLevel: match.level
      };
    })
    .filter(result => result.matchScore > 0)
    .sort((a, b) => b.matchScore - a.matchScore);
}

/**
 * Encontra todos os candidatos que fazem match com uma vaga
 * @param {Object} job - Vaga
 * @param {Array} candidates - Lista de candidatos
 * @returns {Array} - Lista de { candidate, matchScore, matchDetails }
 */
export function findMatchingCandidates(job, candidates) {
  if (!job || !candidates || candidates.length === 0) return [];
  
  const activeCandidates = candidates.filter(c => !c.deletedAt && (c.status === 'Inscrito' || PIPELINE_STAGES.includes(c.status)));
  
  return activeCandidates
    .map(candidate => {
      const match = calculateMatchScore(candidate, job);
      return {
        candidate,
        matchScore: match.score,
        matchDetails: match.matches,
        matchLevel: match.level
      };
    })
    .filter(result => result.matchScore > 0)
    .sort((a, b) => b.matchScore - a.matchScore);
}

/**
 * Obtém a cor do badge baseado no nível de match
 * @param {string} level - 'high', 'medium', 'low', 'none'
 * @returns {string} - Classes CSS do Tailwind
 */
export function getMatchBadgeColor(level) {
  switch (level) {
    case 'high':
      return 'bg-green-500 text-white border-green-600';
    case 'medium':
      return 'bg-yellow-500 text-white border-yellow-600';
    case 'low':
      return 'bg-orange-500 text-white border-orange-600';
    default:
      return 'bg-gray-500 text-white border-gray-600';
  }
}

/**
 * Obtém o texto do badge baseado no nível de match
 * @param {string} level - 'high', 'medium', 'low', 'none'
 * @returns {string} - Texto do badge
 */
export function getMatchBadgeText(level) {
  switch (level) {
    case 'high':
      return 'Alto Match';
    case 'medium':
      return 'Match Médio';
    case 'low':
      return 'Match Baixo';
    default:
      return 'Sem Match';
  }
}
