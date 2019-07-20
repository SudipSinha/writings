%!TEX root = resume.tex

%%%%%%%%%%%%%%%%%
% This is altacv.cls (v1.1.3, 30 April 2017) written by
% LianTze Lim (liantze@gmail.com).
% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{resume}%[2017/04/30 AltaCV v1.1.3, yet another alternative class for a résumé/curriculum vitae.]

%% v1.1.3: Choice of round/square photo
\newif\if@normalphoto
\DeclareOption{normalphoto}{\@normalphototrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax

\LoadClass{extarticle}

\RequirePackage[margin=1cm]{geometry}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
% \RequirePackage{unicode-math}
\RequirePackage{academicons}
\RequirePackage{ragged2e}    % Required to left align

\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[
	pdfusetitle,		% Use PDF title
	pdfauthor={Sudip Sinha},		% Sets the document information Author field
	pdfsubject={résumé},		% Sets the document information Subject field
	pdfkeywords={résumé, cv, curriculum vitae},		 % Sets the document information Keywords field
	pdfstartview=FitBH,		 % Fits the width of the page bounding box to the window - replace by FitH.
	% pdfpagelayout=OneColumn,		% Displays the document in one column; continuous scrolling.
	unicode=true,
	hidelinks,
	% bookmarks=true,
	% colorlinks=true,
	% backref=section,		% Adds ‘backlink’ text to the end of each item in the bibliography, as a list of section numbers. Incompatible with biblatex.
	% linktocpage=true,			 % ToC, LoF, LoT place hyperlink on page number, rather than entry text
	% breaklinks=true,				% so long urls are correctly broken across lines
	% pagebackref=false,		 % add page number in bibliography and link to position in document where cited, incompatible with biblatex
	% linkcolor=red,
	%urlcolor=IndianRed,
	%citecolor=Sienna,
	% hyperfootnotes=false
]{hyperref}

% Change the bullets for itemize and rating marker
% for \cvskill if you want to
\newcommand{\itemmarker}{\textbullet}    % Was: \newcommand{\itemmarker}{{\small\textbullet}}
\newcommand{\ratingmarker}{\faCircle}

% Change the colours if you want to
\definecolor{Mulberry}{HTML}{72243D}
\definecolor{SlateGrey}{HTML}{2E2E2E}
\definecolor{LightGrey}{HTML}{666666}
\colorlet{heading}{Sepia}
\colorlet{accent}{Mulberry}
\colorlet{emphasis}{SlateGrey}
\colorlet{body}{LightGrey}


\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}
% \RequirePackage{marginfix}

\RequirePackage[backend=biber,style=authoryear,sorting=ydnt]{biblatex}
%% For removing numbering entirely when using a numeric style
% \setlength{\bibhang}{1em}
% \DeclareFieldFormat{labelnumberwidth}{\makebox[\bibhang][l]{\itemmarker}}
% \setlength{\biblabelsep}{0pt}
\defbibheading{pubtype}{\cvsubsection{#1}}
\renewcommand{\bibsetup}{\vspace*{-\baselineskip}}
\AtEveryBibitem{\makebox[\bibhang][l]{\itemmarker}}
\setlength{\bibitemsep}{0.25\baselineskip}
%% resume.bib contains your publications
\addbibresource{resume.bib}

% v1.1.2: make it easier to add a sidebar aligned with top of next page
\RequirePackage{afterpage}
\newcommand{\addsidebar}[2][]{\marginpar{%
	\ifstrequal{#1}{}{}{\vspace*{#1}}%
	\input{#2}}%
}
\newcommand{\addnextpagesidebar}[2][]{\afterpage{\addsidebar[#1]{#2}}}

\pagestyle{empty}
% \setmainfont{Lato}
\setmainfont{Roboto}
\color{body}
% \raggedright
% \AtBeginDocument{%

% }

\setlength{\parindent}{0pt}

\newcommand{\divider}{\textcolor{body!30}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\medskip}

% ******

\newenvironment{fullwidth}{%
	\begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
	{\end{adjustwidth}}

\newcommand{\emailsymbol}{\faEnvelope}    % Was: \faAt
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faHome}    % Was: \faChain
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelopeO}
\newcommand{\facebooksymbol}{\faFacebook}
\newcommand{\twittersymbol}{\faTwitter}

\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{#1}\hspace{0.5em}#2\hspace{2em}}}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\facebook}[1]{\printinfo{\facebooksymbol}{#1}}

\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\makecvheader}{%
	\begingroup
		\ifdef{\@photodiameter}{\begin{minipage}{\dimexpr\linewidth-\@photodiameter-2em}}{}%
		\raggedright\color{emphasis}%
		{\Huge\bfseries{\@name}\par}    % Was: \MakeUppercase{\@name}\par}
		\medskip
		{\large\bfseries\color{accent}\@tagline\par}
		\medskip
		{\footnotesize\bfseries\@personalinfo\par}
		\ifdef{\@photodiameter}{%
		\end{minipage}\hfill%
		\begin{minipage}{\@photodiameter}
		\if@normalphoto
			\includegraphics[width=\linewidth]{\@photo}
		\else
			\tikz\path[fill overzoom image={\@photo}]circle[radius=0.5\linewidth];
		\fi%
		\end{minipage}\par}{}%
	\endgroup\medskip
}

\renewenvironment{quote}{\color{accent}\itshape\large}{\par}

\newcommand{\cvsection}[1]{%
	\bigskip%
	% \ifstrequal{#1}{}{}{\marginpar{\vspace*{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}% 
	{\color{heading}\LARGE\bfseries{#1}}\\[-1ex]%    % Was: \MakeUppercase{#2}}\\[-1ex]%
	{\color{heading}\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\cvsubsection}[1]{%
	% \smallskip%
	{\color{emphasis}\large\bfseries{#1}}\hspace{0.5em}%\medskip
}


%%  #1: designation
%%  #2: institution
%%  #3: duration
%%  #4: location
%%  #5: % (optional)
\newcommand{\cvevent}[5]{%
	{\large\color{emphasis}#1}  \hfill  {\faUniversity\hspace{0.5em}\bfseries\color{accent}#2} \par
	\smallskip
	\ifstrequal{#5}{}{{\faCalendar \hspace{0.5em}#3}  \hfill  {\faMapMarker \hspace{0.5em}#4} \par}{{\faCalendar \hspace{0.5em}#3}  \hfill  {\faMapMarker \hspace{0.5em}#4}  \hfill  {\faPercent \hspace{0.5em}#5} \par}    % Does not work: {㎬x} \hspace{0.5em}#5} \par}
	\medskip
}

%%  #1: icon
%%  #2: heading
%%  #3: detail
\newcommand{\cvachievement}[3]{%
	\begin{tabularx}{\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
	\multirow{2}{*}{\Large\color{accent}#1} & \bfseries\textcolor{emphasis}{#2}\\
	& #3
	\end{tabularx}%
	\smallskip
}

%% Tag skill
\newcommand{\cvtag}[1]{%
	\tikz[baseline]\node[anchor=base,draw=body!30,rounded corners,inner xsep=0.75ex,inner ysep=0.5ex,text height=1.33ex,text depth=.25ex]{#1};
}

%% Tag skill with level
%%  #1: skill
%%  #2: level (out of 5)
\newcommand{\cvskill}[2]{%
\textcolor{emphasis}{\textbf{#1}}\hfill
\foreach \x in {1,...,5}{%
	\space{\ifnumgreater{\x}{#2}{\color{body!30}}{\color{accent}}\faCircle}}\par%
}

\newcommand{\cvref}[3]{%
	\smallskip
	\textcolor{emphasis}{\textbf{#1}}\par
	\begin{description}[font=\color{accent},style=multiline,leftmargin=1.25em]
	\item[\emailsymbol] #2
	\item[\small\mailsymbol] #3
	\end{description}
%   \medskip
}

%% Adapted from @Jake's answer at http://tex.stackexchange.com/a/82729/226
%%  #1: value
%%  #2: color
%%  #3: label
\newcommand{\wheelchart}[3]{%
	\begingroup\raggedleft
	\def\innerradius{#2}%
	\def\outerradius{#1}%
	% Calculate total
	\pgfmathsetmacro{\totalnum}{0}%
	\foreach \value/\colour/\name in {#3} {%
			\pgfmathparse{\value+\totalnum}%
			\global\let\totalnum=\pgfmathresult%
	}%
	\begin{tikzpicture}

		% Calculate the thickness and the middle line of the wheel
		\pgfmathsetmacro{\wheelwidth}{\outerradius-\innerradius}
		\pgfmathsetmacro{\midradius}{(\outerradius+\innerradius)/2}

		% Rotate so we start from the top
		\begin{scope}[rotate=-90]

		% Loop through each value set. \cumnum keeps track of where we are in the wheel
		\pgfmathsetmacro{\cumnum}{0}
		\foreach \value/\width/\colour/\name in {#3} {
			\pgfmathsetmacro{\newcumnum}{\cumnum + \value/\totalnum*360}

			% Calculate the percent value
			\pgfmathsetmacro{\percentage}{\value/\totalnum*100}
			% Calculate the mid angle of the colour segments to place the labels
			\pgfmathsetmacro{\midangle}{-(\cumnum+\newcumnum)/2}

			% This is necessary for the labels to align nicely
			\pgfmathparse{
				 (-\midangle>180?"west":"east")
			} \edef\textanchor{\pgfmathresult}
			\pgfmathparse{
				 (-\midangle>180?"flush left":"flush right")
			} \edef\textalign{\pgfmathresult}
			\pgfmathsetmacro\labelshiftdir{1-2*(-\midangle<180)}

			% Draw the color segments. Somehow, the \midrow units got lost, so we add 'pt' at the end. Not nice...
			\filldraw[draw=white,fill=\colour] (-\cumnum:\outerradius) arc (-\cumnum:-(\newcumnum):\outerradius) --
			(-\newcumnum:\innerradius) arc (-\newcumnum:-(\cumnum):\innerradius) -- cycle;

			% Draw the data labels
			\draw  [*-,thin,emphasis] node [append after command={(\midangle:\midradius pt) -- (\midangle:\outerradius + 1ex) -- (\tikzlastnode)}] at (\midangle:\outerradius + 1ex) [xshift=\labelshiftdir*0.5cm,inner sep=1ex, outer sep=0pt, text width=\width,anchor=\textanchor,align=\textalign,font=\small,text=body]{\name};
			% Set the old cumulated angle to the new value
			\global\let\cumnum=\newcumnum
		}
		\end{scope}
%      \draw[gray] (0,0) circle (\outerradius) circle (\innerradius);
	\end{tikzpicture}\par
	\endgroup
}
