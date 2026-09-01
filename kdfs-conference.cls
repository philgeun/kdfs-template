% KDFS conference LaTeX class
% Reconstructed from the official 2026 Korea Digital Forensics Society
% conference HWP template. Compile with XeLaTeX or Tectonic.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kdfs-conference}[2026/08/30 v1.0 KDFS conference format]

\LoadClass[10pt,a4paper]{article}

\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{kdfs-conference}
    {This class requires XeLaTeX or Tectonic}
    {Select XeLaTeX in Overleaf, or compile with tectonic.}
\fi

\RequirePackage{geometry}
\geometry{
  a4paper,
  left=20mm,
  right=20mm,
  top=20mm,
  bottom=15mm,
  headheight=10mm,
  headsep=0mm,
  footskip=4mm
}

\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage[table]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{cite}
\RequirePackage[hidelinks,unicode]{hyperref}

% Official HWP faces are HY견명조, 휴먼명조, and 돋움.
% Noto fallbacks keep the class portable when Hancom fonts are unavailable.
\IfFontExistsTF{HY견명조}{
  \newfontfamily\KDFSTitleLatin[BoldFont=*,BoldFeatures={FakeBold=1.8}]{HY견명조}
  \newfontfamily\KDFSTitleLatinSpaced[LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.8}]{HY견명조}
  \newCJKfontfamily\KDFSTitleCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.8}]{HY견명조}
  \newCJKfontfamily\KDFSTitleCJKSpaced[Script=Default,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.8}]{HY견명조}
}{
  \newfontfamily\KDFSTitleLatin[BoldFont=*,BoldFeatures={FakeBold=1.8}]{Noto Serif KR}
  \newfontfamily\KDFSTitleLatinSpaced[LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.8}]{Noto Serif KR}
  \newCJKfontfamily\KDFSTitleCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.8}]{Noto Serif KR}
  \newCJKfontfamily\KDFSTitleCJKSpaced[Script=Default,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.8}]{Noto Serif KR}
}

\IfFontExistsTF{휴먼명조}{
  \newfontfamily\KDFSBodyLatin[BoldFont=*,BoldFeatures={FakeBold=1.5}]{휴먼명조}
  \newfontfamily\KDFSAbstractLatin[FakeStretch=0.96,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.5}]{휴먼명조}
  \newCJKfontfamily\KDFSBodyCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{휴먼명조}
  \newCJKfontfamily\KDFSAbstractCJK[Script=Default,FakeStretch=0.96,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.5}]{휴먼명조}
}{
  \newfontfamily\KDFSBodyLatin[BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Serif KR}
  \newfontfamily\KDFSAbstractLatin[FakeStretch=0.96,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Serif KR}
  \newCJKfontfamily\KDFSBodyCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Serif KR}
  \newCJKfontfamily\KDFSAbstractCJK[Script=Default,FakeStretch=0.96,LetterSpace=8.0,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Serif KR}
}

\IfFontExistsTF{돋움}{
  \newfontfamily\KDFSSansLatin[BoldFont=*,BoldFeatures={FakeBold=1.5}]{돋움}
  \newCJKfontfamily\KDFSSansCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{돋움}
}{
  \newfontfamily\KDFSSansLatin[BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Sans KR}
  \newCJKfontfamily\KDFSSansCJK[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Sans KR}
}

\newcommand{\KDFSTitleFace}{\KDFSTitleLatin\KDFSTitleCJK}
\newcommand{\KDFSTitleSpacedFace}{\KDFSTitleLatinSpaced\KDFSTitleCJKSpaced}
\newcommand{\KDFSBodyFace}{\KDFSBodyLatin\KDFSBodyCJK}
\newcommand{\KDFSAbstractFace}{\KDFSAbstractLatin\KDFSAbstractCJK}
\newcommand{\KDFSSansFace}{\KDFSSansLatin\KDFSSansCJK}

\setCJKmainfont[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Serif KR}
\setCJKsansfont[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Sans KR}
\setCJKmonofont[Script=Default,BoldFont=*,BoldFeatures={FakeBold=1.5}]{Noto Sans KR}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Consolas}

\setlength{\parindent}{10pt}
\setlength{\parskip}{0pt}
\setlength{\columnsep}{10mm}
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\emergencystretch=1em

\AtBeginDocument{\KDFSBodyFace\fontsize{10pt}{16pt}\selectfont}

\makeatletter

% User metadata.
\newcommand{\kdfstitle}[1]{\gdef\@kdfstitle{#1}}
\newcommand{\kdfstitleen}[1]{\gdef\@kdfstitleen{#1}}
\newcommand{\kdfsabstract}[1]{\gdef\@kdfsabstract{#1}}
\newcommand{\kdfsabstracten}[1]{\gdef\@kdfsabstracten{#1}}
\newcommand{\kdfskeywords}[1]{\gdef\@kdfskeywords{#1}}
\newcommand{\kdfskeywordsen}[1]{\gdef\@kdfskeywordsen{#1}}
\newcommand{\kdfsdoi}[1]{\gdef\@kdfsdoi{#1}}

\newcommand{\@kdfstitle}{한글 제목}
\newcommand{\@kdfstitleen}{English Title}
\newcommand{\@kdfsabstract}{국문 요약을 입력하십시오.}
\newcommand{\@kdfsabstracten}{Enter the English abstract.}
\newcommand{\@kdfskeywords}{주제어 1, 주제어 2}
\newcommand{\@kdfskeywordsen}{keyword 1, keyword 2}
\newcommand{\@kdfsdoi}{XXXXXXXXXXXXXXXXX}

% Header and footer from the official HWP template.
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{%
  \KDFSSansFace\fontsize{8pt}{12pt}\selectfont
  ISSN(Print) : 1976-5304, ISSN(Online) : 2713-931X\\[-1pt]
  \url{https://kdfs.jams.or.kr}, DOI : \@kdfsdoi
}
\fancyfoot[L]{%
  \KDFSSansFace\fontsize{8pt}{10pt}\selectfont
  \thepage\ 한국디지털포렌식학회(학술대회)
}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyhead[L]{%
    \KDFSSansFace\fontsize{8pt}{12pt}\selectfont
    ISSN(Print) : 1976-5304, ISSN(Online) : 2713-931X\\[-1pt]
    \url{https://kdfs.jams.or.kr}, DOI : \@kdfsdoi
  }
  \fancyfoot[L]{%
    \KDFSSansFace\fontsize{8pt}{10pt}\selectfont
    \thepage\ 한국디지털포렌식학회(학술대회)
  }
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0.4pt}
}

% Roman section numbers used by the official template.
\newcommand{\kdfsromansection}{%
  \ifcase\value{section}\or Ⅰ\or Ⅱ\or Ⅲ\or Ⅳ\or Ⅴ\or
  Ⅵ\or Ⅶ\or Ⅷ\or Ⅸ\or Ⅹ\else\Roman{section}\fi
}
\renewcommand{\thesection}{\kdfsromansection.}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}

\titleformat{\section}
  {\KDFSSansFace\fontsize{11pt}{16.5pt}\selectfont}
  {\thesection}{0.75em}{}
\titlespacing*{\section}{0pt}{0pt}{11.3pt}

\titleformat{\subsection}
  {\KDFSSansFace\fontsize{10pt}{15pt}\selectfont}
  {\thesubsection}{0.6em}{}
\titlespacing*{\subsection}{10pt}{0pt}{14.2pt}

\titleformat{\subsubsection}
  {\KDFSSansFace\fontsize{10pt}{15pt}\selectfont}
  {\thesubsubsection}{0.6em}{}
\titlespacing*{\subsubsection}{10pt}{0pt}{14.2pt}

% Title and bilingual abstract block. The current official conference HWP
% contains no visible author/affiliation row, so this class does not invent one.
\renewcommand{\maketitle}{%
  \thispagestyle{plain}%
  \begingroup
    \centering
    \begin{minipage}{167.94mm}
      \centering
      \vbox to 13.98mm{%
        \vfil
        {\KDFSTitleSpacedFace\bfseries\fontsize{17pt}{22.1pt}\selectfont
          \@kdfstitle\par}
        \vfil
      }
      \par\vspace{13.70mm}
      \vbox to 12.36mm{%
        \vfil
        {\KDFSTitleFace\bfseries\fontsize{14pt}{18.2pt}\selectfont
          \@kdfstitleen\par}
        \vfil
      }
      \par\vspace{10.89mm}
      \begin{minipage}{\linewidth}
        \setlength{\parindent}{10pt}
        \KDFSAbstractFace\fontsize{9pt}{13.95pt}\selectfont
        \begin{center}
          {\KDFSTitleFace\bfseries\fontsize{9pt}{13.95pt}\selectfont 요\quad 약}
        \end{center}
        \@kdfsabstract\par
        \vspace{1mm}
        \noindent{\KDFSTitleFace\bfseries\fontsize{9pt}{13.95pt}\selectfont 주제어:}
        \@kdfskeywords\par
      \end{minipage}
      \par\vspace{4mm}
      \begin{minipage}{\linewidth}
        \setlength{\parindent}{10pt}
        \KDFSAbstractFace\fontsize{9pt}{13.95pt}\selectfont
        \begin{center}
          {\KDFSTitleFace\bfseries\fontsize{9pt}{13.95pt}\selectfont ABSTRACT}
        \end{center}
        \@kdfsabstracten\par
        \vspace{1mm}
        \noindent{\KDFSTitleFace\bfseries\fontsize{9pt}{13.95pt}\selectfont Key Words:}
        \@kdfskeywordsen\par
      \end{minipage}
      \par\vspace{3.53mm}
    \end{minipage}
    \par
  \endgroup
}

% Caption forms: <Table 1> ... and Figure 1. ...
\DeclareCaptionFont{kdfsCaption}{\KDFSBodyFace\fontsize{9pt}{13.95pt}\selectfont}
\DeclareCaptionLabelFormat{kdfsTable}{\textless Table~#2\textgreater}
\DeclareCaptionLabelFormat{kdfsFigure}{Figure~#2.}
\captionsetup[table]{
  font=kdfsCaption,
  labelformat=kdfsTable,
  labelsep=space,
  justification=centering,
  singlelinecheck=false,
  position=top,
  skip=3mm
}
\captionsetup[figure]{
  font=kdfsCaption,
  labelformat=kdfsFigure,
  labelsep=space,
  justification=centering,
  singlelinecheck=false,
  position=bottom,
  skip=3mm
}

% Bibliography: centered 11 pt heading, 10 pt entries, IEEE numeric order.
\renewcommand{\refname}{참 고 문 헌}
\renewenvironment{thebibliography}[1]
  {\par\vspace{\baselineskip}
   \begin{center}
     {\KDFSSansFace\bfseries\fontsize{11pt}{17.6pt}\selectfont \refname}
   \end{center}
   \KDFSBodyFace\fontsize{10pt}{15pt}\selectfont
   \list{\@biblabel{\@arabic\c@enumiv}}%
     {\settowidth\labelwidth{\@biblabel{#1}}%
      \leftmargin\labelwidth
      \advance\leftmargin\labelsep
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000
   \sfcode`\.\@m}
  {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}

\makeatother

\endinput
