all: slides notes clean
#all:  handout

projname = tutorial
targetname = $(projname)_$(shell basename $(CURDIR))
compile = pdflatex
projnameS = $(projname).slides
projnameH = $(projname).handout
projnameA = $(projname).notes

slides: $(projname).slides.tex $(projname).tex
	$(compile) $(projname).slides.tex
#	bibtex $(projname).slides
	$(compile) --interaction=batchmode  $(projname).slides.tex
#	$(compile) --interaction=batchmode   $(projname).slides.tex
	mv $(projname).slides.pdf $(targetname).slides.pdf 

handout: $(projname).handout.tex $(projname).tex
	$(compile) $(projname).handout.tex
	mv $(projname).handout.pdf $(targetname).handout.pdf 

# Repeat compilation for the references to show up correctly
notes: $(projname).notes.tex $(projname).tex
	$(compile) $(projname).notes.tex
#	bibtex $(projname).notes
	$(compile) --interaction=batchmode  $(projname).notes.tex
#	$(compile) --interaction=batchmode  $(projname).notes.tex
	mv $(projname).notes.pdf $(targetname).notes.pdf 

clean: cleans cleanh cleana

cleans:
	rm -f $(projnameS).aux $(projnameS).bbl $(projnameS).log $(projnameS).out $(projnameS).toc $(projnameS).lof $(projnameS).glo $(projnameS).glsdefs $(projnameS).idx $(projnameS).ilg $(projnameS).ind $(projnameS).loa $(projnameS).lot $(projnameS).loe $(projnameS).snm $(projnameS).nav

cleanh:
	rm -f $(projnameH).aux $(projnameH).bbl $(projnameH).log $(projnameH).out $(projnameH).toc $(projnameH).lof $(projnameH).glo $(projnameH).glsdefs $(projnameH).idx $(projnameH).ilg $(projnameH).ind $(projnameH).loa $(projnameH).lot $(projnameH).loe $(projnameH).snm $(projnameH).nav

cleana:	
	rm -f $(projnameA).aux $(projnameA).bbl $(projnameA).log $(projnameA).out $(projnameA).toc $(projnameA).lof $(projnameA).glo $(projnameA).glsdefs $(projnameA).idx $(projnameA).ilg $(projnameA).ind $(projnameA).loa $(projnameA).lot $(projnameA).loe $(projnameA).snm $(projnameA).nav

