all: vimium-cheat-sheet-a4.pdf vimium-cheat-sheet-letter.pdf

clean:
	bash -c 'rm -f vimium-cheat-sheet-{a4,letter}.{aux,log,tex,pdf}'

vimium-cheat-sheet-a4.tex: sheet.tex
	cp sheet.tex vimium-cheat-sheet-a4.tex

vimium-cheat-sheet-letter.tex: sheet.tex
	sed -e 's/a4paper,//' < sheet.tex > vimium-cheat-sheet-letter.tex

vimium-cheat-sheet-a4.pdf: vimium-cheat-sheet-a4.tex
	pdflatex vimium-cheat-sheet-a4.tex

vimium-cheat-sheet-letter.pdf: vimium-cheat-sheet-letter.tex
	pdflatex vimium-cheat-sheet-letter.tex
