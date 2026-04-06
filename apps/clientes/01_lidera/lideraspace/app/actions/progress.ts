"use server";

import { createClient } from "@/lib/supabase/server";
import { revalidatePath } from "next/cache";

export async function toggleLessonComplete(
  lessonId: string,
  programId: string,
  completed: boolean
) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return { error: "Não autenticado" };

  if (completed) {
    const { error } = await supabase.from("lms_progress").upsert(
      {
        user_id: user.id,
        lesson_id: lessonId,
        completed: true,
        completed_at: new Date().toISOString(),
      },
      { onConflict: "user_id,lesson_id" }
    );
    if (error) return { error: error.message };
  } else {
    const { error } = await supabase
      .from("lms_progress")
      .delete()
      .eq("user_id", user.id)
      .eq("lesson_id", lessonId);
    if (error) return { error: error.message };
  }

  revalidatePath(`/dashboard/programs/${programId}`);
  revalidatePath(`/dashboard/programs/${programId}/lessons/${lessonId}`);
  revalidatePath("/dashboard");
  return { error: null };
}
