all: whitepaper clean

WPNAME=Metalpoint-Whitepaper-
WPFILE=$(WPNAME)$(shell date +'%Y-%b')


whitepaper: whitepaper.md
	pandoc --pdf-engine=xelatex --from markdown -o draft/$(WPFILE).pdf whitepaper.md

clean:
	rm -f *.html *.pdf *.tuc *.aux *.out *.log