export type AgentStatus = "idle" | "working" | "done" | "error";
export type TaskStatus = "queue" | "executing" | "done" | "error";
export type PostStatus = "ready" | "published" | "error" | "dry_run";

export interface AgentRow {
  id: string;
  name: string;
  role: string;
  level: string;
  status: AgentStatus;
  current_task: string | null;
  tools_active: string[];
  tasks_completed: number;
  updated_at: string;
}

export interface TaskRow {
  id: string;
  title: string;
  description: string | null;
  kanban_column: "queue" | "doing" | "published";
  status: TaskStatus;
  agent_name: string | null;
  cycle_number: number;
  progress: number;
  result: string | null;
  started_at: string | null;
  completed_at: string | null;
  created_at: string;
}

export interface AgentMessageRow {
  id: string;
  from_agent: string;
  to_agent: string | null;
  message: string;
  message_type: string;
  cycle_number: number;
  created_at: string;
}

export interface PostRow {
  id: string;
  content: string;
  topic: string;
  cycle_number: number;
  status: PostStatus;
  x_tweet_id: string | null;
  x_published_at: string | null;
  scout_report: string | null;
  word_count: number | null;
  created_at: string;
}

export interface FeedEventRow {
  id: string;
  agent_name: string;
  event_type: string;
  message: string;
  cycle_number: number | null;
  created_at: string;
}

export interface CycleRow {
  id: string;
  cycle_number: number;
  topic: string;
  status: string;
  started_at: string;
  completed_at: string | null;
  error_message: string | null;
}

export interface RunStateRow {
  id: string;
  paused: boolean;
  extra_context: string;
  last_published_at: string | null;
  last_cycle_started_at: string | null;
  cycle_in_progress: boolean;
  updated_at: string;
}
