DOCNAME=main

PDFLATEX="pdflatex -interaction=nonstopmode -syntex=1"

.PHONY: $(DOCNAME).pdf all clean

all: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex
				latexmk -pdf -pdflatex=$(PDFLATEX) -use-make $(DOCNAME).tex

watch: $(DOCNAME).tex
				latexmk -pvc -pdf -pdflatex=$(PDFLATEX) -use-make $(DOCNAME).tex

clean:
				latexmk -CA
