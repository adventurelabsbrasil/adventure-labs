import { SignIn } from "@clerk/nextjs";

export default function SignInPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-[#0a1628]">
      <SignIn
        appearance={{
          elements: {
            formButtonPrimary: "bg-[#da0028] hover:bg-[#b80022]",
            card: "bg-slate-900 border border-slate-700",
            headerTitle: "text-white",
            headerSubtitle: "text-slate-400",
            socialButtonsBlockButton: "border-slate-600",
            formFieldInput: "bg-slate-800 border-slate-600",
          },
        }}
        redirectUrl="/dashboard"
        signUpUrl="/sign-in"
      />
    </div>
  );
}
