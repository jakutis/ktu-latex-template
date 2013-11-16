MARKDOWN_TO_LATEX := md-sample.tex

all: paper.pdf

pdf: references.bib *.tex mya4.sty mya5.sty
	xelatex -shell-escape paper.tex

md-%.tex: %.md
	echo 'library(knitr);knit("$<", output="latexktu-temp.md")' | R --no-save --quiet
	cat latexktu-temp.md | kramdown --output=latex > $@
	rm latexktu-temp.md

paper.pdf: references.bib paper.tex sas.tex $(MARKDOWN_TO_LATEX) mya4.sty mya5.sty
	xelatex -shell-escape paper
	biber paper
	sage paper.sagetex.sage
	xelatex -shell-escape paper
	xelatex -shell-escape paper

references.bib: references
	./refs-bib references $(shell cat refdir) > references.bib

.PHONY:
clean:
	rm -rf paper.pdf paper.run.xml paper.bcf paper.aux paper.log paper.toc paper.bbl paper.blg paper.lot paper.lof paper.out paper.pyg references.bib texput.log paper.sagetex.py paper.sagetex.sage paper.sagetex.scmd paper.sagetex.sout sage-plots-for-paper.tex $(MARKDOWN_TO_LATEX)

.PHONY:
init:
	./initialize
