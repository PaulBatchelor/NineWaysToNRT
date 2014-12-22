BEGIN{
printf "%!PS\n%%BoundingBox: 0 0 %d %d\n\
\n\
/box\n\
{\n\
1 dict begin\n\
/y1 exch def\n\
/x1 exch def\n\
/width exch def\n\
/height 1 def\n\
/x2 x1 width add def\n\
/y2 y1 height add def\n\
newpath \n\
x1 y1 moveto\n\
x1 y2 lineto\n\
x2 y2 lineto\n\
x2 y1 lineto\n\
closepath\n\
} def\n\
0.176470588235294 0.243137254901961 0.282352941176471 setrgbcolor\n\
gsave\n\
%d %d scale\n\
newpath\n\
0 0 moveto\n\
0 1 lineto\n\
1 1 lineto\n\
1 0 lineto\n\
closepath\n\
fill\n\
grestore\n\
gsave\n\
0.666666666666667 0.847058823529412 0.694117647058824 setrgbcolor \n\
%d %d scale\n", width, height, width, height, scaleX, scaleY
}

{ 
    printf "%g %g %g box fill\n", $2, $1, $3 + offset
}

END{
print "grestore showpage"
}
