# Makefile
MAIN_FILE = main
BIB_FILE = references.bib

$(MAIN_FILE).pdf: $(MAIN_FILE).tex $(BIB_FILE)
	pdflatex $(MAIN_FILE)
	bibtex $(MAIN_FILE)
	pdflatex $(MAIN_FILE)
	pdflatex $(MAIN_FILE)

.PHONY: clean clean-all
clean:
	-rm *.aux
	-rm *.log
	-rm *.toc
	-rm *.bbl
	-rm *.blg
	-rm *.out
	-rm *.bbl

clean-all: clean
	-rm *.pdf
