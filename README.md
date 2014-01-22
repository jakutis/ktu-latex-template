# LatexKTU - latex template for Kaunas University of Technology

This is a latex project template with these features:

* A4, A5 and presentation formats
* [Markdown](http://daringfireball.net/projects/markdown/) syntax (see `sample.md` file)
* [Sage Math](http://www.sagemath.org/) code embedding and evaluation with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) commands (see `paper-a4.tex` file)
* [R](http://www.r-project.org/) code embedding and evaluation in Markdown code blocks (see `sample.md` file)

## Requirements

* [TeX Live](http://www.tug.org/texlive/)
* [kramdown](http://kramdown.gettalong.org/) installation with the `kramdown-mylatex.rb` file copied to `<kramdown_directory>/converter/latex.rb`
  * if kramdown is installed with `gem install kramdown`, then `<kramdown_directory>` is something like `/home/username/.rvm/gems/ruby-2.0.0-p195/gems/kramdown-1.0.2/lib/kramdown`
  * if kramdown is installed on Ubuntu with `apt-get install ruby-kramdown`, then `<kramdown_directory>` is something like `/usr/lib/ruby/vendor_ruby/kramdown`
* [Sage](http://www.sagemath.org/) with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) installed and working
* [R](http://www.r-project.org/) with [knitr](http://yihui.name/knitr/) package installed and working

## Installation

0. Copy all files to a new directory: execute terminal commands `cd <path_to_LATEXKTU>;mkdir ~/new_project;cp * ~/new_project`.
0. Initialize: execute terminal commands `cd ~/new_project;make init`, it will ask you:
   * type of compiled pdf - currently A4, A5 and presentation
   * relative or absolute path to directory with BibTeX files (.bib filename extension) - this path written to `refdir` file
0. Open `Makefile` in your text editor and edit `MARKDOWN_TO_LATEX` variable - it contains a list of `md-<name>.tex` files that will be created from your own `<name>.md` files.
0. Open `paper.tex` in your text editor and review it, especially the `\input{md-sample}` line (remember the `MARKDOWN_TO_LATEX` variable in the previous step).

## Usage

To compile a pdf, just run `make`.

## Citing

When editing `paper.tex` and needing to cite something you have to open file `references` in your text editor and add a new line `<my_bibtex_file>`, for example `1988 - Brian W. Kernighan, Dennis M. Ritchie - The C Programming Language`.
Each line in `references` file is a BibTeX file name without extension.
All BibTeX files are taken from a single directory (you can find its path in `refdir` text file).
When compiling a pdf, `references` file is parsed and a single `references.bib` file is generated from the listed BibTeX files.
To cite in LaTeX you just use the usual `\cite{citationID}` commands.
To cite in Markdown you just use the bold mode `**citationID**`.
The `citationID` is the same cite id that is in your concrete BibTeX .bib file.
