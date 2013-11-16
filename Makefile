OBJECTS_MD := md-sample.tex
OBJECTS_R := r-md-rtest.tex

all: paper.pdf

pdf: references.bib *.tex mya4.sty
	xelatex -shell-escape paper.tex

md-%.tex: %.md
	cat $< | kramdown --output=latex > $@

md-%.Rnw: %.md
	cat $< | kramdown --output=latex > $@

r-md-%.tex: md-%.Rnw
	echo 'library(knitr);knit("$<", output="$@")' | R --no-save --quiet

paper.pdf: references.bib paper.tex sas.tex $(OBJECTS_MD) $(OBJECTS_R) mya4.sty
	xelatex -shell-escape paper
	biber paper
	sage paper.sagetex.sage
	xelatex -shell-escape paper
	xelatex -shell-escape paper

references.bib: references
	./refs-bib references $(shell cat refdir) > references.bib

.PHONY:
clean:
	rm -rf paper.pdf paper.run.xml paper.bcf paper.aux paper.log paper.toc paper.bbl paper.blg paper.lot paper.lof paper.out paper.pyg references.bib texput.log paper.sagetex.py paper.sagetex.sage paper.sagetex.scmd paper.sagetex.sout sage-plots-for-paper.tex md-*.tex r-md-*.tex

.PHONY:
init:
	./init
