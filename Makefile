all: paper.pdf

pdf: references.bib *.tex mya4.sty
	xelatex -shell-escape paper.tex

paper.pdf: references.bib *.tex mya4.sty
	xelatex -shell-escape paper
	biber paper
	sage paper.sagetex.sage
	xelatex -shell-escape paper
	xelatex -shell-escape paper

references.bib: references
	./refs-bib references . > references.bib

clean:
	rm -rf paper.pdf paper.run.xml paper.bcf paper.aux paper.log paper.toc paper.bbl paper.blg paper.lot paper.lof paper.out paper.pyg references.bib texput.log paper.sagetex.py paper.sagetex.sage paper.sagetex.scmd paper.sagetex.sout sage-plots-for-paper.tex
