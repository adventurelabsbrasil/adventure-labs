"use server";

import { createClient } from "@/lib/supabase/server";
import { getUserRole } from "@/lib/auth";
import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { DEFAULT_TENANT } from "@/lib/tenant";

async function assertAdmin() {
  const role = await getUserRole();
  if (role !== "admin") throw new Error("Não autorizado");
}

// ─── Programs ─────────────────────────────────────────────────────────────────

export async function createProgram(formData: FormData) {
  await assertAdmin();
  const supabase = await createClient();

  const title = formData.get("title") as string;
  const description = formData.get("description") as string;
  const cover_url = (formData.get("cover_url") as string) || null;

  const { data, error } = await supabase
    .from("lms_programs")
    .insert({
      tenant_id: DEFAULT_TENANT.id,
      title,
      description,
      cover_url,
      published: false,
      order: 0,
    })
    .select("id")
    .single();

  if (error) throw new Error(error.message);

  revalidatePath("/dashboard/admin/programs");
  redirect(`/dashboard/admin/programs/${data.id}`);
}

export async function updateProgram(programId: string, formData: FormData) {
  await assertAdmin();
  const supabase = await createClient();

  const title = formData.get("title") as string;
  const description = formData.get("description") as string;
  const cover_url = (formData.get("cover_url") as string) || null;
  const published = formData.get("published") === "true";

  const { error } = await supabase
    .from("lms_programs")
    .update({ title, description, cover_url, published })
    .eq("id", programId);

  if (error) throw new Error(error.message);

  revalidatePath("/dashboard/admin/programs");
  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

export async function deleteProgram(programId: string) {
  await assertAdmin();
  const supabase = await createClient();

  const { error } = await supabase
    .from("lms_programs")
    .delete()
    .eq("id", programId);

  if (error) throw new Error(error.message);

  revalidatePath("/dashboard/admin/programs");
  redirect("/dashboard/admin/programs");
}

// ─── Modules ──────────────────────────────────────────────────────────────────

export async function createModule(programId: string, formData: FormData) {
  await assertAdmin();
  const supabase = await createClient();

  const title = formData.get("title") as string;
  const description = (formData.get("description") as string) || null;

  // Get next order
  const { data: existing } = await supabase
    .from("lms_modules")
    .select("order")
    .eq("program_id", programId)
    .order("order", { ascending: false })
    .limit(1);

  const nextOrder = existing?.[0]?.order != null ? existing[0].order + 1 : 0;

  const { error } = await supabase.from("lms_modules").insert({
    program_id: programId,
    title,
    description,
    order: nextOrder,
  });

  if (error) throw new Error(error.message);

  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

export async function deleteModule(moduleId: string, programId: string) {
  await assertAdmin();
  const supabase = await createClient();

  const { error } = await supabase
    .from("lms_modules")
    .delete()
    .eq("id", moduleId);

  if (error) throw new Error(error.message);

  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

// ─── Lessons ──────────────────────────────────────────────────────────────────

export async function createLesson(
  moduleId: string,
  programId: string,
  formData: FormData
) {
  await assertAdmin();
  const supabase = await createClient();

  const title = formData.get("title") as string;
  const type = formData.get("type") as "video" | "doc" | "page";
  const video_url = (formData.get("video_url") as string) || null;
  const content_md = (formData.get("content_md") as string) || null;
  const material_url = (formData.get("material_url") as string) || null;

  const { data: existing } = await supabase
    .from("lms_lessons")
    .select("order")
    .eq("module_id", moduleId)
    .order("order", { ascending: false })
    .limit(1);

  const nextOrder = existing?.[0]?.order != null ? existing[0].order + 1 : 0;

  const { error } = await supabase.from("lms_lessons").insert({
    module_id: moduleId,
    title,
    type,
    video_url,
    content_md,
    material_url,
    order: nextOrder,
  });

  if (error) throw new Error(error.message);

  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

export async function updateLesson(
  lessonId: string,
  programId: string,
  formData: FormData
) {
  await assertAdmin();
  const supabase = await createClient();

  const title = formData.get("title") as string;
  const type = formData.get("type") as "video" | "doc" | "page" | "embed" | "link";
  const video_url = (formData.get("video_url") as string) || null;
  const embed_url = (formData.get("embed_url") as string) || null;
  const content_md = (formData.get("content_md") as string) || null;
  const material_url = (formData.get("material_url") as string) || null;
  const blocksRaw = formData.get("content_blocks") as string;
  let content_blocks = [];
  try { content_blocks = JSON.parse(blocksRaw || "[]"); } catch {}

  const { error } = await supabase
    .from("lms_lessons")
    .update({ title, type, video_url, embed_url, content_md, content_blocks, material_url })
    .eq("id", lessonId);

  if (error) throw new Error(error.message);

  revalidatePath(`/dashboard/admin/programs/${programId}`);
  revalidatePath(`/dashboard/admin/programs/${programId}/lessons/${lessonId}/edit`);
  redirect(`/dashboard/admin/programs/${programId}`);
}

export async function renameModule(moduleId: string, programId: string, formData: FormData) {
  await assertAdmin();
  const supabase = await createClient();
  const title = formData.get("title") as string;
  if (!title?.trim()) return;
  const { error } = await supabase.from("lms_modules").update({ title }).eq("id", moduleId);
  if (error) throw new Error(error.message);
  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

export async function togglePublished(programId: string, published: boolean) {
  await assertAdmin();
  const supabase = await createClient();
  const { error } = await supabase.from("lms_programs").update({ published }).eq("id", programId);
  if (error) throw new Error(error.message);
  revalidatePath(`/dashboard/admin/programs`);
  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

export async function deleteLesson(lessonId: string, programId: string) {
  await assertAdmin();
  const supabase = await createClient();

  const { error } = await supabase
    .from("lms_lessons")
    .delete()
    .eq("id", lessonId);

  if (error) throw new Error(error.message);

  revalidatePath(`/dashboard/admin/programs/${programId}`);
}

// ─── Enrollments ─────────────────────────────────────────────────────────────

export async function enrollMember(userId: string, programId: string) {
  await assertAdmin();
  const supabase = await createClient();

  const { error } = await supabase.from("lms_enrollments").upsert(
    { user_id: userId, program_id: programId },
    { onConflict: "user_id,program_id" }
  );

  if (error) throw new Error(error.message);

  revalidatePath("/dashboard/admin/members");
}

export async function unenrollMember(userId: string, programId: string) {
  await assertAdmin();
  const supabase = await createClient();

  const { error } = await supabase
    .from("lms_enrollments")
    .delete()
    .eq("user_id", userId)
    .eq("program_id", programId);

  if (error) throw new Error(error.message);

  revalidatePath("/dashboard/admin/members");
}
