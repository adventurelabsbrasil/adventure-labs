import { getCandidateTimestamp } from './timestampUtils';

export function getCandidateRecency(c) {
    const ts = getCandidateTimestamp(c);
    if (!ts) return null;
    const date = new Date(ts * 1000);
    const now = new Date();
    const diffTime = Math.abs(now - date);
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    if (diffDays <= 1) return 'today';
    if (diffDays <= 2) return 'yesterday';
    if (diffDays <= 7) return 'week';
    return null;
}

export function getRecencyRowClass(recency) {
    if (recency === 'today') return 'bg-green-50 dark:bg-green-900/10 border-l-4 border-green-500';
    if (recency === 'yesterday') return 'bg-green-50/50 dark:bg-green-900/5 border-l-4 border-green-400';
    return '';
}
