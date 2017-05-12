%.png: %.tex
	lualatex $<
	convert -density 300 $*.pdf $@
