LATEX=pdflatex
BIBTEX=biber
COPY=copy # Windows
REMOVE=del # Windows

MAIN=main
REFERENCE=reference.bib

all: $(REFERENCE)
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

$(REFERENCE):
	$(COPY) $(MULTI_REFERENCE_DIR)\$(REFERENCE)

clean:
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