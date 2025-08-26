# AVT Thesis LaTeX Template

Dieses Repository enthält eine LaTeX-Klasse (`avt-thesis.cls`) sowie eine Beispiel-`main.tex` für das Schreiben von Abschlussarbeiten (Bachelor, Master, Diplom) am AVT.  
Das Template ist so gestaltet, dass auch Anfänger schnell starten können.

---

## 🚀 Schnellstart

Wenn du direkt loslegen willst, lade dir das Starterpaket herunter:  

📦 **[avt-thesis-starter.zip](./avt-thesis-starter.zip)**  

1. Entpacke das ZIP.  
2. Öffne `main.tex` in deinem LaTeX-Editor.  
3. Kompiliere mit **XeLaTeX** → PDF-Thesis wird erstellt.  

---

## Projektstruktur

Damit alles funktioniert, sollte das Projekt wie folgt aufgebaut sein:

```
avt-thesis/
├── avt-thesis.cls               # LaTeX-Klasse (Layout & Formatierung)
├── main.tex                     # Hauptdokument
│
├── 1_frontmatter/               # Frontmatter: Titelseite, Abstract etc.
│   ├── 1_Titelseite.tex
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
│       └── libraryJR.bib        # BibTeX-Literaturdatenbank
│
└── 4_images/                    # Abbildungen
    └── beispielbild.png
```

---

## Voraussetzungen

1. **LaTeX-Distribution installieren**
   - Windows: [MiKTeX](https://miktex.org/)
   - Mac: [MacTeX](https://tug.org/mactex/)
   - Linux: TeX Live

2. **Editor wählen**
   - Lokal: [TeXstudio](https://www.texstudio.org/), VS Code mit LaTeX-Plugin
   - Online: [Overleaf](https://www.overleaf.com/)

3. **Kompilieren mit XeLaTeX**  
   Stelle sicher, dass im Editor **XeLaTeX** als Compiler eingestellt ist.  
   In `main.tex` ist dies schon mit  
   ```latex
   %!TEX program = xelatex
   ```  
   voreingestellt.

---

## Eigene Inhalte einfügen

- **Titel**: In `1_frontmatter/1_Titelseite.tex` ändern  
- **Kapitel**: Dateien in `2_chapter/` bearbeiten  
- **Bilder**: In `4_images/` ablegen und in den Kapiteln einfügen  
- **Literatur**: Quellen in `3_backmatter/library/libraryJR.bib` einfügen  

Beispiel:  
```latex
Wie in \cite{Einstein1905} beschrieben ...
```

---

## Nützliche Hinweise

- **Bilder einfügen:**
  ```latex
  egin{figure}[h]
    \centering
    \includegraphics[width=0.7	extwidth]{beispielbild.png}
    \caption{Bildunterschrift}
  \end{figure}
  ```

- **Formeln:**
  - Inline: `$E = mc^2$`
  - Abgesetzt:
    ```latex
    \[
    F = m \cdot a
    \]
    ```

- **Kapitel deaktivieren:**  
  Kommentiere in `main.tex` die entsprechende `\include{...}`-Zeile mit `%` aus.

---

## Lizenz

Dieses Template kann frei genutzt und angepasst werden.  
Pull Requests und Verbesserungen sind willkommen!

---

## Hilfe

- [LaTeX Project](https://www.latex-project.org/)
- [BibLaTeX Dokumentation](https://ctan.org/pkg/biblatex)
- Fragen stellen: *Issue* im Repository eröffnen
