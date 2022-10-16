# Weekly Report Template

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/weekly-report-template/master.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/weekly-report-template/master)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/weekly-report-template/total)](https://github.com/Freed-Wu/weekly-report-template/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/weekly-report-template/latest/total)](https://github.com/Freed-Wu/weekly-report-template/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/weekly-report-template)](https://github.com/Freed-Wu/weekly-report-template/blob/master/LICENSE)
![github/languages](https://shields.io/github/languages/count/Freed-Wu/weekly-report-template)
![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/weekly-report-template)
![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/weekly-report-template)
![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/weekly-report-template)
![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/weekly-report-template)
![github/v](https://shields.io/github/v/release/Freed-Wu/weekly-report-template)

A weekly report template for ViLaB. A blank template can be found in
[template](https://github.com/Freed-Wu/weekly-report-template/tree/template).

<!-- mdformat-toc start --slug=github --no-anchors --maxlevel=6 --minlevel=2 -->

- [Settings](#settings)
- [Others](#others)
  - [Add PDF Meta Information](#add-pdf-meta-information)
  - [Fill User Name Automatically](#fill-user-name-automatically)

<!-- mdformat-toc end -->

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
