
all: clean pdf 


pdf: *.tex
	pdflatex pgm1.tex
	pdflatex pgm2.tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.brf *.tcp *.toc *.gz *.dvi *.ps
	rm -rf auto sections/auto

