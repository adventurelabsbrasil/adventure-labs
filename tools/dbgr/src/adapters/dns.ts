import { DebugDns } from '../types';
import * as dns from 'dns';
import { promisify } from 'util';

const resolve4 = promisify(dns.resolve4);
const resolveCname = promisify(dns.resolveCname);
const resolveMx = promisify(dns.resolveMx);
const resolveTxt = promisify(dns.resolveTxt);

export async function resolveDns(domain: string): Promise<DebugDns> {
  const result: DebugDns = {
    domain,
    a: [],
    cname: [],
    mx: [],
    txt: [],
  };

  try {
    result.a = await resolve4(domain).catch(() => []);
  } catch {
    result.a = [];
  }

  try {
    result.cname = await resolveCname(domain).catch(() => []);
  } catch {
    result.cname = [];
  }

  try {
    const mx = await resolveMx(domain);
    result.mx = mx.map((m) => ({ exchange: m.exchange, priority: m.priority }));
  } catch {
    result.mx = [];
  }

  try {
    const txt = await resolveTxt(domain);
    result.txt = txt.map((t) => (Array.isArray(t) ? t.join('') : t));
  } catch {
    result.txt = [];
  }

  return result;
}
