\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{minotes}[2019/02/09 0.1]

% packages and classes, scrartcle is an extended article 
\LoadClass[a4paper]{scrartcl}
\RequirePackage{scrlayer-scrpage, times, amsmath, amssymb, bm}
\RequirePackage{etoolbox, comment} % not ifthen, xstring, 
\RequirePackage[latin9]{inputenc}
\RequirePackage[T1]{fontenc}
\usepackage[overlay,absolute]{textpos}
\RequirePackage{enumerate}
\RequirePackage{graphics,graphicx}
\usepackage{paracol}
\usepackage{algorithm2e}
\usepackage[mathscr]{euscript}
\usepackage{beamerarticle}
\usepackage{mathtools}
\usepackage{tikz}
\usepackage{caption}
\usepackage{subcaption}
\newsavebox{\imagebox}
\usepackage{paralist}
\usepackage{xcolor,cancel}


\setlength{\oddsidemargin}{0.25 in}
\setlength{\evensidemargin}{-0.25 in}
\setlength{\topmargin}{-0.9 in}
\setlength{\textwidth}{6 in}
\setlength{\textheight}{10.1 in}
\setlength{\headsep}{0.35 in}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}

% Update the following presets
% presets - BEGIN
\newcommand{\coursetitle}{Machine Intelligence 2}
\newcommand{\authorname}{Kashef}
% presets - END

% Custom referencing - BEGIN
% Use custom text for sections, figures and equations
\let\oldeqref\eqref
\renewcommand{\eqref}[1]{Eq. \hspace{-1.0mm}\oldeqref{#1}}

\newcommand{\figref}[1]{Fig. \hspace{-0.5mm}\ref{#1}}
\newcommand{\figureref}[1]{Figure \hspace{-0.5mm}\ref{#1}}

\newcommand{\sectionref}[1]{Section \hspace{-1.0mm}\ref{#1}}
% Custom referencing - END

% The sheet number has to be set before \maketitle
% access it via \thesheetno throughout the document
\newcounter{sheetno}
\newcommand{\sheet}[2]{%
	% The real sheet
	\setcounter{sheetno}{#1}%
	\thispagestyle{plain}%
	\textbf{\large \coursetitle \hfill Tutorial Notes #1} \\%
	\authorname \hfill #2\\%
	\rule{\textwidth}{1pt}%
	\vspace{0.5cm}
}

% first page
\deftriplepagestyle{plain}[0pt]
  {}{}{}
  {}{}{\pagemark\hspace{-1.5cm}}

% other pages  
\deftriplepagestyle{miheadings}[0pt]
  {\coursetitle}{}{Notes \thesheetno}
  {}{}{\pagemark\hspace{-1.5cm}}

\pagestyle{miheadings}

%\setcounter{section}{-1}

% Questions - BEGIN
% a \section like command for questions
\newcounter{question}[section]
\newcommand{\question}[2]{%
	\addtocounter{question}{1}% otherwise counter starts at zero
	\vspace{4mm}%
	{Q\thesheetno.\thesection.\arabic{question}: ~ \textit{#1}%
	}\\
	\vspace{5mm}%
}
% Questions - END

% -----------------------------------------------------------------------------

% Hints - BEGIN
% making hints
\newcommand{\hint}[1]{%
  \begin{description} \item[Hint:] #1 \end{description} 
}
% Hints - END

% Include in slides but exclude from notes
% see corresponding \notesonly for what to include in notes but not in slides mode
\newcommand{\slidesonly}[1]{}

