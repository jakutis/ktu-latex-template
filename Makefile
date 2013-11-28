MARKDOWN_TO_LATEX := md-sample.tex

.PHONY:
all: paper.pdf

.PHONY:
force:
	./refs-bib references $(shell cat refdir) > references.bib
	xelatex -shell-escape paper
	biber paper
	sage paper.sagetex.sage
	xelatex -shell-escape paper
	xelatex -shell-escape paper

.PHONY:
pdf:
	xelatex -shell-escape paper.tex

.PHONY:
clean:
	rm -rf paper.pdf paper.run.xml paper.bcf paper.aux paper.log paper.toc paper.bbl paper.blg paper.lot paper.lof paper.out paper.pyg references.bib texput.log paper.sagetex.py paper.sagetex.sage paper.sagetex.scmd paper.sagetex.sout sage-plots-for-paper.tex figure $(MARKDOWN_TO_LATEX)

.PHONY:
init:
	./initialize

md-%.tex: %.md
	echo 'library(knitr);knit("$<", output="latexktu-temp.md")' | R --no-save --quiet
	cat latexktu-temp.md | sed -s 's/```/~~~ /' | kramdown --output=latex > $@
	rm latexktu-temp.md

paper.pdf: paper.tex sas.tex $(MARKDOWN_TO_LATEX)
	make force
