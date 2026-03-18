import { auth, clerkClient } from "@clerk/nextjs/server";

const OWNER = "contato@adventurelabs.com.br";

export async function requireXpostrUser(): Promise<{ userId: string } | null> {
  const a = auth();
  const { userId } = a;
  if (!userId) return null;

  const allowedRaw = process.env.XPOSTR_ALLOWED_EMAILS ?? "";
  const allowed = allowedRaw
    .split(",")
    .map((e) => e.trim().toLowerCase())
    .filter(Boolean);

  if (allowed.length === 0) return { userId };

  let email: string | null =
    (a.sessionClaims?.email as string)?.trim().toLowerCase() ?? null;
  if (!email) {
    try {
      const user = await clerkClient.users.getUser(userId);
      const primary = user.emailAddresses?.find(
        (e) => e.id === user.primaryEmailAddressId
      );
      email = primary?.emailAddress?.trim().toLowerCase() ?? null;
    } catch {
      return null;
    }
  }

  if (email === OWNER.toLowerCase()) return { userId };
  if (email && allowed.includes(email)) return { userId };
  return null;
}
