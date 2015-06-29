# $Id: Makefile 4229 2006-06-21 22:20:33Z jjamor $

all: evaluacion.pdf

evaluacion.pdf: evaluacion.tex

	(cd figs ; sh generapdf)

	pdflatex evaluacion
	pdflatex evaluacion
	pdflatex evaluacion

clean:
	rm -f evaluacion.dvi evaluacion.ps *.snm *.out *.nav *.log *.aux *.toc *.vrb *.pdf *~
	(cd figs; rm -f *.pdf)
