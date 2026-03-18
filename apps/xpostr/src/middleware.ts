import { authMiddleware, clerkClient } from "@clerk/nextjs/server";
import { NextResponse, type NextRequest } from "next/server";

function match(path: string, prefix: string) {
  return path === prefix || path.startsWith(prefix + "/");
}

const OWNER = "contato@adventurelabs.com.br";

export default authMiddleware({
  publicRoutes: ["/", "/sign-in", "/api/cron"],
  async afterAuth(auth, req: NextRequest) {
    if (match(req.nextUrl.pathname, "/api/cron")) {
      return NextResponse.next();
    }
    if (!auth.userId && match(req.nextUrl.pathname, "/dashboard")) {
      return NextResponse.redirect(new URL("/sign-in", req.url));
    }
    if (auth.userId && match(req.nextUrl.pathname, "/dashboard")) {
      const allowedRaw = process.env.XPOSTR_ALLOWED_EMAILS ?? "";
      const allowed = allowedRaw
        .split(",")
        .map((e) => e.trim().toLowerCase())
        .filter(Boolean);
      if (allowed.length === 0) return NextResponse.next();

      let email: string | null =
        (auth.sessionClaims?.email as string)?.trim().toLowerCase() ?? null;
      if (!email) {
        try {
          const user = await clerkClient.users.getUser(auth.userId);
          const p = user.emailAddresses?.find(
            (e) => e.id === user.primaryEmailAddressId
          );
          email = p?.emailAddress?.trim().toLowerCase() ?? null;
        } catch {
          return NextResponse.redirect(new URL("/", req.url));
        }
      }
      if (email !== OWNER.toLowerCase() && (!email || !allowed.includes(email))) {
        return NextResponse.redirect(new URL("/", req.url));
      }
    }
    return NextResponse.next();
  },
});

export const config = {
  matcher: ["/", "/dashboard/:path*", "/sign-in/:path*", "/api/cron"],
};
