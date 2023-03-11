#!/usr/bin/env -S perl -0777 -p
s/(?<=\\multicolumn\{2\}\{\|p\{\\linewidth\}\|\}\{%\n)(.|\n)*?(?=  \}\s*\\\\)//g
