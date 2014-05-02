* [Quick start](#quick-start)
  * [Minimal example](#minimal-example)
* [All commands and environments by topic](#all-commands-and-environments-by-topic)
  * [General](#general)
  * [Initial pages](#initial-pages)
  * [Sections](#sections)
  * [Algorithms](#algorithms)
  * [Figures](#figures)
  * [Tables](#tables)
* [Additional features](#additional-features)
  * [Fonts](#fonts)
  * [Hyphenation and other language features](#hyphenation-and-other-language-features)
  * [Biblatex](#biblatex)
  * [Including source code and other text files](#including-source-code-and-other-text-files)
  * [A5 format](#a5-format)
  * [Slides format](#slides-format)
  * [Markdown](#markdown)
  * [Sage Math](#sage-math)
  * [R](#r)
  * [SAS](#sas)

# Quick start

1. Ensure that you have the entire [TeX Live](https://www.tug.org/texlive/) software installed (for Windows download [this installer](http://mirror.ctan.org/systems/texlive/tlnet/install-tl.exe), for Linux - search and install `texlive-full` package).
1. Copy ktua4.sty and ktulogo.eps files to your project directory.
1. Write your `.tex` document with `\usepackage{ktua4}` and the commands described below - see minimal example below.
1. Compile it using `xelatex` with `-shell-escape` flag (if using TeXworks - you need to open `Edit -> Preferences -> Typesetting -> Processing Tools -> XeLaTeX -> Edit...`, press `+` and enter `-shell-escape` and move it with an up arrow so that it is on top - before `$synctexoption`).

## Minimal example

    \newcommand{\ktusubject}{subject}
    \newcommand{\ktutitle}{title}
    \newcommand{\ktuyear}{year}
    \newcommand{\ktudate}{\ktuyear-month-day}
    \newcommand{\ktucity}{city}
    \newcommand{\ktuinstitution}{institution}
    \newcommand{\ktufaculty}{subinstitution}
    \newcommand{\ktucathedral}{subsubinstitution}
    \newcommand{\ktuauthor}{author}
    \newcommand{\ktumaster}{receiver}
    \documentclass[12pt, a4paper, onecolumn, titlepage, oneside, intlimits, fleqn]{report}
    \usepackage{ktua4}
    \begin{document}
    \ktuinit{}
    Hello, world!
    \end{document}

[All examples](https://github.com/jakutis/ktu-latex-template/tree/master/examples).

# All commands and environments by topic

## General

### Environment `ktuliterature`

Insert a list of references.

Use `\begin{thebibliography}` inside:

    \begin{ktuliterature}
        \begin{thebibliography}{99}
            \bibitem{NSSI} Tobias Oetiker et. al. \emph{The Not So
               Short Introduction to \LaTeXe{}}.
        \end{thebibliography}
    \end{ktuliterature}

Or use `\printbibliography` if you use Biblatex (see [Biblatex](#biblatex)):

    \begin{ktuliterature}
        \printbibliography
    \end{ktuliterature}

### `\mq{sample text}`

Wrap the "sample text" with nice lithuanian quotes.

### `\cmd{sample text}`

Insert the "sample text" in monospace font and with a box around.

### `\ktucomment{sample text}`

Do not render "sample text" at all.

### Environment `ktuappendices`

Insert a list of appendices.
Use `\ktusection{example}` for each appendix.

    \begin{ktuappendices}
    \ktusection{Example material}
    A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, R, S, T, U, V, Z.
    \end{ktuappendices}

### Environment `ktusol`

Useful to mark the solution of some problem.
Wraps the text with beginning and ending triangles.

## Initial pages

### `\ktuinit{}`

Automatically generates and inserts a nice full front title page, table of contents, list of figures, list of tables and list of algorithms.
Lists are inserted only when at least one element of the list type is in a document.
Do not forget to put a [ktu_logo.eps](https://github.com/jakutis/ktu-latex-template/raw/master/ktu_logo.eps) file near `ktua4.sty`.

### `\ktuauthor{John Doe}`

The full name of the person who is the author of this document, for example "John Doe".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktumaster{prof. Jane Roe}`

The full name with titles of the person who accepts the document or advises to the main author, for example "prof. Jane Roe".

### `\ktutitle{Knapsack problem}`

The main title of the document, for example "Knapsack problem".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktusubject{Master's thesis}`

Type of this document, a series that this document belongs, for example "Mathematical analysis report #1" or "Master's thesis".

You must use only regular letters - math formulas and other fancy symbols will not work.
If you want to use non-regular letters - you have to delete line `\usepackage[pdftitle={\ktutitle}...` line from `ktua4.sty`.

### `\ktuyear{2014}`

Full year of the document publish date, for example "2014".

### `\ktudate{2014-04-24}`

Document publish date in ISO 8601 format, for example "2014-04-24".

### `\ktuinstitution{Kauno technologijos universitetas}`

The institution this document belongs to, for example "Kauno technologijos universitetas".

### `\ktufaculty{Matematikos ir gamtos mokslų fakultetas}`

The faculty of the institution this document belongs to, for example "Matematikos ir gamtos mokslų fakultetas".

### `\ktucathedral{Taikomosios matematikos katedra}`

The cathedral of the faculty of the institution this document belongs to, for example "Taikomosios matematikos katedra".

### `\ktucity{Kaunas}`

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

## Algorithms

### Environment `ktualgo`

Wraps an algorithms, inserts a caption and creates a reference id.

\begin{ktualgo}{referenceid}{Example ABC algorithm}
\Procedure{ABC}{$a,b,c,n$}
    \For{$d$ nuo $0$ iki $b$}
        \State{$z_0(d) \gets 0$}\Comment{inicializacija}
    \EndFor{}
\EndProcedure{}
\end{ktualgo}

### `\ktualgoref{referenceid}`

Inserts a reference to algorithm "referenceid".
For the algorithm above, use `\ktualgoref{referenceid}`.

## Figures

### `\ktufigure{test.jpg}{18cm}{A test image}`

Inserts a picture from `test.jpg` file, makes it 18cm wide (proportions preserved), adds a "A test image" caption and creates a reference.

### `\ktufigref{test.jpg}`

Insert a reference to a figure with file "test.jpg".

### `\ktufigurewidest{test.jpg}{A test image}`

Inserts a picture from `test.jpg` file, makes it maximally horizontally wide (proportions preserved), adds a "A test image" caption and creates a reference.

### `\ktutexfigure{test.tex}{A test figure}`

Wraps the contents of `test.tex` file as a figure, adds a "A test figure" caption and creates a reference.

## Tables

### `\ktutextable{test.tex}{A test table}`

Wraps the contents of `test.tex` file as a table, adds a "A test table" caption and creates a reference.
Example contents of `test.tex`:

    \begin{tabular}{lcl}
      Vardas & Metai & Formulė \\
      Niutonas   & 1687 & $F = m a$ \\
      Einšteinas & 1905 & $E = m c^2$ \\
    \end{tabular}

To insert a reference for this table use `\vref{tab:test.tex}`.

### Environment `ktutable`

Wraps a table, inserts a caption and creates a reference id.

    \begin{ktutable}{referenceid}{Random table}
        \begin{tabular}{lcl}
          Vardas & Metai & Formulė \\
          Niutonas   & 1687 & $F = m a$ \\
          Einšteinas & 1905 & $E = m c^2$ \\
        \end{tabular}
    \end{ktutable}

To insert a reference for this table use `\vref{tab:referenceid}`.

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

## Biblatex

Biblatex enables you to automatically generate list of bibliography from a BibTeX file and `\cite` commands in your tex file (for more similar commands read [section 3.7 Citation Commands](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf)).

1. Please download [ISO 960 style for biblatex](https://github.com/michal-h21/biblatex-iso690/archive/master.zip) and extract it into `texmf/tex/latex` directory (texmf is `C:/Users/username/texmf` on Windows, `/home/username/texmf` on Linux) so that file `texmf/tex/latex/biblatex-iso690-master/iso.bbx` exists.
2.  Create a BibTeX file `yourmaintexfile.bib` with your bibliography, for example:

    ```
    @Book{gisslen2011professional,
    author="Gisslen, Wayne",
    title="Professional cooking",
    year="2011",
    edition="7",
    publisher="John Wiley \& Sons",
    address="Hoboken, N.J",
    keywords="Quantity cooking",
    keywords="Food service",
    note="Wayne Gisslen ; photography by J. Gerard Smith.",
    note="Includes bibliographical references (p. 1059-1060) and indexes.",
    isbn="9780470197523"
    }
    ```

3. Add the following lines between `\usepackage{ktua4}` and `\begin{document}`:

    ```
    \usepackage[spacecolon=false,bibencoding=UTF8,sortlocale=en_US,backend=biber,sorting=none,labelnumber=true,natbib=true,bibstyle=iso-numeric,firstinits=true,citestyle=iso-authoryear,language=lithuanian]{biblatex}
    \bibliography{yourmaintexfile}
    ```

4. Make sure you have [lithuanian.lbx](https://github.com/jakutis/ktu-latex-template/blob/master/lithuanian.lbx) file near `ktua4.sty` file or change `language=lithuanian` to `language=english` near `\usepackage[...]{biblatex}` (from the above code snippet).
   Also, please note that this `lithuanian.lbx` is not completely translated, so if you notice bugs, [create an issue](https://github.com/jakutis/ktu-latex-template/issues).
5. Add the following lines somewhere near before `\end{document}`:

    ```
    \begin{ktuliterature}
        \printbibliography
    \end{ktuliterature}
    ```

6. Compile `yourmaintexfile.tex` that contains `\cite{gisslen2011professional}` - run `XeLaTeX`, then `biber` (read the following instructions) and then `XeLaTex` again.

### Windows (using TexWorks)

1. Open `Edit -> Preferences -> Typesetting -> Processing Tools`, press `+` and enter `biber` by `Name`, `biber.exe` by `Program`, press `+` and enter `$basename`, untick `View PDF after running`.
1. Select `biber` from the combo box near the big green button with tooltip `Typeset` and press that button each time you update `yourmaintexfile.bib` or the citations in `yourmaintexfile.tex`.

### Linux

1. Open command line terminal and run `biber yourmaintexfile` (install `apt-get install biber` if needed) each time you update `yourmaintexfile.bib` or the citations in `yourmaintexfile.tex`.

## Including source code and other text files

1. Download latest version of [Python](https://www.python.org/download/releases/), for example `3.4.0`, and install it - in the "Customize" screen enable the "Add python.exe to Path" option which is under "Python".
1. Open `Start -> Run` (or press Windows+R keys), enter `pip install Pygments` and press `OK`.

Use the commands below.

### `\ktusrcref{example.txt}`

Insert a reference to a file `example.txt`.

### `\ktutextcl{example.txt}{An example text file}{true}`

Inserts the contents of a text file `example.txt` with line numbers (use `false` instead of `true` to hide line numbers) and with a caption "An example text file".
Creates a reference.

### `\ktutextc{example.txt}{An example text file}`

Inserts the contents of a text file `example.txt` with line numbers and with a caption "An example text file".
Creates a reference.

### `\ktutextn{example.txt}`

Inserts the contents of a text file `example.txt` with line numbers.
Creates a reference.

### `\ktutext{example.txt}`

Inserts the contents of a text file `example.txt` with line numbers and with a caption "example.txt".
Creates a reference.

### `\ktusrc{example.py}{python}`

Inserts the contents of a file `example.py` with Python source code highlighting, with line numbers and with a `\ktusubsection` header "example.py".
Creates a reference.

### `\ktusrcr{example.py}{files/example.py}{python}`

Inserts the contents of a file `files/example.py` with Python source code highlighting, with line numbers and with a `\ktusubsection` header "example.py".
Creates a reference.

### `\ktusrcrh{example.py}{files/example.py}{python}{\ktusection}`

Inserts the contents of a file `files/example.py` with Python source code highlighting, with line numbers and with a `\ktusection` header "example.py".
Creates a reference.

## A5 format

TODO

## Slides format

TODO

## Markdown

[Markdown](http://daringfireball.net/projects/markdown/) syntax (see `sample.md` file).
[kramdown](http://kramdown.gettalong.org/) installation with the `kramdown-mylatex.rb` file copied to `<kramdown_directory>/converter/latex.rb`:

  * if kramdown is installed with `gem install kramdown`, then `<kramdown_directory>` is something like `/home/username/.rvm/gems/ruby-2.0.0-p195/gems/kramdown-1.0.2/lib/kramdown`
  * if kramdown is installed on Ubuntu with `apt-get install ruby-kramdown`, then `<kramdown_directory>` is something like `/usr/lib/ruby/vendor_ruby/kramdown`

Open `Makefile` in your text editor and edit `MARKDOWN_TO_LATEX` variable - it contains a space-separated list of `md-<name>.tex` files that will be created from your own `<name>.md` files.

To cite in Markdown you just use the bold mode `**citationID**`.
The `citationID` is the same cite id that is in your concrete BibTeX .bib file.

TODO

## Sage Math

[Sage Math](http://www.sagemath.org/) code embedding and evaluation with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) commands (see `paper-a4.tex` file).
[Sage](http://www.sagemath.org/) with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) installed and working.

TODO

## R

[R](http://www.r-project.org/) code embedding and evaluation in Markdown code blocks (see `sample.md` file).
[R](http://www.r-project.org/) with [knitr](http://yihui.name/knitr/) package installed and working.

TODO

## SAS

Use `sas.tex`.

TODO
