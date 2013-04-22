OBJECTS := md-sample.tex

init:
	bash -c 'if [ -e "paper.tex" ]; then exit 1; fi;A=$$(dialog --radiolist "Choose the type" 100 100 50 a4 A4 a4 a5 A5 a5 presentation Presentation presentation 3>&1 1>&2 2>&3);echo "Selected $$A";mv "paper-$$A.tex" "paper.tex";rm paper-*;if ! [ "$$A" = "presentation" ]; then rm ktu_back_bright.png ktu_back_dark.png ktu_front.png; fi;if ! [ "$$A" = "a4" ]; then rm mya4.sty; fi;if ! [ "$$A" = "a5" ]; then rm mya5.sty; fi'
	bash -c 'dialog --inputbox "Enter directory with references" 100 100 2>./refdir'

all: paper.pdf

pdf: references.bib *.tex mya4.sty
	xelatex -shell-escape paper.tex

md-%.tex: %.md
	cat $< | kramdown --output=latex > $@

paper.pdf: references.bib paper.tex sas.tex $(OBJECTS) mya4.sty
	xelatex -shell-escape paper
	biber paper
	sage paper.sagetex.sage
	xelatex -shell-escape paper
	xelatex -shell-escape paper

references.bib: references
	./refs-bib references $(cat refdir) > references.bib

clean:
	rm -rf paper.pdf paper.run.xml paper.bcf paper.aux paper.log paper.toc paper.bbl paper.blg paper.lot paper.lof paper.out paper.pyg references.bib texput.log paper.sagetex.py paper.sagetex.sage paper.sagetex.scmd paper.sagetex.sout sage-plots-for-paper.tex md-*.tex
