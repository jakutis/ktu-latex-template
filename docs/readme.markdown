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
  * [Biblatex, hyphenation and other language features](#biblatex-hyphenation-and-other-language-features)
  * [Including source code and other text files](#including-source-code-and-other-text-files)
  * [A5 format](#a5-format)
  * [Markdown and R](#markdown-and-r)
  * [Sage Math](#sage-math)
  * [SAS](#sas)

# Quick start

1. Ensure that you have the entire [TeX Live](https://www.tug.org/texlive/) software installed (for Windows download [this installer](http://mirror.ctan.org/systems/texlive/tlnet/install-tl.exe), for Linux - search and install `texlive-full` package).
1. Copy ktua4.sty and ktulogo.eps files to your project directory.
1. Write your `.tex` document with `\usepackage{ktua4}` and the commands described below - see minimal example below.
1. Compile it using `xelatex` with `-shell-escape` flag (if using TeXworks - you need to open `Edit -> Preferences -> Typesetting -> Processing Tools -> XeLaTeX -> Edit...`, press `+` and enter `-shell-escape` and move it with an up arrow so that it is on top - before `$synctexoption`) or `luatex` with `--shell-escape` flag.

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

Or use `\printbibliography{}` if you use Biblatex (see [Biblatex](#biblatex-hyphenation-and-other-language-features)):

    \begin{ktuliterature}
        \printbibliography{}
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
Lists are inserted only when at least one element of the list type is in the document.
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

Wraps an algorithm, inserts a caption and creates a reference id.

    \begin{ktualgo}{referenceid}{Example ABC algorithm}
    \Procedure{ABC}{$a,b,c,n$}
        \For{$d$ nuo $0$ iki $b$}
            \State{$z_0(d) \gets 0$}\Comment{inicializacija}
        \EndFor{}
    \EndProcedure{}
    \end{ktualgo}

For the help about the commands to describe the algorithm (e.g. `\Procedure`, `\For`, `\State`, etc.) please refer to the documentation of [package "algorithms"](http://www.ctan.org/pkg/algorithms).

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

## Biblatex, hyphenation and other language features

Biblatex enables you to automatically generate list of bibliography from a BibTeX file and `\cite` commands in your tex file (for more similar commands read [section 3.7 Citation Commands](http://mirrors.ctan.org/macros/latex/contrib/biblatex/doc/biblatex.pdf)).

0. Use the [polyglossia](http://ctan.org/pkg/polyglossia) package by adding these lines *before* `\usepackage{ktua4}`:

    ```
    \usepackage{polyglossia}
    \setdefaultlanguage{lithuanian}
    ```

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
        \printbibliography{}
    \end{ktuliterature}
    ```

6. Compile `yourmaintexfile.tex` that contains `\cite{gisslen2011professional}` - run `XeLaTeX`, then `biber` (read the following instructions) and then `XeLaTex` again.

If it does not work for you, it is probably because older versions of [biblatex](http://ctan.org/pkg/biblatex) are broken.
Please download [a newer version](http://downloads.sourceforge.net/project/biblatex/biblatex-2.8/biblatex-2.8a.tds.tgz) and extract it into `texmf` directory (`C:/Users/username/texmf` on Windows, `/home/username/texmf` on Linux) so that file `texmf/tex/latex/biblatex/biblatex.sty` exists.

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

1. Replace `\usepackage{ktua4}` with `\usepackage{ktua5}` (make sure you have [ktua5.sty](https://github.com/jakutis/ktu-latex-template/blob/master/ktua5.sty) near your main `.tex` file).
2. Replace `\documentclass[12pt, a4paper, onecolumn, titlepage, oneside, intlimits, fleqn]{report}` with `\documentclass[10pt, a5paper, onecolumn, titlepage, twoside, intlimits, fleqn]{report}`.

## Markdown and R

This only works on Linux or other Unix-like environments (Apple OS X, Cygwin, FreeBSD, etc.).

This feature let's you write in [Markdown](http://daringfireball.net/projects/markdown/) syntax and have it included and rendered in your LaTeX document.
It also dynamically evaluates embedded [R](http://www.r-project.org/) code.
See [sample.md](https://github.com/jakutis/ktu-latex-template/blob/master/sample.md) file.

In the instructions below, we assume your main `.tex` file is `paper.tex`.

1. Install [R](http://www.r-project.org/) with [knitr](http://yihui.name/knitr/) package.
2. Install [kramdown](http://kramdown.gettalong.org/) with the `kramdown-mylatex.rb` file copied to `<kramdown_directory>/converter/latex.rb`:
  * if kramdown is installed with `gem install kramdown`, then `<kramdown_directory>` is something like `/home/username/.rvm/gems/ruby-2.0.0-p195/gems/kramdown-1.0.2/lib/kramdown`
  * if kramdown is installed on Ubuntu with `apt-get install ruby-kramdown`, then `<kramdown_directory>` is something like `/usr/lib/ruby/vendor_ruby/kramdown`
3. Open `Makefile` in your text editor and edit `MARKDOWN_TO_LATEX` variable to contain a space-separated list of all `md-<name>.tex` file names for each `<name>.md` file you want to have.
For example if you have `\input{md-sample}` in `paper.tex` file and you edit `sample.md` file, you must have `MARKDOWN_TO_LATEX := md-sample.tex` line in `Makefile`.
4. Adjust `paper.pdf` and `paper.tex` filenames in `Makefile` to suit your real names and then run `make paper.pdf` in command line.

To cite in Markdown you just use the bold mode `**citationID**`.
The `citationID` is the same cite id that is in your concrete BibTeX .bib file.

To add R code, use:

    ```{r}
    1+1
    .4-.7+.3 # what? it is not zero!
    ```

For more syntax documentation look at [knitr minimal example](https://github.com/yihui/knitr-examples/blob/master/001-minimal.Rmd) and [kramdown quick reference](http://kramdown.gettalong.org/quickref.html).

## Sage Math

This feature let's you embed [Sage Math](http://www.sagemath.org/) code and have the results automatically evaluated and included your document.

1. Install [Sage Math](http://www.sagemath.org/).
1. Copy `SAGE_ROOT/local/share/texmf/tex/generic/sagetex` directory (`SAGE_ROOT` is your Sage installation directory) to `texmf/tex/latex` directory (texmf is `C:/Users/username/texmf` on Windows, `/home/username/texmf` on Linux) so that file `texmf/tex/latex/sagetex/sagetex.sty` exists.
1. Add `\usepackage{sagetex}` before `\begin{document}`.
1. Include something like this between `\begin{document}` and `\end{document}`:

    ```
    \begin{sageblock}
        f(x) = exp(x) * sin(2*x)
    \end{sageblock}

    Here's a plot of $f$ from $-1$ to $1$:

    \sageplot[width=15cm]{plot(f, -1, 1)}
    ```

1. Run `xelatex paper.tex` then `sage paper.tex` and then again `xelatex paper.tex`.
1. For more syntax documentation look at [SageTex tutorial](http://www.sagemath.org/doc/tutorial/sagetex.html).

## SAS

1. Save [sas.tex](https://github.com/jakutis/ktu-latex-template/blob/master/sas.tex) near `ktua4.sty` and add `\input{sas}` before `\begin{document}`.
1. Execute SAS program, for example:

    ```
    data knots;
      infile '../data1of3/knots.dat';
      input knot $ 4 rope 7 direction 10 weight 13-15;
    run;
    
    ods tagsets.tablesonlylatex file='body.tex' (notop nobot);
    proc means data = knots;
      var weight;
    run;
    
    data knots;
      set knots;
      weight_e = weight - 188.9166667;
    run;
    
    filename diag 'a1.wmf';
    goptions gsfname=diag device=wmf;
    title 'standartizuotu svoriu nuokrypiu grafikas';
    proc univariate data = knots normal;
      var weight_e;
      probplot / normal(mu=est sigma=est);
      ods exclude TestsForLocation Quantiles Moments BasicMeasures ExtremeObs;
    run;
    ods tagsets.tablesonlylatex close;
    ```

1. Copy relevant source code from the generated `body.tex` file to your main `.tex` file between `\begin{document}` and `\end{document}`.
1. Convert generated images (`a1.wmf`) to pdf with [wmf2svg](https://jakut.is/git/DOTFILES/tree/bin/wmf2svg) and [svg2pdf](http://cgit.freedesktop.org/~cworth/svg2pdf/tree/svg2pdf.c) (or just use `device=jpg` in SAS and just copy jpegs) and include them in your main `.tex` file as figures.
