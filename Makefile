
all: clean cleanpdf pdf bib pdf pdf

name=paper_draft

pdf: *.tex
	pdflatex $(name).tex

bib: *.tex
	pdflatex $(name).tex
	bibtex $(name) 
	pdflatex $(name).tex
	pdflatex $(name).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.brf *.tcp *.toc
	rm -rf auto sections/auto

cleanpdf:
	rm -f *.pdf

