# LatexKTU - latex template for Kaunas University of Technology

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
