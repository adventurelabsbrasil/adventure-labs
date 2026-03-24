import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest';
import { getCandidateRecency, getRecencyRowClass } from '../utils/candidateRecency';

describe('candidateRecency utilities', () => {
    describe('getCandidateRecency', () => {
        beforeEach(() => {
            // Set fixed system time: 2024-05-20T12:00:00Z
            vi.useFakeTimers();
            vi.setSystemTime(new Date('2024-05-20T12:00:00Z'));
        });

        afterEach(() => {
            vi.useRealTimers();
        });

        it('returns "today" for a timestamp from today', () => {
            const candidate = {
                original_timestamp: '2024-05-20T10:00:00Z'
            };
            expect(getCandidateRecency(candidate)).toBe('today');
        });

        it('returns "yesterday" for a timestamp from yesterday', () => {
            const candidate = {
                original_timestamp: '2024-05-19T10:00:00Z'
            };
            expect(getCandidateRecency(candidate)).toBe('yesterday');
        });

        it('returns "week" for a timestamp from 4 days ago', () => {
            const candidate = {
                original_timestamp: '2024-05-16T10:00:00Z'
            };
            expect(getCandidateRecency(candidate)).toBe('week');
        });

        it('returns null for a timestamp from 10 days ago', () => {
            const candidate = {
                original_timestamp: '2024-05-10T10:00:00Z'
            };
            expect(getCandidateRecency(candidate)).toBe(null);
        });

        it('returns null if candidate has no timestamp', () => {
            expect(getCandidateRecency({})).toBe(null);
            expect(getCandidateRecency(null)).toBe(null);
        });

        it('uses createdAt as fallback if original_timestamp is missing', () => {
            const candidate = {
                createdAt: '2024-05-20T10:00:00Z'
            };
            expect(getCandidateRecency(candidate)).toBe('today');
        });
    });

    describe('getRecencyRowClass', () => {
        it('returns correct class for "today"', () => {
            const result = getRecencyRowClass('today');
            expect(result).toContain('bg-green-50');
            expect(result).toContain('border-green-500');
        });

        it('returns correct class for "yesterday"', () => {
            const result = getRecencyRowClass('yesterday');
            expect(result).toContain('bg-green-50/50');
            expect(result).toContain('border-green-400');
        });

        it('returns empty string for other values', () => {
            expect(getRecencyRowClass('week')).toBe('');
            expect(getRecencyRowClass(null)).toBe('');
        });
    });
});
