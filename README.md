# LatexKTU - latex template for Kaunas University of Technology

This is a latex project template with these features:

* A4, A5 and presentation formats
* [Markdown](http://daringfireball.net/projects/markdown/) syntax
* [Sage Math](http://www.sagemath.org/) code embedding and evaluation with [SageTeX](http://www.sagemath.org/doc/tutorial/sagetex.html) commands
* [R](http://www.r-project.org/) code embedding and evaluation in Markdown code blocks

## Installation (Linux)

Just run:

    make init

Then edit these lines in Makefile to suit you:

    OBJECTS_MD := md-sample.tex
    OBJECTS_R := r-md-rtest.tex

You will probably just want to clear them:

    OBJECTS_MD :=
    OBJECTS_R :=

After clearing these, you will have to also remove `\input{md-sample}` and `\input{r-md-rtest}` from the paper.tex file.

## Dependencies

    * TeX Live
