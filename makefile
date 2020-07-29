all: maas-documentation-25.html about-maas-840.html

*.html: *.md
	cp templates/vanilla-template.html ./template.html
	xpub convert discourse tagged html maas-documentation-25.md vanilla
	mv maas-documentation-25.html maas-vanilla
	cp templates/ui-only-template.html ./template.html
	xpub convert discourse tagged html maas-documentation-25.md ui
	mv maas-documentation-25.html maas-rad-ui
	cp templates/cli-only-template.html ./template.html
	xpub convert discourse tagged html maas-documentation-25.md ui
	cp maas-documentation-25.html maas-rad-cli
	xpub push github all


