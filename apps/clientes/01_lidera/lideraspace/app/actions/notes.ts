"use server";

import { createClient } from "@/lib/supabase/server";

export async function saveNote(lessonId: string, content: string) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return { error: "Não autenticado" };

  const { error } = await supabase.from("lms_notes").upsert(
    {
      user_id: user.id,
      lesson_id: lessonId,
      content,
      updated_at: new Date().toISOString(),
    },
    { onConflict: "user_id,lesson_id" }
  );

  return { error: error?.message ?? null };
}

export async function getNote(lessonId: string) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return null;

  const { data } = await supabase
    .from("lms_notes")
    .select("content")
    .eq("user_id", user.id)
    .eq("lesson_id", lessonId)
    .single();

  return data?.content ?? "";
}
