\LoadClass[a4paper]{article}

\usepackage{xpatch}
\usepackage[no-math]{fontspec}

\ExplSyntaxOn
\xpatchcmd \fontspec_new_script:nn
  { \__fontspec_warning:nxx }
  { \__fontspec_info:nxx }
  {}{\fail}
\newfontscript{CJK}{none}
\ExplSyntaxOff

%\usepackage[english]{babel}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage[dvipsnames, svgnames, x11names]{xcolor}
\usepackage[fontset=fandol]{ctex}
\usepackage{physics}
\usepackage[per-mode = symbol]{siunitx}
\usepackage{tikz}
\usepackage[warnings-off={mathtools-colon,mathtools-overbracket}, math-style=ISO, mathrm=sym]{unicode-math}
\usepackage{mathtools}
\usepackage{geometry}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{color}
\usepackage[dvipsnames, svgnames, x11names]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{verbatim}
\usepackage{enumitem}

\geometry{a4paper, left = 3.17cm, right = 3.17cm, top = 2.54cm, bottom = 2.54cm}
\setmainfont{STIX Two Text}
\setsansfont{Source Sans Pro}
\setmathfont{STIXTwoMath-Regular.otf}

\fancyhead[R]{新世代计算机科学计划}
\pagestyle{fancy}
\setlength{\headheight}{14pt}

\makeatletter
\let\original@CJKsymbol\CJKsymbol
\let\original@CJKpunctsymbol\CJKpunctsymbol
\edef\CJKmovesymbol#1{\raise.05em\hbox{\original@CJKsymbol{#1}}}
\edef\CJKmovepunctsymbol#1{\raise.05em\hbox{\original@CJKpunctsymbol{#1}}}
\def\CJKraisebaseline{
    \let\CJKsymbol\CJKmovesymbol
}
\def\CJKresetbaseline{
    \let\CJKsymbol\original@CJKsymbol
}
\makeatother

\CJKraisebaseline

\linespread{1.2}

\renewcommand\rmdefault{\sfdefault}
\renewcommand\CJKrmdefault{\CJKsfdefault}