# $Id: Makefile 4229 2006-06-21 22:20:33Z jjamor $

all: comunidad.pdf evaluacion.pdf

comunidad.pdf: comunidad.tex

	(cd figs ; sh generapdf)

	pdflatex comunidad
	pdflatex comunidad
	pdflatex comunidad

evaluacion.pdf: evaluacion.tex

	(cd figs ; sh generapdf)

	pdflatex evaluacion
	pdflatex evaluacion
	pdflatex evaluacion

clean:
	rm -f comunidad.dvi comunidad.ps evaluacion.dvi evaluacion.ps *.snm *.out *.nav *.log *.aux *.toc *.vrb *.pdf *~
	(cd figs; rm -f *.pdf)
