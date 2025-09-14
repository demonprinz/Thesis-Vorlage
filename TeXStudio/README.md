# 📝 AVT Thesis LaTeX Vorlage

**Eine flexible und anfängerfreundliche LaTeX-Vorlage** für Abschlussarbeiten (Bachelor, Master, Diplom) – basierend auf der Originalvorlage vom AVT mit Erweiterungen und Anpassungen.

---

## 📦 Inhalt

Dieses Repository enthält:

- `avt-thesis.cls` – Die LaTeX-Klasse, die Layout und Formatierung übernimmt  
- `main.tex` – Das Hauptdokument mit allen globalen Einstellungen (Titelblatt, Erklärung, Meta-Informationen)  
- Beispiel-Verzeichnisstruktur mit Kapiteln, Front- und Backmatter  
- Beispielbilder, Bibliographiedatenbank, Grafiken usw.

---

## 🚀 Schnellstart

So kannst du sofort loslegen:

> ⚠️ **Hinweis für Windows-Nutzer:**  
> Bitte verwende **Git Bash** (mitinstalliert bei [Git for Windows](https://git-scm.com/download/win)) und **nicht die normale Eingabeaufforderung (`cmd`) oder PowerShell**, da dort `git` oft nicht verfügbar ist.

1. Repository klonen:

   ```bash
   git clone https://github.com/demonprinz/Thesis-Vorlage.git
   ```

2. In das Verzeichnis wechseln und `main.tex` in deinem bevorzugten LaTeX-Editor öffnen.

3. Dokument kompilieren in dieser Reihenfolge:

   1. **XeLaTeX**  
   2. **Makeglossaries** (falls Glossar vorhanden)  
   3. **Biber** (für Literatur)  
   4. **XeLaTeX**  
   5. **XeLaTeX**

---

## 🗂 Projektstruktur

```
Thesis-Vorlage/
├── avt-thesis.cls               # LaTeX-Klasse
├── main.tex                     # Hauptdokument mit Titelblatt-Infos
│
├── 1_frontmatter/               # Abstract, Aufgabenstellung etc.
│   ├── 2_Abstract.tex
│   ├── 3_Aufgabenstellung.tex
│   └── 4_Erklaerung.tex
│
├── 2_chapter/                   # Hauptkapitel
│   ├── 1_Introduction.tex
│   ├── 2_TheoreticalBackground.tex
│   ├── 3_Materials&Methods.tex
│   ├── 4_Results&Discussion.tex
│   └── 5_Conclusion&Outlook.tex
│
├── 3_backmatter/                # Anhang, Bibliographie, Danksagung
│   ├── acknowledgement.tex
│   ├── nomenclature.tex
│   ├── Appendix.tex
│   └── library/
│       └── libraryJR.bib        # BibLaTeX-Datenbank
│
├── 4_images/                    # Abbildungen
│   └── beispielbild.png
│
├── Tikz/                        # Eigene TikZ-Grafiken
│   ├── Introduction/
│   ├── Theory/
│   └── ...
│
└── 5_Misc/                      # Sonstiges (z. B. Vortrag)
    └── Vortrag.pptx
```

---

## ⚙️ Wichtige Hinweise zur Anpassung

- **Titelblatt und Eidesstattliche Erklärung**:  
  Alle persönlichen Informationen (Name, Matrikelnummer, Betreuer, Titel, Datum etc.) werden **zentral in `main.tex`** gepflegt und **automatisch** auf dem Titelblatt **und** in der Eidesstattlichen Erklärung verwendet.  
  → Du musst diese Daten **nicht** in den Dateien in `1_frontmatter/` anpassen.

- **Kapitel**: Neue Kapiteldateien in `2_chapter/` anlegen und in `main.tex` mit `\include{}` einbinden.

- **Literatur**: Quellen in `3_backmatter/library/libraryJR.bib` eintragen und mit `\cite{}` referenzieren.

- **Abbildungen**: Bilder in `4_images/` speichern und mit `\includegraphics{}` einbinden.

---

## 🔧 Voraussetzungen

| Komponente | Beschreibung |
|------------|-------------|
| **LaTeX-Distribution** | z. B. TeX Live (Linux), MiKTeX (Windows), MacTeX (macOS) |
| **Editor / Umgebung**   | Lokal: TeXstudio, VS Code (+ LaTeX-Plugin) <br> Online: Overleaf |
| **Compiler**             | XeLaTeX (wegen Unicode & Schriftarten) |
| **Tools**                | Makeglossaries (für Glossare), Biber (für Literaturverwaltung) |

---

## 💡 Tipps

- Kapitel temporär deaktivieren: `\include{}`-Zeile in `main.tex` auskommentieren  
- Große Bilder vor dem Einfügen komprimieren  
- Eigene TikZ-Grafiken in Unterordnern von `Tikz/` strukturieren

---

## 📄 Lizenz

Die Vorlage ist **frei verwendbar und anpassbar**. Pull Requests und Verbesserungen sind willkommen!

---

## 🆘 Support

- Lies bei Problemen zuerst die LaTeX- und Biber-Dokumentation  
- Eröffne bei Fragen ein **Issue** in diesem Repository  
- Nutze die vorhandenen Beispielkomponenten als Orientierung

---

## ℹ️ Hintergrund

- Ursprünglich von AVT (Aachener Verfahrens Technik)  
- Überarbeitet für einfachere Nutzung, klare Struktur und bessere Erweiterbarkeit
