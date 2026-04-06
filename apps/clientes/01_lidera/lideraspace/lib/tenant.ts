export type Tenant = {
  id: string;
  slug: string;
  name: string;
  logo_url: string | null;
  primary_color: string;
  accent_color: string;
  welcome_video_url: string | null;
  domain: string | null;
};

// Default tenant used in development
export const DEFAULT_TENANT: Tenant = {
  id: "00000000-0000-0000-0000-000000000001",
  slug: "lidera",
  name: "Lidera",
  logo_url: null,
  primary_color: "#C9A227",
  accent_color: "#D4AF37",
  welcome_video_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
  domain: "localhost",
};

export function getTenantFromHeaders(headers: Headers): Tenant {
  const tenantHeader = headers.get("x-tenant-id");
  // In production, middleware sets this header after DB lookup.
  // For Phase 1, we return the default tenant.
  if (!tenantHeader) return DEFAULT_TENANT;
  return DEFAULT_TENANT;
}
