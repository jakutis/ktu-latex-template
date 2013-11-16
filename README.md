# LatexKTU - latex template for Kaunas University of Technology

This is a latex project template with these features:

* A4, A5 and presentation formats
* [Markdown](http://daringfireball.net/projects/markdown/) syntax
* [Sage Math](http://www.sagemath.org/) code embedding and evaluation with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) commands
* [R](http://www.r-project.org/) code embedding and evaluation in Markdown code blocks

## Requirements

* [TeX Live](http://www.tug.org/texlive/)
* [kramdown](http://kramdown.gettalong.org/) installation with the `kramdown-mylatex.rb` file copied to `<kramdown_directory>/converter/latex.rb`
  * if kramdown is installed with `gem install kramdown`, then `<kramdown_directory>` is something like `/home/username/.rvm/gems/ruby-2.0.0-p195/gems/kramdown-1.0.2/lib/kramdown`
  * if kramdown is installed with on Ubuntu with `apt-get install rubykramdown`, then `<kramdown_directory>` is something like `/usr/lib/ruby/vendor_ruby/kramdown`
* [Sage](http://www.sagemath.org/) with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) installed and working
* [R](http://www.r-project.org/) with [knitr](http://yihui.name/knitr/) package installed and working

## Installation (Linux)

0. Copy all files to a new directory: execute terminal commands `cd <path_to_LATEXKTU>;mkdir ~/new_project;cp * ~/new_project`.
0. Initialize: execute terminal commands `cd ~/new_project;make init`.
0. Open `Makefile` in your text editor and edit `MARKDOWN_TO_LATEX` variable - it contains a list of `md-<name>.tex` files that will be created from your own `<name>.md` files.
0. Open `paper.tex` in your text editor and review it, especially the `\input{md-sample}` line (remember the `MARKDOWN_TO_LATEX` variable in the previous step).
