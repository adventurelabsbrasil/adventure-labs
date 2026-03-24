/**
 * Converte um link de compartilhamento do Google Drive para um link de visualização direta (UC).
 * Suporta formatos:
 * - https://drive.google.com/open?id=FILE_ID
 * - https://drive.google.com/file/d/FILE_ID/view
 * - https://drive.google.com/uc?id=FILE_ID
 */
export const photoDisplayUrl = (url) => {
    if (!url || typeof url !== 'string') return null;

    // Limpar espaços e extras
    const cleanUrl = url.trim();

    // Se já for um link de visualização direta corrigido, retorna ele
    if (cleanUrl.includes('drive.google.com/uc?export=view&id=')) return cleanUrl;

    const m = cleanUrl.match(/drive\.google\.com\/open\?id=([^&\s]+)/i) ||
        cleanUrl.match(/drive\.google\.com\/file\/d\/([^/]+)/i) ||
        cleanUrl.match(/drive\.google\.com\/uc\?id=([^&\s]+)/i);

    if (m && m[1]) {
        return `https://drive.google.com/uc?export=view&id=${m[1]}`;
    }

    return cleanUrl;
};

/**
 * Divide uma string que pode conter múltiplas URLs separadas por vírgula.
 */
export const parseCandidateUrls = (urlStr) => {
    if (!urlStr || typeof urlStr !== 'string') return [];
    return urlStr
        .split(',')
        .map(u => u.trim())
        .filter(u => u.length > 0 && u.startsWith('http'));
};

/**
 * Utilitário para copiar texto para o clipboard.
 */
export const copyToClipboard = async (text) => {
    if (!text) return false;
    try {
        await navigator.clipboard.writeText(text);
        return true;
    } catch (err) {
        console.error('Falha ao copiar:', err);
        return false;
    }
};
