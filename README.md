# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>
## A second-level heading

\documentclass{article}
\usepackage{amsmath}
\usepackage{color,pxfonts,fix-cm}
\usepackage{latexsym}
\usepackage[mathletters]{ucs}
\usepackage[OpenSymbol,LiberationSerif-Italic,LiberationSerif,DejaVuSans,T1]{fontenc}
\usepackage[utf8x]{inputenc}
\usepackage{pict2e}
\usepackage{wasysym}
\usepackage[english]{babel}
\usepackage{tikz}
\pagestyle{empty}
\usepackage[margin=0in,paperwidth=595pt,paperheight=841pt]{geometry}
\begin{document}
\definecolor{color_29791}{rgb}{0,0,0}
\begin{tikzpicture}[overlay]\path(0pt,0pt);\end{tikzpicture}
\begin{picture}(-5,0)(2.5,0)
\put(218.587,-117.817){\fontsize{11.59662}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(222.303,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(235.097,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}s}
\put(240.289,-111.107){\fontsize{7.126989}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}2}
\put(244.913,-116.999){\fontsize{11.93482}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(253.111,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}K}
\put(262.899,-116.999){\fontsize{11.93482}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(271.097,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(276.402,-119.311){\fontsize{7.126989}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(281.707,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}s}
\put(286.898,-117.817){\fontsize{11.59662}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(292.09,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}X}
\put(301.905,-116.323){\fontsize{9.061632}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(304.913,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}s}
\put(310.898,-116.323){\fontsize{9.061632}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(313.196,-116.999){\fontsize{11.93482}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(323.693,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}F}
\put(332.714,-116.999){\fontsize{11.93482}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(337.196,-116.999){\fontsize{11.93482}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}s}
\put(342.387,-116.999){\fontsize{11.93482}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(234.392,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(248.707,-143.211){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}¨}
\put(247.205,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(254.008,-142.412){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(262.2,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(267.501,-144.723){\fontsize{7.166633}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(274.191,-143.211){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(273.51,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(279.491,-142.412){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(287.712,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}Kx}
\put(301.998,-142.412){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(312.487,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(318.496,-142.412){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(323.003,-142.412){\fontsize{11.97296}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}t}
\put(327.51,-142.412){\fontsize{11.97296}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(56,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}S}
\put(62.985,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}t}
\put(67.286,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}a}
\put(73.985,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}t}
\put(78.286,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}e}
\put(85.07301,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791} V}
\put(96.062,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}a}
\put(102.761,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}r}
\put(107.26,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}i}
\put(110.351,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}a}
\put(117.05,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}b}
\put(124.035,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}l}
\put(127.126,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}e}
\put(133.913,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}s}
\put(139.611,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}: x}
\put(153.383,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791} a}
\put(163.569,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}n}
\put(170.554,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}d}
\put(177.539,-165.711){\fontsize{11}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791} v}
\put(57.393,-188.52){\fontsize{11.91898}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(56.602,-187.704){\fontsize{11.91898}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(62.614,-187.704){\fontsize{11.91898}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(73.113,-187.704){\fontsize{11.91898}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(57.397,-217.498){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(56.603,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(62.613,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(73.894,-217.498){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}¨}
\put(73.214,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(79.11,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(93.397,-210.015){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}1}
\end{picture}
\begin{tikzpicture}[overlay]
\path(0pt,0pt);
\begin{scope}
\clip
(55.894pt, -227.76pt) -- (188.799pt, -227.76pt)
 -- (188.799pt, -227.76pt)
 -- (188.799pt, -199.512pt)
 -- (188.799pt, -199.512pt)
 -- (55.894pt, -199.512pt) -- cycle
;
\filldraw[color_29791][even odd rule]
(89.655pt, -213.587pt) -- (102.723pt, -213.587pt)
 -- (102.723pt, -213.587pt)
 -- (102.723pt, -212.992pt)
 -- (102.723pt, -212.992pt)
 -- (89.655pt, -212.992pt) -- cycle
;
\end{scope}
\end{tikzpicture}
\begin{picture}(-5,0)(2.5,0)
\put(91.214,-225.01){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(103.913,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(107.712,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}−}
\put(118.087,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}Kx}
\put(132.402,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}−}
\put(142.209,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(148.106,-219.709){\fontsize{7.2}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(154.087,-217.498){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(153.406,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(160.209,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(167.608,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(174.411,-216.818){\fontsize{9.113075}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(177.387,-216.818){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}t}
\put(182.603,-216.818){\fontsize{9.113075}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(185.608,-216.818){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(257.608,-247.999){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(256.814,-247.319){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(262.909,-247.319){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(274.106,-247.319){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}A}
\put(281.3965,-247.319){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(287.598,-247.319){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(295.791,-247.319){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}B}
\put(303.0815,-247.319){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}u}
\put(205.394,-292.106){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(211.403,-280.824){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(210.609,-280.116){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(211.403,-295.111){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}˙}
\put(209.901,-294.402){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(216.591,-292.106){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(220.389,-286.919){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(230.112,-298.116){\fontsize{30.16049}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(242.102,-271.924){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}0}
\put(274.389,-271.924){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}1}
\put(234.591,-288.421){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}−}
\put(245.107,-288.421){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}K}
\end{picture}
\begin{tikzpicture}[overlay]
\path(0pt,0pt);
\begin{scope}
\clip
(205.393pt, -307.811pt) -- (359.949pt, -307.811pt)
 -- (359.949pt, -307.811pt)
 -- (359.949pt, -259.111pt)
 -- (359.949pt, -259.111pt)
 -- (205.393pt, -259.111pt) -- cycle
;
\filldraw[color_29791][even odd rule]
(234.647pt, -291.965pt) -- (254.801pt, -291.965pt)
 -- (254.801pt, -291.965pt)
 -- (254.801pt, -291.3701pt)
 -- (254.801pt, -291.3701pt)
 -- (234.647pt, -291.3701pt) -- cycle
;
\end{scope}
\end{tikzpicture}
\begin{picture}(-5,0)(2.5,0)
\put(239.891,-303.303){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(266.906,-286.125){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}−}
\put(276.713,-286.125){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(282.609,-289.102){\fontsize{7.2}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}V}
\end{picture}
\begin{tikzpicture}[overlay]
\path(0pt,0pt);
\begin{scope}
\clip
(205.393pt, -307.811pt) -- (359.949pt, -307.811pt)
 -- (359.949pt, -307.811pt)
 -- (359.949pt, -259.111pt)
 -- (359.949pt, -259.111pt)
 -- (205.393pt, -259.111pt) -- cycle
;
\filldraw[color_29791][even odd rule]
(266.906pt, -291.965pt) -- (288.421pt, -291.965pt)
 -- (288.421pt, -291.965pt)
 -- (288.421pt, -291.3701pt)
 -- (288.421pt, -291.3701pt)
 -- (266.906pt, -291.3701pt) -- cycle
;
\end{scope}
\end{tikzpicture}
\begin{picture}(-5,0)(2.5,0)
\put(272.093,-303.303){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(289.413,-298.116){\fontsize{30.16049}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(293.891,-292.106){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(298.398,-280.116){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(298.398,-294.402){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(305.088,-292.106){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(308.887,-286.919){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(316.398,-297.322){\fontsize{29.15394}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(324.591,-272.604){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}0}
\put(324.591,-286.919){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}1}
\end{picture}
\begin{tikzpicture}[overlay]
\path(0pt,0pt);
\begin{scope}
\clip
(205.393pt, -307.811pt) -- (359.949pt, -307.811pt)
 -- (359.949pt, -307.811pt)
 -- (359.949pt, -259.111pt)
 -- (359.949pt, -259.111pt)
 -- (205.393pt, -259.111pt) -- cycle
;
\filldraw[color_29791][even odd rule]
(321.643pt, -291.199pt) -- (334.711pt, -291.199pt)
 -- (334.711pt, -291.199pt)
 -- (334.711pt, -290.604pt)
 -- (334.711pt, -290.604pt)
 -- (321.643pt, -290.604pt) -- cycle
;
\end{scope}
\end{tikzpicture}
\begin{picture}(-5,0)(2.5,0)
\put(322.408,-301.801){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}M}
\put(335.901,-297.322){\fontsize{29.15394}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(340.408,-286.919){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}f}
\put(346.389,-286.919){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}(}
\put(351.605,-286.919){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}t}
\put(356.112,-286.919){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791})}
\put(256.587,-349.105){\fontsize{11.94504}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}y}
\put(262.597,-349.105){\fontsize{11.94504}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(272.405,-349.105){\fontsize{11.94504}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}C}
\put(280.4503,-349.105){\fontsize{11.94504}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(287.4,-349.105){\fontsize{11.94504}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}+}
\put(295.592,-349.105){\fontsize{11.94504}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}D}
\put(304.1529,-349.105){\fontsize{11.94504}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}u}
\put(238.191,-378.903){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}y}
\put(244.2,-378.903){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(254.688,-378.903){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(262.2,-378.903){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791},}
\put(268.209,-378.903){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}y}
\put(274.191,-378.903){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}=}
\put(283.913,-378.903){\fontsize{9.708686}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(286.89,-378.903){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}1}
\put(303.387,-378.903){\fontsize{11.991}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}0}
\put(310.899,-378.903){\fontsize{9.708686}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\put(313.904,-384.913){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}[}
\put(318.411,-372.922){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}x}
\put(318.411,-387.124){\fontsize{11.991}{1}\usefont{T1}{ptm}{m}{it}\selectfont\color{color_29791}v}
\put(325.214,-384.913){\fontsize{20.80607}{1}\usefont{T1}{cmr}{m}{n}\selectfont\color{color_29791}]}
\end{picture}
\end{document}
