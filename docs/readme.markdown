* [Quick start](#quick-start)
  * [Minimal example](#minimal-example)
* [All commands and environments by topic](#all-commands-and-environments-by-topic)
  * [General](#general)
  * [Initial pages](#initial-pages)
  * [Sections](#sections)
  * [Source code](#source-code)
  * [Algorithms](#algorithms)
  * [Figures](#figures)
  * [Tables](#tables)
* [Additional features](#additional-features)
  * [Fonts](#fonts)
  * [Hyphenation and other language features](#hyphenation-and-other-language-features)
  * [Including source code and other text files](#including-source-code-and-other-text-files)


# Quick start

1. Ensure that you have the entire [TeX Live](https://www.tug.org/texlive/) software installed (for Windows download [this installer](http://mirror.ctan.org/systems/texlive/tlnet/install-tl.exe), for Linux - search and install `texlive-full` package).
1. Copy ktua4.sty and ktulogo.eps files to your project directory.
1. Write your `.tex` document with `\usepackage{ktua4}` and the commands described below - see minimal example below.
1. Compile it using `xelatex` with `-shell-escape` flag (if using TeXworks - you need to open `Edit -> Preferences -> Typesetting -> Processing Tools -> XeLaTeX -> Edit...`, press `+` and enter `-shell-escape` and move it with an up arrow so that it is on top - before `$synctexoption`).

## Minimal example

    \newcommand{\ktusubject}{TODO subject}
    \newcommand{\ktutitle}{TODO title}
    \newcommand{\ktuyear}{TODO year}
    \newcommand{\ktudate}{\ktuyear-TODO month-day}
    \newcommand{\ktucity}{TODO city}
    \newcommand{\ktuinstitution}{TODO institution}
    \newcommand{\ktufaculty}{TODO subinstitution}
    \newcommand{\ktucathedral}{TODO subsubinstitution}
    \newcommand{\ktuauthor}{TODO author}
    \newcommand{\ktumaster}{TODO receiver}
    \documentclass[12pt, a4paper, onecolumn, titlepage, oneside, intlimits, fleqn]{report}
    \usepackage{ktua4}
    \begin{document}
    \ktuinit{}
    Hello, world!
    \end{document}

# All commands and environments by topic

## General

### Environment `ktuliterature`

Insert a list of references.
Use `\begin{thebibliography}` inside.
Or use `\printbibliography` if you use BibLaTeX.

### `\mq{sample text}`

Wrap the "sample text" with nice lithuanian quotes.

### `\cmd{sample text}`

Insert the "sample text" in monospace font and with a box around.

### `\ktucomment{sample text}`

Do not render "sample text" at all.

### Environment `ktuappendices`

Insert a list of appendices.
Use `\ktusection{example}` for each appendix.

### Environment `ktusol`

Useful to mark the solution of some problem.
Wraps the text with beginning and ending triangles.

## Initial pages

### `\ktuinit`

Automatically generates and inserts a nice full front title page, table of contents, list of figures, list of tables and list of algorithms.
Lists are inserted only when at least one element of the list type is in a document.

### `\ktuauthor`

The full name of the person who is the author of this document, for example "John Doe".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktumaster`

The full name with titles of the person who accepts the document or advises to the main author, for example "prof. Jane Roe".

### `\ktutitle`

The main title of the document, for example "Knapsack problem".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktusubject`

Type of this document, a series that this document belongs, for example "Mathematical analysis report #1" or "Master's thesis".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktuyear`

Full year of the document publish date, for example "2014".

### `\ktudate`

Document publish date in ISO 8601 format, for example "2014-04-24".

### `\ktuinstitution`

The institution this document belongs to, for example "Kauno technologijos universitetas".

### `\ktufaculty`

The faculty of the institution this document belongs to, for example "Matematikos ir gamtos mokslų fakultetas".

### `\ktucathedral`

The cathedral of the faculty of the institution this document belongs to, for example "Taikomosios matematikos katedra".

### `\ktucity`

The city where the institution, faculty and cathedral is located, for example "Kaunas".

## Sections

### `\ktuchapter{example}`

Create a chapter named "example".

### `\ktunchapter{example}`

Create a chapter named "example" that does not have a number in the table of contents.

### `\ktusection{example}`

Create a section named "example".

### `\ktusubsection{example}`

Create a subsection named "example".

### `\ktusubsubsection{example}`

Create a subsubsection named "example".

### `\ktusecref{example}`

Insert a reference to a section named "example".

## Source code

These commands need your computer to have "pygmentize" command.

### `\ktusrc`

TODO

### `\ktusrcr`

TODO

### `\ktusrcrh`

TODO

### `\ktusrcref`

TODO

## Algorithms

### Environment `ktualgo`

TODO

### `\ktualgoref`

TODO

## Figures

### `\ktufigure`

TODO

### `\ktufigref`

TODO

### `\ktufigurewidest`

TODO

### `\ktutexfigurec`

TODO

### `\ktutextc`

TODO

### `\ktutextcl`

TODO

### `\ktutextn`

TODO

### `\ktutext`

TODO

## Tables

### `\ktutextablec`

TODO

### Environment `ktutable`

TODO

# Additional features

## Fonts

This template does not set the KTU style "Times New Roman" and "Courier New" fonts, because some computers may not have them.

To use the KTU style fonts add the following lines *after* `\usepackage{ktua4}`:

    \setmainfont{Times New Roman}
    \setmonofont{Courier New}

If your computer does not have them, you can [download them](https://github.com/jakutis/ktu-latex-template/archive/master.zip) (move the `fonts` folder near `ktua4.sty`) and then use lines instead of previous two lines:

    \setmainfont[
        Path           = ./fonts/,
        Extension      = .TTF,
        Ligatures      = TeX,
        BoldFont       = *bd,
        ItalicFont     = *i,
        BoldItalicFont = *bi
    ]{Times}
    \setmonofont[
        Path           = ./fonts/,
        Extension      = .ttf,
        Ligatures      = TeX,
        BoldFont       = *bd,
        ItalicFont     = *i,
        BoldItalicFont = *bi
    ]{cour}

## Hyphenation and other language features

Use the [polyglossia](http://ctan.org/pkg/polyglossia) package by adding these lines *before* `\usepackage{ktua4}`:

    \usepackage{polyglossia}
    \setdefaultlanguage{lithuanian}

If it does not work for you, it is probably because older versions of [biblatex](http://ctan.org/pkg/biblatex) are broken.
Please download [a newer version](http://downloads.sourceforge.net/project/biblatex/biblatex-2.8/biblatex-2.8a.tds.tgz) and extract it into `texmf` directory (`C:/Users/username/texmf` on Windows, `/home/username/texmf` on Linux) so that file `texmf/tex/latex/biblatex/biblatex.sty` exists.

1. Extract it into

## Including source code and other text files

1. Download latest version of [Python](https://www.python.org/download/releases/), for example `3.4.0`, and install it - in the "Customize" screen enable the "Add python.exe to Path" option which is under "Python".
1. Open `Start -> Run` (or press Windows+R keys), enter `pip install Pygments` and press `OK`.
