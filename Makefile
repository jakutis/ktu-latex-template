MARKDOWN_TO_LATEX :=

md-%.tex: %.md
	echo 'library(knitr);knit("$<", output="latexktu-temp.md")' | R --no-save --quiet
	cat latexktu-temp.md | sed -s 's/```/~~~ /' | kramdown --output=latex > $@
	rm latexktu-temp.md

paper.pdf: paper.tex $(MARKDOWN_TO_LATEX)
	xelatex -shell-escape paper.tex
