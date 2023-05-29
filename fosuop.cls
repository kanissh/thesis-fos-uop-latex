\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fosuop}[2023/05/01 Thesis template for Faculty of Science UoP]

\LoadClass[12pt]{report}
\RequirePackage[
    a4paper,
    left=40mm,
    top=25mm,
    right=15mm,
    bottom=25mm,
]{geometry} % Sets margins and page size
\RequirePackage{graphicx, xcolor}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{inputenc}
\RequirePackage{subcaption}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{hyperref}
\RequirePackage[english]{babel}
\RequirePackage{csquotes}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amsfonts} 
\RequirePackage[backend=biber,style=ieee]{biblatex}
\RequirePackage{lscape}
\RequirePackage{afterpage}
\RequirePackage{todonotes}
\RequirePackage{listings}
\RequirePackage[nogroupskip , toc, nonumberlist, nopostdot, acronyms, automake]{glossaries}
\RequirePackage[toc]{appendix}
\RequirePackage[titles]{tocloft}

% remove the space inserted between table and figure caption entries between chapters (not the best solution. Should avoid editing addvspace)

\renewcommand{\listoffigures}{
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
    \chapter*{\listfigurename}
    \@mkboth{\MakeUppercase\listfigurename}
    {\MakeUppercase\listfigurename}
    \begingroup
        \renewcommand\addvspace[1]{}
        \@starttoc{lof}
    \endgroup
    \if@restonecol\twocolumn\fi
}

\renewcommand{\listoftables}{
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
    \chapter*{\listtablename}
    \@mkboth{\MakeUppercase\listtablename}
    {\MakeUppercase\listtablename}
    \begingroup
        \renewcommand\addvspace[1]{}
        \@starttoc{lot}
    \endgroup
    \if@restonecol\twocolumn\fi
}

% \let\originallistoffigures\listoffigures 
% \renewcommand{\listoffigures}{{\def\addvspace##1{}\originallistoffigures}}
% 
% \let\originallistoftables\listoftables 
% \renewcommand{\listoftables}{{\def\addvspace##1{}\originallistoftables}}

% table of contents customization
\setlength{\cftbeforechapskip}{0em}
\renewcommand{\cftdotsep}{\cftnodots}
\newlength{\chaptocspace} 
\renewcommand{\cftchappresnum}{\MakeUppercase\chaptername\ }
\renewcommand{\cftchapaftersnum}{:\ }
\addtolength{\cftchapnumwidth}{-1em}
\settowidth{\chaptocspace}{\cftchappresnum\cftchapaftersnum} 
\addtolength{\cftchapnumwidth}{\chaptocspace} 
\addtolength{\cftsecnumwidth}{-0.5em}

% list of figures customization
\newlength{\figurelofspace} 
\renewcommand{\cftfigpresnum}{\bfseries\figurename\ }
\renewcommand{\cftfigaftersnum}{\bfseries:\ }
\addtolength{\cftfignumwidth}{-1em}
\settowidth{\figurelofspace}{\cftfigpresnum\cftfigaftersnum} 
\addtolength{\cftfignumwidth}{\figurelofspace} 
\addtolength{\cftfignumwidth}{-0.5em}

% list of table customization
\newlength{\tablelotspace} 
\renewcommand{\cfttabpresnum}{\bfseries\tablename\ }
\renewcommand{\cfttabaftersnum}{\bfseries:\ }
\addtolength{\cfttabnumwidth}{-1em}
\settowidth{\tablelotspace}{\cfttabpresnum\cfttabaftersnum} 
\addtolength{\cfttabnumwidth}{\tablelotspace} 
\addtolength{\cfttabnumwidth}{-0.5em}

%custom list of abbreviation style
\newglossarystyle{listofabbstyle}{
    \setglossarystyle{long}
    \setlength\LTleft{0pt}
    \setlength\LTright{0pt}
    \setlength\glsdescwidth{0.8\hsize}
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\bfseries \glossentryname{##1}} &
    \glossentrydesc{##1}\glspostdescription\space ##2\tabularnewline
  }
}

% Font
% only works with LuaLaTex or XeLaTex, if pdfLaTex is used comment it out 
\RequirePackage{fontspec}
\setmainfont[Path=fonts/,
    BoldItalicFont=timesbi.ttf,
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf
]{times.ttf}

% Chapter title styles
\makeatletter
\def\ttl@mkchap@i#1#2#3#4#5#6#7{%
    \ttl@assign\@tempskipa#3\relax\beforetitleunit
    \vspace{\@tempskipa}%<<<<<< REMOVE THE * AFTER \vspace
    \global\@afterindenttrue
    \ifcase#5 \global\@afterindentfalse\fi
    \ttl@assign\@tempskipb#4\relax\aftertitleunit
    \ttl@topmode{\@tempskipb}{%
        \ttl@select{#6}{#1}{#2}{#7}}%
    \ttl@finmarks  % Outside the box!
    \@ifundefined{ttlp@#6}{}{\ttlp@write{#6}}}
\makeatother

\titleformat{\chapter}[display]
  {\centering\normalfont\fontsize{14pt}{0pt}\selectfont\bfseries\setstretch{1}}
  {\MakeUppercase\chaptertitlename\ \thechapter}
  {1em}
  {\MakeUppercase}
\titlespacing{\chapter}{0pt}{0pt}{2em}

% Section title styles
\titleformat{\section}
  {\fontsize{12pt}{0pt}\selectfont\bfseries\setstretch{1}}{\thesection}{0.5em}{}
\titlespacing{\section}{0pt}{0pt}{0pt}

\titleformat{\subsection}
  {\fontsize{12pt}{0pt}\selectfont\bfseries\setstretch{1}}{\thesection}{0.5em}{}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

\titleformat{\subsubsection}
  {\fontsize{12pt}{0pt}\selectfont\bfseries\setstretch{1}}{\thesection}{0.5em}{}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

% Paragraph styles
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Lists
\RequirePackage{enumitem}
\setlist{itemsep=0pt,topsep=0pt,parsep=0pt,partopsep=0pt}

% Tables
\RequirePackage{etoolbox}
\AtBeginEnvironment{tabular}{\fontsize{11pt}{13.2pt}\selectfont}

% Math
\newtheorem{definition}{Definition}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Parameter:}}

% Caption format
\DeclareCaptionFormat{fosuopcaption}
{
    \textbf{#1#2}#3
}
\captionsetup{format=fosuopcaption, font={footnotesize,singlespacing}, width=0.8\textwidth, justification=centering}

