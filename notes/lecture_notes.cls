\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture_notes}[2025 Custom Class]

\LoadClass[11pt, letterpaper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{tgpagella}
\RequirePackage{mathtools}
\RequirePackage{geometry}
\RequirePackage{microtype}
\RequirePackage{titlesec}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{xcolor}
\definecolor{LightGray}{gray}{0.95}
\RequirePackage{apptools}
\RequirePackage{minted}
\RequirePackage{units}
\RequirePackage[labelfont=bf]{caption}
\RequirePackage{amsthm}
\RequirePackage{bm}
\RequirePackage{subcaption}
\RequirePackage{longfbox}
\RequirePackage{eso-pic}
\RequirePackage{calc}
\RequirePackage{physics}
\RequirePackage{parskip}
\RequirePackage{mdframed}

\RequirePackage[noabbrev,capitalize]{cleveref}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]


\renewcommand\qedsymbol{\blacksquare}

\geometry{margin=1in}

\titleformat{\section}{\normalfont\Large\bfseries}{Section~\thesection: }{1em}{}
\AtAppendix{\titleformat{\section}{\normalfont\Large\bfseries}{Appendix~\thesection: }{1em}{}}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  filecolor=magenta,
  urlcolor=blue,
  citecolor=black
}

\renewcommand{\topfraction}{0.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\floatpagefraction}{0.7}
\floatplacement{figure}{H}

\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{20pt}

%==============================================================================%
% NEW COMMANDS
%==============================================================================%
% ------------ Helper macro: executes #2 only if #1 is not empty  ------------
\newcommand{\IfNotEmpty}[2]{%
  \edef\temp{#1}%
  \ifx\temp\empty
    % do nothing
  \else
    #2%
  \fi
}
% ------------ Text Box position ------------
\newcommand{\placetextbox}[7]{
  \setbox0=\hbox{#7}
  \AddToShipoutPictureFG*{
    \put(\LenToUnit{#1\paperwidth},\LenToUnit{#2\paperheight}){\vtop{{\null}
        \begin{longfbox}[width={#3\paperwidth}, height={#4\paperheight},#6]
        \begin{#5}#7\end{#5}
        \end{longfbox}
      }}
  }
}

\onehalfspacing

% ------------ Subtitle ------------
\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
\newcommand\@subtitle{}
% ------------ Author List ------------
\newcommand\professor[1]{\renewcommand\@professor{#1}}
\newcommand\@professor{}
\newcommand\gradstudentcontribs[1]{\renewcommand\@gradstudentcontribs{#1}}
\newcommand\@gradstudentcontribs{}
\newcommand\undergradstudentcontribs[1]{\renewcommand\@undergradstudentcontribs{#1}}
\newcommand\@undergradstudentcontribs{}
% ------------ Additional Info ------------
\newcommand\professortitle[1]{\renewcommand\@professortitle{#1}}
\newcommand\@professortitle{}
%==============================================================================%
% TITLE PAGE
%==============================================================================%
\newcommand\@titlepage{
  % Roman page numbers starting here.
  \pagenumbering{roman}
  \setcounter{page}{0}

  % Title.
  \placetextbox{0.12}{0.87}{0.70}{0.25}{flushleft}{height-align=bottom,border-style=none}{
    \color{black}
    \fontfamily{qpl}\fontsize{18}{20}\selectfont\bfseries{{\selectfont\@title}}\\ \rule{23em}{1pt}
  }

  % Subtitle.
  \placetextbox{0.12}{0.62}{0.70}{0.25}{flushleft}{height-align=top,border-style=none}{
    \color{black}
    \fontfamily{qpl}\fontsize{14}{14}\selectfont\textit{\@subtitle, \@date}
  }

  % Authors
  \placetextbox{0.12}{0.5}{0.75}{0.25}{flushleft}{height-align=top,border-style=none}{%
    \color{black}%
    \fontfamily{qpl}\fontsize{11}{15}\selectfont%
    Lecture notes by \par
    \@professor \par
    \@professortitle \par
    \vspace{24pt}%
    Compiled and typeset with the help of:\\
    \vspace{12pt}
    \IfNotEmpty{\@gradstudentcontribs}{\@gradstudentcontribs \par Graduate Students \par \vspace{18pt}}%
    \IfNotEmpty{\@undergradstudentcontribs}{\@undergradstudentcontribs \par Undergraduate Students \par \vspace{18pt}}%

  }%


  \clearpage
}

%==============================================================================%
% BLANK PAGE
%==============================================================================%
\newcommand\blankpage{
  \clearpage
  \hbox{\space}
  \vspace{1.75in}
  \clearpage
}

%==============================================================================%
% FOREWORD PAGE
%==============================================================================%
\newenvironment{foreword}{%
  \clearpage
  \pagestyle{fancy}% <-- add this
  \fancyhf{}
  \fancyfoot[C]{\thepage}%
  \section*{Foreword}%
  \addcontentsline{toc}{section}{Foreword}%
}{%
  \clearpage
}

%==============================================================================%
% FRONT MATTER
%==============================================================================%
\newcommand\frontmatter{
  \@titlepage
  \blankpage
  % \blankpage
}
\makeatother



\endinput
