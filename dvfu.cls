\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dvfu}[2012/05/24 DVFU diploms document class]
\LoadClass[14pt,a4paper]{extarticle}
\RequirePackage{fancyhdr}
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{indentfirst}
\RequirePackage[unicode,
  bookmarksnumbered,
  pdfstartview=FitH,
  pdfpagelayout=OneColumn,
  colorlinks=true,
  linkcolor=blue,
  plainpages=false
]{hyperref}
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.png}
\graphicspath{{./images/}}
\RequirePackage{scalefnt}
\RequirePackage{geometry}

\geometry{left=30mm,top=20mm,bottom=25mm,right=15mm}
\parindent=1cm

\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[R]{\thepage} % except the right
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}
\pagestyle{plain}

\RequirePackage{setspace}
\onehalfspacing

\renewcommand\thesection{\thechapter\@arabic\c@section.}
\renewcommand\thesubsection{\thesection\@arabic\c@subsection.} 
\renewcommand\thesubsubsection{\thesubsection\@arabic\c@subsubsection.} 

\DeclareOption*{% pass all extra options to report class (for instance - draft)
    \PassOptionsToClass{\CurrentOption}{article}%
}
\def\groupname#1{\gdef\@groupname{#1}}
\def\mentorname#1{\gdef\@mentorname{#1}}
\def\mentorinfo#1{\gdef\@mentorinfo{#1}}
\def\year#1{\gdef\@year{#1}}

\newcommand{\sectionline}{
  \nointerlineskip \vspace{0.25\baselineskip}
  \hspace{\fill}\rule{\linewidth}{2pt}\hspace{\fill}
  \par\nointerlineskip \vspace{\baselineskip}
}

\newcommand{\superunder}[2]{
    {\tiny\lower\baselineskip\vbox{\halign{##\cr\normalsize #1 \tiny\cr #2 \cr}}}
}

\renewcommand\maketitle{
    \begin{titlepage}
        \begin{singlespacing}
        \begin{center}
            {\bfseries\small Министерство образования и науки Российской Федерации\\
            \vspace{\baselineskip}
            Федеральное государственное автономное образовательное учреждение 
            высшего профессионального образования\\
            ДАЛЬНЕВОСТОЧНЫЙ  ФЕДЕРАЛЬНЫЙ  УНИВЕРСИТЕТ\\
            \sectionline}

            {\bfseries\small Школа естественных наук\\
            Кафедра информатики, математического и компьютерного моделирования\\}
            \vspace*{4\baselineskip}
            {\large\bfseries \@author\\}
            \vspace{\baselineskip}
            {\Large\bfseries \@title\\}
            \vspace{2\baselineskip}
            ДИПЛОМНАЯ РАБОТА\\
            {\small\bfseries по основной образовательной программе подготовки специалистов по
            специальности 001122.33 -- прикладная математика}
        \end{center}
        \vspace{3\baselineskip}
        \begin{tabular}{ll}
            &
            \small
            Студент ОЗО \superunder{\hrulefill}{\hspace{1cm}(подпись)\hspace{1cm}} \\
            &
            \small
            Руководитель ВКР -- \superunder{\smallст. преп.}{\hfill(должность)}\hspace{0.5cm}\\
            &
            \small
            \superunder{\hrulefill}{\hspace{1cm}(подпись)\hspace{1cm}}\hfill\superunder{\small\@mentorname}{\hspace{0.5cm}(и.о.ф)}\\
            &
            <<\rule{1cm}{0.5pt}>>\rule{2.5cm}{0.5pt}\quad 2012г.\\
            &\\
            \small
            Защищена в ГАК с оценкой \rule{3cm}{0.5pt} 
                & \small <<Допустить к защите>>\\
            \small
            Секретарь ГАК 
                & \small Заведующий кафедрой -- \superunder{\smallд.ф.-м.н., проф.}{\hfill(ученое звание, должность)}\\
            \small
            \superunder{\hrulefill}{\hspace{1cm}(подпись)\hspace{1cm}} \superunder{\hrulefill}{\hspace{1cm}(и.о.фамилия)\hspace{2.15cm}}    & \small
                \superunder{\hrulefill}{\hspace{1cm}(подпись)\hspace{1cm}} \hfill \superunder{\smallМ.А.~Гузев}{\hspace{0.5cm}(и.о.ф.)}\\
            \small
            <<\rule{1cm}{0.5pt}>>\rule{3cm}{0.5pt}\quad 2012 г. 
                & \small <<\rule{1cm}{0.5pt}>>\rule{2.5cm}{0.5pt}\quad 2012 г.
        \end{tabular}
        \vfill
        \centerline{\footnotesize г. Владивосток}
        \centerline{\footnotesize \@year}
        \end{singlespacing}
    \end{titlepage}
    \addtocounter{page}{1}
    \global\let\@author\@empty
    \global\let\@title\@empty
    \global\let\@groupname\@empty
    \global\let\@mentorinfo\@empty
    \global\let\@mentorname\@empty
    \global\let\@year\@empty
    \global\let\author\relax
    \global\let\title\relax
    \global\let\groupname\relax
    \global\let\mentorinfo\relax
    \global\let\mentorname\relax
    \global\let\year\relax
}
\ProcessOptions\relax
