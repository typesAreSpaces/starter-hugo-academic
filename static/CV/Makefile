SRC=$(wildcard *.tex)
PAPER=main.tex
OUTPUT=$(PAPER:.tex=.pdf)
FILES=$(wildcard ./*.tex) $(wildcard ./sections/*.tex) 

all: cv.pdf

cv.pdf: main.pdf
	cp main.pdf cv.pdf

main.pdf: $(FILES)
	latex main
	#bibtex main.aux
	bibtex publications.aux
	latex main
	pdflatex main

.PHONY: clean

clean:
	@rubber --clean $(PAPER)
	@rm -rf main.bbl
	@rm -rf main.blg
	@rm -rf main.pdf

watch:
	@while true; do inotifywait $(SRC); sleep 0.01; make all; done

