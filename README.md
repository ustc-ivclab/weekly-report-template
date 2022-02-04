# Weekly Report Template

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Gitmoji](https://img.shields.io/badge/gitmoji-%20%F0%9F%98%9C%20%F0%9F%98%8D-FFDD67.svg?style=flat-square)](https://gitmoji.dev)

A weekly report template for ViLaB.

## Settings

``` tex
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

``` tex
\usepackage[pdfusetitle, psdextra]{hyperref}
\title{main}
\author{wzy\thanks{USTC}}
```

``` shell
$ pdfinfo main.pdf|rg Title\|Author
Title:           main
Author:          wzy
```
