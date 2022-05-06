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
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}
\RequirePackage[fontset=none]{ctex}
\RequirePackage[per-mode = symbol]{siunitx}
\RequirePackage[ISO]{diffcoeff}
\RequirePackage{tikz}
\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}, math-style=ISO, mathrm=sym]{unicode-math}
\RequirePackage{mathtools}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{color}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{verbatim}
\RequirePackage{enumitem}

\setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01}
\setCJKsansfont[BoldFont={FZHei-B01}]{FZKai-Z03}
\setCJKmonofont[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\setCJKfamilyfont{zhsong}{FZShuSong-Z01}
\setCJKfamilyfont{zhhei}{FZHei-B01}
\setCJKfamilyfont{zhkai}[BoldFont={FZHei-B01}]{FZKai-Z03}
\setCJKfamilyfont{zhfs}[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\newcommand*{\songti}{\CJKfamily{zhsong}}
\newcommand*{\heiti}{\CJKfamily{zhhei}}
\newcommand*{\kaishu}{\CJKfamily{zhkai}}
\newcommand*{\fangsong}{\CJKfamily{zhfs}}

\geometry{a4paper, left = 3.17cm, right = 3.17cm, top = 2.54cm, bottom = 2.54cm}
\setmainfont{texgyretermes}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 1.0]
  \setsansfont{texgyreheros}[
    UprightFont = *-regular ,
    BoldFont = *-bold ,
    ItalicFont = *-italic ,
    BoldItalicFont = *-bolditalic ,
    Extension = .otf ,
    Scale = 0.9]
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
