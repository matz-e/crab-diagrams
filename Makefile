%.png: %.tex preamble.tex
	lualatex $<
	convert -density 300 -flatten $*.pdf $@
