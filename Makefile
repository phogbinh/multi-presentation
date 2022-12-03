# Unix
LATEX=pdflatex
BIBTEX=biber
INKSCAPE=/Applications/Inkscape.app/Contents/MacOS/inkscape
COPY=cp
REMOVE=rm

MAIN=main
REFERENCE=reference.bib

all: *.eps ${REFERENCE}
	${LATEX} ${MAIN}
	${BIBTEX} ${MAIN}
	${LATEX} ${MAIN}
	${LATEX} ${MAIN}

*.eps:
	for FILEPATH in ${MULTI_FIGURE_DIR}*.svg; do FILENAME=$${FILEPATH##*/}; ${INKSCAPE} $${FILEPATH} -o $${FILENAME%.svg}.eps; done
	${COPY} ${MULTI_FIGURE_DIR}*.eps .

${REFERENCE}:
	${COPY} ${MULTI_REFERENCE_DIR}${REFERENCE} .

clean:
	${REMOVE} *.eps
	${REMOVE} ${REFERENCE}
	${REMOVE} *.aux
	${REMOVE} *.bbl
	${REMOVE} *.bcf
	${REMOVE} *.blg
	${REMOVE} *.log
	${REMOVE} *.nav
	${REMOVE} *.out
	${REMOVE} *.pdf
	${REMOVE} *.run.xml
	${REMOVE} *.snm
	${REMOVE} *.toc
