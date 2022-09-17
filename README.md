# Weekly Report Template

A weekly report template for ViLaB. A blank template can be found in
[template](https://github.com/Freed-Wu/weekly-report-template/tree/template).

## Settings

```tex
\geometry{%
  noheadfoot,
  margin={0.79in, 0.49in},
  headheight=0.26in,
  headsep=0.04in,
}
```

![page](https://user-images.githubusercontent.com/32936898/152362381-c72c06a2-b257-4cf2-94e0-a7373a662147.png)

## Others

Some changes on the [original template](https://github.com/Freed-Wu/weekly-report-template/releases/tag/v0.0.1):

- Fix typos.
- Remove the blank lines in header.

### Add PDF Meta Information

```tex
\usepackage[pdfusetitle, psdextra]{hyperref}
\title{YourTitle}
\author{YourName\thanks{USTC}}
```

```shell
$ pdfinfo main.pdf | grep -E Title\|Author
Title:           YourTitle
Author:          YourName
```

### Fill User Name Automatically

```tex
\ExplSyntaxOn
\NewDocumentCommand{\Shell}{om}{\sys_get_shell:nnN{#2}{}#1}
\ExplSyntaxOff
\Shell[\Name]{git config user.name}
\Shell[\Email]{git config user.email}
\newcommand{\Authorname}[0]{\href{mailto:\Email}{\Name}}
\author{\Authorname\thanks{\href{https://ustc.edu.cn/}{USTC}}}
```

```sh
git config user.name YourName
git config user.email YourEmail
```
