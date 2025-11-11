\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{szu2024}
[2024/04/01 v1 Thesis Template for SZU Postgraduate]
\LoadClass[cs4size,12pt,a4paper,fntef,UTF8]{ctexart}[2024/4/1]
% 源代码地址： https://github.com/Ftine/SZU_Latex_Master_Template 

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,times,fancyhdr}
\RequirePackage{epigraph, titlesec, textcomp, ctex}
\RequirePackage{hyperref,caption,titletoc}

\DeclareCaptionFont{wuhao}{\zihao{5}}
%\DeclareCaptionFont{bfseries}{\bfseries}
\newcommand{\xiaowu}{\zihao{-5}}
\newcommand{\xiaochu}{\fontsize{0}{0}\selectfont}

\CTEXdigits{\mynumber}{2024}


% % 设置表格标题格式
%\captionsetup[table]{labelfont=bfseries, font=bf}
% 设置图形标题格式
% 设置表格标题格式 加粗 字体大小
\captionsetup{font={bf, wuhao}}

\renewcommand{\thefigure}{\arabic{figure}}	%图表的计数方式
\renewcommand{\thetable}{\arabic{table}}   %图表的计数方式


\renewcommand{\contentsname}{\heiti\zihao{3}{\textbf{目~录}\vspace{1\baselineskip}}}

\renewcommand\refname{\heiti\zihao{-3}{\textbf{参~考~文~献}}}



%上标方式
\makeatletter
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
\makeatother


\newcommand{\titleCN}[1][~]{#1}
\newcommand{\titleEN}[1][~]{#1}
\newcommand{\newContects}{section}


%全局英文字体
\setmainfont{Times New Roman}
%全文字体
\setCJKmainfont{simsun.ttc} 
%设置页眉的横线
\renewcommand{\headrule}{%
    \hrule width\headwidth height1.5pt % 粗直线
    \vspace{1pt} % 1pt的空白间隔
    \hrule width\headwidth height0.75pt % 细直线
}



%设置目录树显示深度
\setcounter{tocdepth}{3}



% 自定义小节标题编号的样式
%\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}} % 编号字体设置为黑体




%图标目录设置 没使用
\titlecontents{figure}[0em]{\zihao{4}}{图~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}

\titlecontents{table}[0em]{\zihao{4}}{表~\thecontentslabel\hspace{1em}}{}{\titlerule*{$\cdot$}\contentspage}

%目录样式
\let\savedtableofcontents\tableofcontents

%//相关设置
\renewcommand{\tableofcontents}{%
	\pagestyle{plain}
	\savedtableofcontents
	\newpage
	\pagenumbering{arabic}
	\pagestyle{fancy} % 页眉横线样式
	\fancyhead{}
 
    \fancyhead[C]{\songti\zihao{5}{\titleCN}}
% 全局页眉 设置为章节标题
\fancyhead[C]{\songti\zihao{5}\nouppercase\leftmark}
%全局页号设置
\fancyfoot[C]{\songti\zihao{5}{\thepage}}
\setcounter{page}{1}
}

%参考文献样式

\let\savedbibliographystyle\bibliographystyle
\renewcommand{\bibliographystyle}[1]{
	\newpage
        %中文字体
        \phantomsection % 添加超链接的目标位置
	\hypertarget{references}{}     % 设置超链接的目标位置
        \setstretch{1.25}
        \addcontentsline{toc}{\newContects}{\songti\textbf{参考文献}} % \zihao{-4}
        \songti\zihao{5}
        \savedbibliographystyle{#1}
}


%中文摘要
\newenvironment{abstractCN}{
	\newpage
    \pagenumbering{Roman}
	\thispagestyle{fancy}
	\fancyhead[C]{\songti\zihao{5}{\titleCN}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
        % 让加入的目录带超链接	
        \phantomsection % 添加超链接的目标位置
	\hypertarget{abstractCN}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{\songti\textbf{摘~要}} % 在目录中显示摘要
	\vspace{1\baselineskip}
	\begin{center}
        % {\heiti\zihao{3}
		\heiti\zihao{3}{\textbf{~\\}}
		\heiti\zihao{3}{\textbf{摘~~要}}
	\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{-4}
}{}

%中文关键词
\newenvironment{keywordCN}{
        \fancyhead[C]{\songti\zihao{5}{\titleCN}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
        \vspace{2\baselineskip}	%空两行
	\songti\zihao{-4}
        \thispagestyle{fancy}
	\noindent{{\heiti\zihao{-4}\textbf{关键词：}}}
 }
{\newpage}

%英文摘要
\newenvironment{abstractEN}{
	\newpage
	\thispagestyle{fancy}
	\fancyhead[C]{\songti\zihao{5}{\titleEN}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
 
    \phantomsection % 添加超链接的目标位置
	\hypertarget{abstractEN}{} % 设置超链接的目标位置
	%\addcontentsline{toc}{\newContects}{\textbf{ABSTRACT}} %\zihao{-4}% 在目录中显示摘要
	\addcontentsline{toc}{\newContects}{\textbf{\textrm{ABSTRACT}}} %
	\vspace{1\baselineskip}	
	\begin{center}
		\songti\zihao{3}{\textbf{~\\}}
		\setmainfont{Arial}{\zihao{3}{\textbf{ABSTRACT}} }	
	\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{-4}
}{}

%英文关键词
\newenvironment{keywordEN}{
	\fancyhead[C]{\songti\zihao{5}{\titleEN}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
	\vspace{2\baselineskip}	%空两行
	\songti\zihao{-4}
    \thispagestyle{fancy}
	\noindent{\textbf{Key words: }}
 }
{\newpage}

% 定义符号和缩略语说明
\newenvironment{signAndABC}{
	\newpage
	\thispagestyle{fancy}
	\fancyhead[C]{\songti\zihao{5}{符号和缩略语说明}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
     \phantomsection % 添加超链接的目标位置
	\hypertarget{signAndABC}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{\textbf{符号和缩略语说明}} % 在目录中显示摘要\zihao{-4}
	\vspace{1\baselineskip}	
	\begin{center}
		\songti\zihao{3}{\textbf{~\\}}
		{\heiti\zihao{3}{\textbf{符号和缩略语说明}} }	
	\end{center}
	\vspace{1\baselineskip}
	\songti\zihao{-4}
}{\newpage}


%定义附录环境  致谢
\newenvironment{szuAppendix}[1]{
	\newpage
       \phantomsection % 添加超链接的目标位置
	\hypertarget{szuAppendix}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{\textbf{致~谢}} % 在目录中显示附录 \zihao{-4}
	\vspace{1\baselineskip}	
	\begin{center}
        \songti\zihao{3}{\textbf{~\\}}
        \heiti\bfseries\zihao{3}{#1}
	\end{center}
 
	\vspace{0.5\baselineskip}
	\songti\zihao{5}
}{}



%定义附录环境  攻读硕士学位期间研究成果
\newenvironment{szuAppendixB}[1]{

	\newpage 
    \thispagestyle{fancy}
	\fancyhead[C]{\songti\zihao{5}{\titleEN}}
	\fancyfoot[C]{\songti\zihao{5}{\thepage}}
      \phantomsection % 添加超链接的目标位置
	\hypertarget{szuAppendixB}{} % 设置超链接的目标位置
	\addcontentsline{toc}{\newContects}{\textcolor{black}{\textbf{#1}}} % 在目录中显示附\zihao{-4}
	\vspace{1\baselineskip}	
	\begin{center}
        \songti\zihao{3}{\textbf{~\\}}
        \heiti\bfseries\zihao{3}{#1}
	\end{center}
 
	\vspace{0.5\baselineskip}
	\songti\zihao{5}
}{}




\setCJKfamilyfont{sectionfont}{SimHei} % 设置一级和二级标题字体为黑体
\setCJKfamilyfont{subsectionfont}{SimHei} 



% 在导言区定义新字体族
\newfontfamily\sectionef{Arial}

\ctexset{
		section={
				format+ = \heiti\bfseries\zihao{3}\sectionef,
				name = {第,章},
				number = \chinese{section}
	}
}	


\titleformat{\subsection}{\zihao{-3}\heiti\bfseries\sectionef}{\thesubsection}{1em}{}

\titleformat{\subsubsection}{\zihao{4}\bfseries\fontspec{songti-Bold.otf}}{\thesubsubsection}{1em}{}


% 定义目录标题样式
\titlecontents{section}[0em]{\bfseries\fontspec{songti-Bold.otf}\zihao{-4}}{\contentspush{\thecontentslabel\hspace{1em}}}{}{\titlerule*[0.4pc]{.}\contentspage\vspace{1.6pt}}%

%\titlecontents{section}[0em]{\bfseries\zihao{-4}}{\contentspush{\thecontentslabel\hspace{1em}}}{}{\titlerule*[0.4pc]{.}\contentspage\vspace{1.6pt}}%

\titlecontents{subsection}[1em]{\fontspec{simsun.ttc}\zihao{-4}}{{\thecontentslabel}\hspace{1em}}{}{\titlerule*[0.4pc]{.}\contentspage\vspace{1.6pt}}

\titlecontents{subsubsection}[1.8em]{\fontspec{simsun.ttc}\zihao{-4}}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.4pc]{.}\contentspage\vspace{1.6pt}}



\endinput