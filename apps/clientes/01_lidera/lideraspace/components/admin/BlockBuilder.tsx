"use client";

import { useState } from "react";
import { Trash2, Plus, GripVertical, Heading1, AlignLeft, Monitor, Link, FileText, Minus, Megaphone } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Select } from "@/components/ui/select";
import type { Block } from "@/components/lessons/ContentBlocks";
import { cn } from "@/lib/utils";

interface BlockBuilderProps {
  initialBlocks: Block[];
  inputName: string;
}

const blockTypes = [
  { value: "heading", label: "Título", icon: Heading1 },
  { value: "text", label: "Texto", icon: AlignLeft },
  { value: "embed", label: "Embed (Planilha/Vídeo)", icon: Monitor },
  { value: "link_card", label: "Card de Link", icon: Link },
  { value: "file", label: "Arquivo", icon: FileText },
  { value: "divider", label: "Divisor", icon: Minus },
  { value: "callout", label: "Destaque", icon: Megaphone },
];

function BlockEditor({
  block,
  onUpdate,
  onDelete,
}: {
  block: Block;
  onUpdate: (b: Block) => void;
  onDelete: () => void;
}) {
  return (
    <div className="group rounded-xl border border-border bg-navy-950/30 p-4 space-y-3">
      <div className="flex items-center gap-2">
        <GripVertical className="h-4 w-4 text-muted-foreground/40" />
        <span className="text-xs font-medium uppercase tracking-wider text-muted-foreground">
          {blockTypes.find((b) => b.value === block.type)?.label ?? block.type}
        </span>
        <button
          type="button"
          onClick={onDelete}
          className="ml-auto flex h-6 w-6 items-center justify-center rounded text-muted-foreground/40 hover:text-destructive hover:bg-destructive/10 transition-colors"
        >
          <Trash2 className="h-3.5 w-3.5" />
        </button>
      </div>

      {block.type === "heading" && (
        <div className="grid grid-cols-3 gap-2">
          <Select
            value={String(block.level)}
            onChange={(e) => onUpdate({ ...block, level: Number(e.target.value) as 1 | 2 | 3 })}
            className="h-8 text-sm"
          >
            <option value="1">H1 — Principal</option>
            <option value="2">H2 — Seção</option>
            <option value="3">H3 — Subseção</option>
          </Select>
          <div className="col-span-2">
            <Input
              value={block.text}
              onChange={(e) => onUpdate({ ...block, text: e.target.value })}
              placeholder="Título..."
              className="h-8 text-sm"
            />
          </div>
        </div>
      )}

      {block.type === "text" && (
        <Textarea
          value={block.content}
          onChange={(e) => onUpdate({ ...block, content: e.target.value })}
          placeholder={"Escreva o texto... Use:\n- item para listas\nParágrafo separado por linha em branco"}
          rows={4}
          className="text-sm"
        />
      )}

      {block.type === "embed" && (
        <div className="space-y-2">
          <Input
            value={block.url}
            onChange={(e) => onUpdate({ ...block, url: e.target.value })}
            placeholder="URL do Google Sheets, YouTube, Slides, etc."
            className="h-8 text-sm"
          />
          <Input
            value={block.title ?? ""}
            onChange={(e) => onUpdate({ ...block, title: e.target.value })}
            placeholder="Título (opcional)"
            className="h-8 text-sm"
          />
        </div>
      )}

      {block.type === "link_card" && (
        <div className="space-y-2">
          <Input
            value={block.url}
            onChange={(e) => onUpdate({ ...block, url: e.target.value })}
            placeholder="https://..."
            className="h-8 text-sm"
          />
          <Input
            value={block.label}
            onChange={(e) => onUpdate({ ...block, label: e.target.value })}
            placeholder="Texto do link"
            className="h-8 text-sm"
          />
          <Input
            value={block.description ?? ""}
            onChange={(e) => onUpdate({ ...block, description: e.target.value })}
            placeholder="Descrição (opcional)"
            className="h-8 text-sm"
          />
        </div>
      )}

      {block.type === "file" && (
        <div className="space-y-2">
          <Input
            value={block.url}
            onChange={(e) => onUpdate({ ...block, url: e.target.value })}
            placeholder="URL do arquivo"
            className="h-8 text-sm"
          />
          <Input
            value={block.label}
            onChange={(e) => onUpdate({ ...block, label: e.target.value })}
            placeholder="Nome do arquivo"
            className="h-8 text-sm"
          />
        </div>
      )}

      {block.type === "divider" && (
        <div className="py-1">
          <hr className="border-border" />
          <p className="text-xs text-muted-foreground text-center mt-2">Linha divisória</p>
        </div>
      )}

      {block.type === "callout" && (
        <div className="space-y-2">
          <Select
            value={block.color ?? "blue"}
            onChange={(e) => onUpdate({ ...block, color: e.target.value as any })}
            className="h-8 text-sm"
          >
            <option value="blue">ℹ️ Informação (azul)</option>
            <option value="gold">⭐ Destaque (dourado)</option>
            <option value="green">💡 Dica (verde)</option>
            <option value="red">⚠️ Atenção (vermelho)</option>
          </Select>
          <Textarea
            value={block.content}
            onChange={(e) => onUpdate({ ...block, content: e.target.value })}
            placeholder="Mensagem de destaque..."
            rows={2}
            className="text-sm"
          />
        </div>
      )}
    </div>
  );
}

function getDefaultBlock(type: string): Block {
  switch (type) {
    case "heading": return { type: "heading", level: 2, text: "" };
    case "text": return { type: "text", content: "" };
    case "embed": return { type: "embed", url: "", title: "" };
    case "link_card": return { type: "link_card", url: "", label: "" };
    case "file": return { type: "file", url: "", label: "" };
    case "divider": return { type: "divider" };
    case "callout": return { type: "callout", content: "", color: "blue" };
    default: return { type: "text", content: "" };
  }
}

export function BlockBuilder({ initialBlocks, inputName }: BlockBuilderProps) {
  const [blocks, setBlocks] = useState<Block[]>(initialBlocks ?? []);
  const [addType, setAddType] = useState("text");

  function updateBlock(i: number, block: Block) {
    setBlocks((prev) => prev.map((b, idx) => (idx === i ? block : b)));
  }

  function deleteBlock(i: number) {
    setBlocks((prev) => prev.filter((_, idx) => idx !== i));
  }

  function addBlock() {
    setBlocks((prev) => [...prev, getDefaultBlock(addType)]);
  }

  return (
    <div className="space-y-3">
      {/* Hidden field with JSON */}
      <input type="hidden" name={inputName} value={JSON.stringify(blocks)} />

      {/* Block list */}
      {blocks.length === 0 ? (
        <div className="rounded-xl border border-dashed border-border p-6 text-center">
          <p className="text-sm text-muted-foreground">
            Nenhum bloco ainda. Adicione blocos abaixo para construir o conteúdo.
          </p>
        </div>
      ) : (
        <div className="space-y-2">
          {blocks.map((block, i) => (
            <BlockEditor
              key={i}
              block={block}
              onUpdate={(b) => updateBlock(i, b)}
              onDelete={() => deleteBlock(i)}
            />
          ))}
        </div>
      )}

      {/* Add block */}
      <div className="flex gap-2 pt-1">
        <Select
          value={addType}
          onChange={(e) => setAddType(e.target.value)}
          className="h-9 text-sm flex-1"
        >
          {blockTypes.map((bt) => (
            <option key={bt.value} value={bt.value}>
              {bt.label}
            </option>
          ))}
        </Select>
        <Button type="button" onClick={addBlock} size="sm" variant="outline" className="gap-2 shrink-0">
          <Plus className="h-3.5 w-3.5" />
          Adicionar bloco
        </Button>
      </div>
    </div>
  );
}
