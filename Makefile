
all: clean cleanpdf pdf bib pdf pdf

name=egpaper_for_review

pdf: *.tex
	pdflatex $(name).tex

bib: *.tex
	pdflatex $(name).tex
	bibtex $(name) 
	pdflatex $(name).tex
	pdflatex $(name).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.brf *.tcp *.toc *.gz
	rm -rf auto sections/auto

cleanpdf:
	rm -f *.pdf

