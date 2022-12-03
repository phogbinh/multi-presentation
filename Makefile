# Windows
LATEX=pdflatex
BIBTEX=biber
INKSCAPE=inkscape
COPY=copy
REMOVE=del

MAIN=main
REFERENCE=reference.bib

all: *.eps $(REFERENCE)
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

*.eps:
	for %%f in ($(MULTI_FIGURE_DIR)\*.svg) do $(INKSCAPE) %%f -o .\%%~nf.eps
	$(COPY) $(MULTI_FIGURE_DIR)\*.eps .

$(REFERENCE):
	$(COPY) $(MULTI_REFERENCE_DIR)\$(REFERENCE)

clean:
	$(REMOVE) *.eps
	$(REMOVE) $(REFERENCE)
	$(REMOVE) *.aux
	$(REMOVE) *.bbl
	$(REMOVE) *.bcf
	$(REMOVE) *.blg
	$(REMOVE) *.log
	$(REMOVE) *.nav
	$(REMOVE) *.out
	$(REMOVE) *.pdf
	$(REMOVE) *.run.xml
	$(REMOVE) *.snm
	$(REMOVE) *.toc