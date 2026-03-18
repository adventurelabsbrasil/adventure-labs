import { DebugVercel, VercelProject, VercelDomain } from '../types';

const VERCEL_API = 'https://api.vercel.com';

export async function fetchVercelDebug(token: string, targetDomain: string): Promise<DebugVercel> {
  const result: DebugVercel = {
    projects: [],
    domains: [],
    targetDomainConfig: null,
  };

  const headers: Record<string, string> = {
    Authorization: `Bearer ${token}`,
  };

  try {
    const [projectsRes, domainsRes] = await Promise.all([
      fetch(`${VERCEL_API}/v9/projects`, { headers }),
      fetch(`${VERCEL_API}/v6/domains`, { headers }),
    ]);

    if (!projectsRes.ok) {
      result.error = `Vercel projects: ${projectsRes.status} ${projectsRes.statusText}`;
      return result;
    }

    const projectsData = (await projectsRes.json()) as { projects?: { id: string; name: string }[] };
    result.projects = (projectsData.projects || []).map((p) => ({ id: p.id, name: p.name }));

    if (!domainsRes.ok) {
      result.domains = [];
    } else {
      const domainsData = (await domainsRes.json()) as { domains?: { name: string; verified?: boolean }[] };
      result.domains = (domainsData.domains || []).map((d) => ({
        name: d.name,
        verified: !!d.verified,
      }));
    }

    const configRes = await fetch(`${VERCEL_API}/v6/domains/${encodeURIComponent(targetDomain)}/config`, { headers });
    if (configRes.ok) {
      const config = (await configRes.json()) as { verified?: boolean; misconfiguration?: { message?: string } };
      result.targetDomainConfig = {
        verified: !!config.verified,
        suggestion: config.misconfiguration?.message,
      };
    } else {
      result.targetDomainConfig = { verified: false, suggestion: 'Domínio ainda não adicionado ou não verificado na Vercel.' };
    }
  } catch (e) {
    result.error = e instanceof Error ? e.message : String(e);
  }

  return result;
}

export async function addDomainToProject(
  token: string,
  domain: string,
  projectId: string
): Promise<{ ok: boolean; error?: string }> {
  const res = await fetch(`${VERCEL_API}/v10/projects/${projectId}/domains`, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${token}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ name: domain }),
  });

  if (!res.ok) {
    const body = await res.text();
    return { ok: false, error: `${res.status} ${body}` };
  }
  return { ok: true };
}

export async function getDomainConfig(
  token: string,
  domain: string
): Promise<{ verified: boolean; configuration?: { cname?: string; aValues?: string[] }; error?: string }> {
  const res = await fetch(`${VERCEL_API}/v6/domains/${encodeURIComponent(domain)}/config`, {
    headers: { Authorization: `Bearer ${token}` },
  });

  if (!res.ok) {
    return { verified: false, error: `${res.status} ${await res.text()}` };
  }

  const data = (await res.json()) as {
    verified?: boolean;
    configuration?: { cname?: string; aValues?: string[] };
  };
  return {
    verified: !!data.verified,
    configuration: data.configuration,
  };
}

export async function getProjectIdByName(token: string, name: string): Promise<string | null> {
  const res = await fetch(`${VERCEL_API}/v9/projects?search=${encodeURIComponent(name)}`, {
    headers: { Authorization: `Bearer ${token}` },
  });
  if (!res.ok) return null;
  const data = (await res.json()) as { projects?: { id: string; name: string }[] };
  const project = (data.projects || []).find((p) => p.name === name);
  return project ? project.id : null;
}
