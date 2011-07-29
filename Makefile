target = tesi

DEPS = chapters/cap01.tex

all: ${target}.pdf

${target}.pdf: ${target}.tex bib/bibliography.bib $(DEPS)
	pdflatex ${target}.tex
	
	bibtex ${target}
	
	pdflatex ${target}.tex
	pdflatex ${target}.tex

clean:
	rm -rf ${target}.{aux,dvi,log,out,toc,lof,nav,snm,vrb,pdf}

view: ${target}.pdf
	xpdf ${target}.pdf
