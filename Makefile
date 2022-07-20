LATEX=pdflatex
BIBTEX=biber
REMOVE=del # Windows

MAIN=main

all:
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean:
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