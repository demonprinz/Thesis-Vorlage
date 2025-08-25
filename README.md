# Thesis-Vorlage

Dieses Repository enthält eine LaTeX-Klasse (`avt-thesis.cls`) für das Schreiben von Abschlussarbeiten (Bachelor, Master, Diplom) am AVT. Das Template richtet sich an Anfänger und ermöglicht ein einfaches Erstellen von sauber formatierten Dokumenten.

---

## Inhalt des Repositories

- `avt-thesis.cls` – Die LaTeX-Klasse, die das Layout und die Formatierung der Arbeit definiert.
- Beispiel-Ordner (optional) – Enthält ein Beispielprojekt, das zeigt, wie die Klasse verwendet wird.

---

## Voraussetzungen

Um die LaTeX-Klasse zu verwenden, benötigst du:

1. Eine LaTeX-Distribution:
   - **Windows:** [MiKTeX](https://miktex.org/)
   - **Mac:** [MacTeX](https://tug.org/mactex/)
   - **Linux:** TeX Live (z. B. über Paketmanager)
2. Einen Editor:
   - [TeXstudio](https://www.texstudio.org/)
   - [Overleaf](https://www.overleaf.com/) (online, keine Installation nötig)

---

## Erste Schritte

1. Erstelle ein neues LaTeX-Dokument (`main.tex`) in demselben Ordner wie `avt-thesis.cls`.
2. Verwende die Klasse am Anfang deines Dokuments:

```latex
\documentclass{avt-thesis}

\begin{document}

\title{Titel deiner Arbeit}
\author{Dein Name}
\date{\today}

\maketitle

\tableofcontents

\chapter{Einleitung}
Hier beginnt deine Arbeit.

\chapter{Theorie}
Theoretischer Hintergrund.

\chapter{Methoden}
Beschreibe hier deine Experimente oder Analysen.

\chapter{Ergebnisse}
Präsentiere deine Resultate.

\chapter{Fazit}
Schlussfolgerungen.

\end{document}
