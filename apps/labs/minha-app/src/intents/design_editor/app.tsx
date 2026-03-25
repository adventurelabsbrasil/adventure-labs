import { useFeatureSupport } from "@canva/app-hooks";
import { Button, Rows, Text, TextInput } from "@canva/app-ui-kit";
import { addElementAtCursor, addElementAtPoint, selection } from "@canva/design";
import { requestOpenExternalUrl } from "@canva/platform";
import { useRef, useState } from "react";
import { FormattedMessage, useIntl } from "react-intl";
import * as styles from "styles/components.css";

export const DOCS_URL = "https://www.canva.dev/docs/apps/";

export const App = () => {
  const isSupported = useFeatureSupport();
  const addElement = [addElementAtPoint, addElementAtCursor].find((fn) =>
    isSupported(fn),
  );

  const [searchTerm, setSearchTerm] = useState("");
  const [replaceTerm, setReplaceTerm] = useState("");
  const [lastRead, setLastRead] = useState("");
  const [status, setStatus] = useState(
    "Selecione um texto (richtext) no design e clique em “Ler seleção” ou “Substituir”.",
  );

  const readUnsubscribeRef = useRef<(() => void) | null>(null);
  const replaceUnsubscribeRef = useRef<(() => void) | null>(null);
  const readHandledRef = useRef(false);
  const replaceHandledRef = useRef(false);

  const onAddTextClick = () => {
    if (!addElement) {
      return;
    }

    addElement({
      type: "text",
      children: ["Hello world!"],
    });
  };

  const openExternalUrl = async (url: string) => {
    const response = await requestOpenExternalUrl({
      url,
    });

    if (response.status === "aborted") {
      // user decided not to navigate to the link
    }
  };

  const intl = useIntl();

  const readSelection = () => {
    setLastRead("");
    setStatus("Lendo texto da seleção...");

    // Limpa listeners anteriores para evitar múltiplos callbacks simultâneos.
    try {
      readUnsubscribeRef.current?.();
    } catch {
      // Alguns SDKs podem lançar erro ao desregistrar um listener já inválido.
    }
    readUnsubscribeRef.current = null;
    readHandledRef.current = false;

    readUnsubscribeRef.current = selection.registerOnChange({
      scope: "richtext",
      onChange: async (event) => {
        if (readHandledRef.current) return;

        if (event.count === 0) {
          setStatus("Nenhuma seleção encontrada.");
          return;
        }

        const draft = await event.read();
        const texts = draft.contents.map((range) => range.readPlaintext());
        const joined = texts.join("\n---\n");

        setLastRead(joined);
        setStatus(`Lido ${texts.length} bloco(s) da seleção.`);

        readHandledRef.current = true;
        try {
          readUnsubscribeRef.current?.();
        } catch {
          // ignore
        }
        readUnsubscribeRef.current = null;
      },
    });
  };

  const replaceSelection = () => {
    if (!searchTerm) {
      setStatus("Preencha o campo “Buscar” antes de substituir.");
      return;
    }

    setStatus("Aplicando substituição na seleção...");

    try {
      replaceUnsubscribeRef.current?.();
    } catch {
      // ignore
    }
    replaceUnsubscribeRef.current = null;
    replaceHandledRef.current = false;

    replaceUnsubscribeRef.current = selection.registerOnChange({
      scope: "richtext",
      onChange: async (event) => {
        if (replaceHandledRef.current) return;

        if (event.count === 0) {
          setStatus("Nenhuma seleção encontrada.");
          return;
        }

        const draft = await event.read();
        let changed = false;

        for (const range of draft.contents) {
          const plaintext = range.readPlaintext();
          const index = plaintext.indexOf(searchTerm);

          // Mantemos simples: substitui a primeira ocorrência dentro de cada bloco selecionado.
          if (index !== -1) {
            range.replaceText(
              { index, length: searchTerm.length },
              replaceTerm,
            );
            changed = true;
          }
        }

        if (changed) {
          await draft.save();
          setStatus("Substituição aplicada com sucesso.");
        } else {
          setStatus("Termo de busca não encontrado na seleção.");
        }

        replaceHandledRef.current = true;
        try {
          replaceUnsubscribeRef.current?.();
        } catch {
          // ignore
        }
        replaceUnsubscribeRef.current = null;
      },
    });
  };

  return (
    <div className={styles.scrollContainer}>
      <Rows spacing="2u">
        <Text>
          <FormattedMessage
            defaultMessage="
              Demo de leitura/escrita no Canva:
              1) Selecione um texto (richtext) no design.
              2) Clique em “Ler seleção” para ver o conteúdo.
              3) Clique em “Substituir” para trocar o texto selecionado.
            "
            description="Instructions for how to make changes to the app. Do not translate <code>src/app.tsx</code>."
          />
        </Text>

        <Text>
          <FormattedMessage
            defaultMessage="Buscar"
            description="Label do campo de busca"
          />
        </Text>
        <TextInput
          value={searchTerm}
          onChange={setSearchTerm}
          placeholder={intl.formatMessage({
            defaultMessage: "Ex.: empresa",
            description: "Exemplo do campo Buscar",
          })}
        />

        <Text>
          <FormattedMessage
            defaultMessage="Substituir"
            description="Label do campo de substituição"
          />
        </Text>
        <TextInput
          value={replaceTerm}
          onChange={setReplaceTerm}
          placeholder={intl.formatMessage({
            defaultMessage: "Ex.: Adventure Labs",
            description: "Exemplo do campo Substituir",
          })}
        />

        <Button variant="secondary" onClick={readSelection} stretch>
          {intl.formatMessage({
            defaultMessage: "Ler seleção",
            description: "Botão para ler plaintext da seleção",
          })}
        </Button>

        <Button variant="primary" onClick={replaceSelection} stretch>
          {intl.formatMessage({
            defaultMessage: "Substituir",
            description: "Botão para substituir texto na seleção",
          })}
        </Button>

        <Text>
          {intl.formatMessage({
            defaultMessage: "Status: ",
            description: "Label status",
          })}
          {status}
        </Text>

        {lastRead ? (
          <Text>
            {intl.formatMessage({
              defaultMessage: "Última leitura da seleção: ",
              description: "Label da última leitura",
            })}
            <code>{lastRead}</code>
          </Text>
        ) : null}

        <Button
          variant="primary"
          onClick={onAddTextClick}
          disabled={!addElement}
          tooltipLabel={
            !addElement
              ? intl.formatMessage({
                  defaultMessage:
                    "This feature is not supported in the current page",
                  description:
                    "Tooltip label for when a feature is not supported in the current design",
                })
              : undefined
          }
          stretch
        >
          {intl.formatMessage({
            defaultMessage: "Do something cool",
            description:
              "Button text to do something cool. Creates a new text element when pressed.",
          })}
        </Button>
        <Button variant="secondary" onClick={() => openExternalUrl(DOCS_URL)}>
          {intl.formatMessage({
            defaultMessage: "Open Canva Apps SDK docs",
            description:
              "Button text to open Canva Apps SDK docs. Opens an external URL when pressed.",
          })}
        </Button>
      </Rows>
    </div>
  );
};
