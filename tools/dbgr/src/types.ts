export interface DnsRecord {
  type: string;
  name: string;
  value: string;
  ttl?: number;
}

export interface DebugDns {
  domain: string;
  a: string[];
  cname: string[];
  mx: { exchange: string; priority: number }[];
  txt: string[];
  error?: string;
}

export interface VercelProject {
  id: string;
  name: string;
}

export interface VercelDomain {
  name: string;
  verified: boolean;
  projectId?: string;
}

export interface DebugVercel {
  projects: VercelProject[];
  domains: VercelDomain[];
  targetDomainConfig: { verified: boolean; suggestion?: string } | null;
  error?: string;
}

export interface DebugWix {
  note: string;
  manualSteps?: string[];
  error?: string;
}

export interface GmailDiagnostic {
  /** MX do domínio apontam para Google (Workspace) */
  mxPointsToGoogle: boolean;
  /** Existe TXT com google-site-verification (verificação no Admin Console) */
  txtVerificationPresent: boolean;
  /** Sugestões para concluir "Verificar o Gmail" no Admin */
  suggestions: string[];
}

export interface DebugReport {
  timestamp: string;
  domain: string;
  dns: DebugDns;
  vercel: DebugVercel;
  wix: DebugWix;
  gmailDiagnostic: GmailDiagnostic;
  summary: { ok: string[]; missing: string[] };
}
