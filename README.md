# thesis-fos-uop-latex

**Please note that this template is a work-in-progress. This is a working template with minor upgrades needed.**

**Note that this readme is a work-in-progress. This will be updated with more information*

## Todo

- [x] ~Fix location of page numbers in the prefatory pages.~
- [ ] Add appendix

## Introduction

This is a project report/thesis template for B.Sc. Computer Science of Faculty of Science, University of Peradeniya. This might be suitable for other study programs with minor adjustments. But this template is based on the B.Sc. Computer Science program requirements. This is made using the offical thesis guidelines. This is not an official template provided by the institution. 

## Prerequisites

This project requires `XeLaTeX` to build and compile. Might fail to compile with `pdfLaTeX`. `XeLaTeX` is needed to load the `Times New Roman` font style.

If you are using `pdfLaTeX` comment out the following section in the `fosuop.cls`.

```tex
\RequirePackage{fontspec}
\setmainfont[Path=fonts/,
    BoldItalicFont=timesbi.ttf,
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf
]{times.ttf}
```

## Project structure

The following tree diagram shows the file structure of the project. 

```
.
├── fosuop.cls                  // latex class with all custom modifications
├── main.tex                    // main .tex file
├── references.bib              // references file
├── fonts/
│   ├── times.ttf
│   ├── timesbd.ttf
│   ├── timesbi.ttf
│   └── timesi.ttf
├── images
├── main-chapters/              // main body of the thesis
│   ├── 1-introduction.tex
│   ├── 2-literature.tex
│   ├── 3-design.tex
│   ├── 4-implementation.tex
│   ├── 5-results.tex
│   └── 6-conclusion.tex
├── prefatory-chapters/         // prefatory pages
│   ├── 0-abbreviations.tex     // abbreviations and descriptions
│   ├── 0-abstract.tex
│   ├── 0-acknowledgement.tex
│   ├── 0-declaration.tex
│   └── 0-title.tex             // title page
├── .gitignore
├── README.md
└── LICENSE
```

## How to compile? 

Compile the `main.tex` to get the pdf. 

## Bugfixes and features

- If any bugs are found please open issues. 
- If there are fixes to bugs please open a PR to the dev branch. 
- Additionally if there are any new feature requests please open an issue and if there are any feature implementations open a PR to the dev branch. 
