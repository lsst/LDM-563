#
#

DOC=LDM-563
tex=	LDM-563.tex body.tex 
SRCS=$(wildcard LDM-*.tex)

OBJS=$(SRCS:.tex=.pdf)

all: $(tex)
	latexmk -bibtex -pdf -f $(DOC).tex

clean :
	latexmk -c 
	rm *.pdf



acronyms.tex :$(tex) myacronyms.tex
	acronyms.csh  $(tex)
