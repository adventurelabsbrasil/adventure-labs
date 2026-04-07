import { NextRequest, NextResponse } from "next/server";

const LP_HOSTNAME = "auxiliomaternidade.roseportaladvocacia.com.br";

export function middleware(request: NextRequest) {
  const hostname = request.headers.get("host") ?? "";

  // Subdomínio da LP de auxílio maternidade → rewrite para /auxilio-maternidade
  if (hostname === LP_HOSTNAME || hostname.startsWith("auxiliomaternidade.")) {
    const { pathname } = request.nextUrl;

    // Permite assets estáticos e API routes passarem normalmente
    if (
      pathname.startsWith("/api/") ||
      pathname.startsWith("/_next/") ||
      pathname.startsWith("/images/") ||
      pathname.includes(".")
    ) {
      return NextResponse.next();
    }

    // Rewrite root e qualquer rota para a página da LP
    const url = request.nextUrl.clone();
    url.pathname = "/auxilio-maternidade";
    return NextResponse.rewrite(url);
  }

  // Demais hostnames: redirect root → /marketing (antes no next.config.ts)
  const { pathname } = request.nextUrl;
  if (pathname === "/") {
    const url = request.nextUrl.clone();
    url.pathname = "/marketing";
    return NextResponse.redirect(url);
  }

  return NextResponse.next();
}

export const config = {
  matcher: ["/((?!_next/static|_next/image|favicon.ico).*)"],
};
