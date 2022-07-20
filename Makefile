LATEX=pdflatex
BIBTEX=biber
REMOVE=del # Windows

MAIN=presentation

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