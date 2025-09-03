# Setup VSCode

Das einrichten von VSCode ist im grunde sehr einfach. Nach der Installation siehst du links am Fensterrand ein Symbol mit mehreren Quadraten, klicke darauf.
Es öffnet sich das Fenster in dem man Erweiterungen installieren kann. Nun suchst und installierst du einfach die folgenden Erweiterungen:
  - LaTeX
  - LaTeX Workshop
  - LTeX+ grammar/spell checking using LanguageTool

Im Grunde reicht das zum Beginnen mit LaTeX schon aus. Ein paar Punkte die ich noch dringend empfehle:
  - Verbinde dein GitHub Account
	  - Klicke dazu unten Links auf das Profil icon
	  - Melde dich bei GitHub an
	  - Autorisiere VSCode
  -  Passe die Einstellungen von LaTeX Workshop an
	  - Das ist notwendig für die Vorlage hier!
	  - Am oberen Bildschirmrand ist eine Suchleiste
	  - Suche nach settings.json
	  - Kopiere den Inhalt der settings.json Datei in diesem Repository Ordner dort hin, oder ersetze die Datei mit der Datei hier im Ordner.

Die settings.json Datei hier ändert ein paar Dinge, eine davon ist wichtig.
Wichtig ist, dass die Kompilierreihenfolge die folgende ist:

	1. XeLaTeX
	2. Makeglossaries
	3. biber
	4. XeLaTeX
	5. XeLaTeX

Die Datei hier macht das zur standard Einstellung. Außerdem sind ein paar einstellung bzgl der Fehlertoleranz getroffen, da LaTeX sich auch an kleinen, unwichtigen Problemen gerne aufhängt.
Die Dateien die ein automatisches Rekompilieren verursachen sind eingeschränkt in der Datei hier. TeX legt wärend des Kompilierens viele unterschiedliche Hilfsdateien an, diese kann man gepflegt ignorieren die meiste Zeit, bei größeren Dokumenten ist es aber erstens unnötig und zweitens nervig, dass er jedes mal neu kompiliert wenn an den hilfsdateien sich etwas ändert. 
Kannst du selbst entscheiden ob du es nutzen willst oder löscht.
      
