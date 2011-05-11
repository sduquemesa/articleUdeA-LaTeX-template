\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{articleUdeA}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{revtex4}}
\ProcessOptions\relax
\LoadClass[amssymb,amsmath,letter]{revtex4}

\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tabulary}
\RequirePackage{ifthen}

\newcommand{\titleEsEn}[2]
{
  \title{#1\\
  {\small #2}}
}

\newcommand{\mtitle}{
    
      \begin{minipage}[center]{1.2\textwidth}
        
        \vspace{1cm}
        \begin{tabular}{m{0.1\textwidth}m{0.7\textwidth}}
          \includegraphics[width=0.1\textwidth]{logo_UdeA} & \centerline{\textit{Instituto de Física, Universidad de Antioquia.}}
        \end{tabular}

      \end{minipage}

      \vspace{0.8cm}
      \maketitle

}%


\newenvironment{resumen}[2]
{
  \vspace{0.5cm}
  \begin{abstract}
    \begin{center}
      \rule[1ex]{.7\textwidth}{.3pt}
    \end{center}
    \begin{center}\textbf{Resumen}\end{center}
    #1
    \ifthenelse{\equal{#2}{}}{}{
      \vspace{0.35cm}
      \begin{center}\textbf{Abstract}\end{center}
      #2
    }
  }
  {
    \begin{center}
      \rule[1ex]{.7\textwidth}{.3pt}
    \end{center}
  \end{abstract}
}
