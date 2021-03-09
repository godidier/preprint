docname = samplepaper

build: *.tex
	pdflatex $(docname).tex

rebuild: *.bib
	pdflatex $(docname).tex
	bibtex $(docname).aux
	pdflatex $(docname).tex
	pdflatex $(docname).tex

clean:
	rm *.aux *.log *.bbl *.blg

default:
	build