\ProvidesClass{avt-thesis}

% Configure and load scrbook
\newcommand{\baseclass}{scrbook}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{\baseclass}
}
\PassOptionsToClass{
    paper=a4,
    parskip,
    pointlessnumbers,
    listof=totoc
}{\baseclass}
% Optionen definieren
\DeclareOption{print}{%
  \PassOptionsToClass{twoside,open=right}{scrbook}%
}
\DeclareOption{pdf}{%
  \PassOptionsToClass{oneside,open=any}{scrbook}%
}
\ProcessOptions\relax

% Default setzen, wenn weder print noch pdf angegeben
\@ifclasswith{style}{print}{}{%
  \@ifclasswith{style}{pdf}{}{%
    \PassOptionsToClass{twoside,open=right}{scrbook}%
  }%
}

\newcommand{\field}[2][30ex]{%
  \makebox[#1]{\centering\underline{#2}}
}



% Optionen verarbeiten
\ProcessOptions\relax

\ProcessOptions\relax
\LoadClass{\baseclass}

% Configure some packages
\PassOptionsToPackage{ngerman, english}{babel} % english is the default language switch languages to change this
\PassOptionsToPackage{babel}{csquotes}
\PassOptionsToPackage{english,plain}{fancyref}
\PassOptionsToPackage{fleqn}{amsmath}
\PassOptionsToPackage{headsepline,plainheadsepline}{scrlayer-scrpage}
\PassOptionsToPackage{amssymb}{SIunits}
\PassOptionsToPackage{bottom=3cm,left=2cm,right=2cm,bindingoffset=1cm}{geometry}
\PassOptionsToPackage{ % special bibliography
        backend=biber,
        %citestyle=alphabetic,
        %bibstyle=alphabetic,
        maxalphanames=1,
        %sortlocale=en_US,
        sorting=none,
        maxbibnames=10,
        labelalpha=true,
        backref=true,
        hyperref=true,
        giveninits=true,
        natbib=true,
        %style=alphabetic-verb,
        style=numeric-comp,
        %style=numeric,
        %defernumbers=true,
        url=false,
        isbn=false,
        %eid=true,
        doi=true,
        %series=true,
        eprint=false,
        %pages =true,
        bibencoding = utf8
}{biblatex}
\PassOptionsToPackage{version=4}{mhchem}
\PassOptionsToPackage{intoc}{nomencl}

% And load them
\RequirePackage{
  fontenc,  % Schriftkodierung
  color,    % LaTeX in Farbe und bunt
  textcomp, % viel mehr Symbole
  amssymb,  % noch mehr Symbole
  caption,  % Captions formatieren
  booktabs, % Tabellen formatieren
  babel,    % Fremdsprachen, hier: Deutsch und Englisch
  graphicx, % Einbinden von Grafiken
  csquotes, % Zitieren mit Stil
  amsmath,  % erweiterter Mathesatz 
  fancyref, % flexible automatische Referenzen
  subcaption,% Unterbilder in einer figure-Umgebung
  rotating, % Tabellen und Abbildungen im Querformat
  array,    % Tabellen mit zusaetzlichen Eigenschaften ausstatten
  longtable,% Tabellen laenger als eine Seite
  geometry, % Seitenlayout setzen
  listings,
  biblatex,
  todonotes,
  setspace, % Zeilenabstand konfigurieren
  scrlayer-scrpage, % Kopf- und Fusszeilen formatieren
  hyperref,
  calc,
  tikz,     % Drawings
  standalone,
  pgfplots, % Plots
  siunitx,  % Automatic unit typesetting
  chemfig,  % Complex chemical structures
  geometry,
  multirow,
  mhchem,   % Reaktionsgleichungen
  amsthm,
  multicol,
  pst-barcode,
  nomencl,
  tabularx,
  placeins,  % using \floatbarriers, that images do not float in different sections
  paralist,   % for using the \begin{compactitem}
  enumitem,
  chemplants,
  esdiff,
  makecell,
  chemformula,
  cleveref,
  threeparttable,
  pifont,
  xcolor,
  pict2e,
  extramarks,
  lastpage,
  xargs,
  pgffor
}
\usepackage{pdfpages}
\crefname{figure}{figure}{figures}
\Crefname{figure}{Figure}{Figures}

\sisetup{
    detect-all = true, % Ensures that all fonts (text, math) are detected and adjusted accordingly
    detect-family = true
}
\sisetup{separate-uncertainty}


% Überschriften sollen im gleichen Font wie Fließtext erscheinen
\usepackage{fontspec}

% Set Aptos as main text font
\setmainfont{TeX Gyre Heros}

\AtEndOfClass{%
  \setkomafont{disposition}{\normalfont\bfseries}%
}

% Set up page header
\pagestyle{scrheadings}
\clearpairofpagestyles
\KOMAoption{headsepline}{false}
\setkomafont{pageheadfoot}{\normalfont\small}
\ihead{\headmark}
\ohead[\pagemark]{\pagemark}
\setkomafont{pageheadfoot}{\normalfont\small}

\setkomafont{pagenumber}{\normalfont\bfseries}

% Default graphics size
\setkeys{Gin}{width=0.9\textwidth,height=0.6\textheight,keepaspectratio=true}

% Graphic positioning more flexible than TeX standard

\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\textfraction}{0.05}
\renewcommand{\floatpagefraction}{0.8}


% Define some RWTH and AVT colors
\definecolor{avtcolor}{RGB}{14,133,196}
\definecolor{rwthblue}{RGB}{0,83,159}
\definecolor{186blau}{rgb}{0.729 ,0.859, 0.941}
\definecolor{135blau}{rgb}{0.529,0.82,0.941}
\definecolor{64blau}{rgb}{0.25,0.741,0.827}
\definecolor{79gruen}{rgb}{0.31,0.663,0.153}
\definecolor{194gruen}{rgb}{0.761,0.81,0}
\definecolor{178grau}{rgb}{0.7,0.7, 0.7}
\definecolor{0blau}{rgb}{0 ,0.506, 0.776}

\urlstyle{sf}

% Setup hyperlinks in PDF
\hypersetup{
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    bookmarksnumbered=true,
    urlcolor=black,
    plainpages=false,
    breaklinks=true
}

% Standard configuration for source code
\lstset{
    basicstyle={\fontfamily{qcr}\selectfont\footnotesize},
    keywordstyle=,
    commentstyle=\scriptsize,
    breaklines=true,
    language=Matlab,
    captionpos=b,
    numbers=left,
    numberstyle=\tiny,
    frame=none,
    tabsize=4,
    showstringspaces=false
}
%check and cross symbols
\newcommand{\cmark}{\ding{51}} % Häkchen
\newcommand{\xmark}{\ding{55}} % Kreuz

% Configure PGF and Tikz for common use
\pgfplotsset{compat=newest}
\usepgfplotslibrary{groupplots}
\usetikzlibrary{arrows,positioning,shapes,calc,patterns,decorations.pathreplacing,decorations.pathmorphing}
\tikzset{>=Stealth}
\usepgfplotslibrary{fillbetween}
\usetikzlibrary{automata}
\usetikzlibrary{plotmarks}
\usetikzlibrary{trees}

\tikzset{
  labelnode/.style={
    anchor=north,
    black,
    fill=white,
    inner sep=1pt,
    font=\bfseries
  }
}

\usetikzlibrary{external}
\tikzexternalize

\usepackage[permil]{overpic}

\newcommand{\labelnode}[1]{%
  \makebox[0pt][c]{\colorbox{white}{\textbf{#1}}}%
}

% Define some theorem environments
\newtheorem{definition}{Definition}
\numberwithin{definition}{section}
\newtheorem{hypothesis}{Hypothesis}
\numberwithin{hypothesis}{section}
\newtheorem{assumption}{Assumption}
\numberwithin{assumption}{section}

% Define units
\DeclareSIUnit{\molar}{M}
\DeclareSIUnit{\bar}{bar}
\DeclareSIUnit{\angstrom}{\protect \text  {Å}}
\DeclareSIUnit{\standardcubiccentimeter}{sccm}
\sisetup{range-units = single}


% Patch nomencl package
\usepackage{xpatch}
\makeatletter
\xapptocmd\thenomenclature{\let\@item\nomencl@item\def\nomencl@width{0pt}}{}{}
\let\nomencl@item\@item
\xpretocmd\nomencl@item{\nomencl@measure{#1}}{}{}
\def\nomencl@measure#1{%
  \sbox0{#1}%
  \ifdim\wd0>\nomencl@width\relax
    \edef\nomencl@width{\the\wd0}%
  \fi
}
\xapptocmd\endthenomenclature{%
  \immediate\write\@mainaux{\global\nomlabelwidth\nomencl@width\relax}%
}{}{}
\makeatother
%set up glossaries
\usepackage[acronym, shortcuts, xindy]{glossaries}

\newglossary[sym]{symbols}{sym}{sbl}{List of Symbols}
\newglossary[ind]{indices}{ind}{idx}{List of Indices}
\makeglossaries

\glstoctrue

%\setlength{\nomitemsep}{-\parsep}
\setlength{\marginparwidth}{2cm}

% Literature Bib modifications
\renewcommand*{\labelalphaothers}{}
\renewcommand*{\intitlepunct}{}
\renewcommand*{\bibfont}{\small}
\DeclareLabelalphaTemplate{
  \labelelement{
    \field[final]{shorthand}
    \field{label}
    %\field[strwidth=4,strside=left,ifnames=1,pcompound=true]{labelname}
    \field[strwidth=4,strside=left,ifnames=1]{labelname}
    %\field[strwidth=1,strside=left,pcompound=true]{labelname}
    \field[strwidth=1,strside=left]{labelname}
  }
  \labelelement{
    \field{year}
  }
}
\DeclareFieldFormat{pages}{#1}

\DeclareBibliographyDriver{article}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/translator+others}%
  \setunit{\labelnamepunct}\newblock%
  \addperiod%
  \usebibmacro{title}%
  \addperiod%
  \newunit\newblock%
  \usebibmacro{journal+issuetitle}%
  \nopunct
  \printfield{pages}
  \addperiod%
  %\newunit\newblock%
  %\iftoggle{bbx:isbn}%
  %  {\printfield{issn}}%
  %  {}%
  %\newunit\newblock%
  %\addperiod%
  \newunit\newblock%
  \printfield{doi}
  %\usebibmacro{doi+eprint+url}%
  \usebibmacro{pageref}%
  \usebibmacro{finentry}}

\DeclareBibliographyDriver{software}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/translator+others}%
  \setunit{\labelnamepunct}\newblock%
  \addperiod%
  \usebibmacro{title}%
  \addperiod%
  \newunit\newblock%
  \usebibmacro{url}
  \usebibmacro{pageref}%
  }

  \DeclareBibliographyDriver{Online}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{institution}%
  \setunit{\labelnamepunct}\newblock%
  \addperiod%
  \usebibmacro{title}%
  \addperiod%
  \newunit\newblock%
  \usebibmacro{url}
  \usebibmacro{year}%
  \usebibmacro{note}
  }
  
\DeclareBibliographyDriver{incollection}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/translator+others}%
  \addperiod%
  \setunit{\labelnamepunct}\newblock%
  \usebibmacro{title}%
  \newunit%
  \printlist{language}%
  \newunit\newblock%
  \usebibmacro{byauthor}%
  \newunit\newblock%
  \usebibmacro{in:}%
  \usebibmacro{maintitle+booktitle}%
  \newunit\newblock%
  \usebibmacro{byeditor+others}%
  \addperiod%
  \newunit\newblock%
  \printfield{edition}%
  \newunit%
  \iffieldundef{maintitle}%
    {\printfield{volume}%
     \printfield{part}}%
    {}%
  \newunit%
  \printfield{volumes}%
  \newunit\newblock%
  \usebibmacro{series+number}%
  \newunit\newblock%
  \printfield{note}%
  \newunit\newblock%
  \usebibmacro{publisher+location+date}%
  \addperiod%
  \newunit\newblock%
  \usebibmacro{chapter+pages}%
  \newunit\newblock%
  \iftoggle{bbx:isbn}%
    {\printfield{isbn}}%
    {}%
  \newunit\newblock%
  %\usebibmacro{doi+eprint+url}%
  %\newunit\newblock%
  %\usebibmacro{addendum+pubstate}%
  %\newunit\newblock%
  \usebibmacro{pageref}%
  \usebibmacro{finentry}}


