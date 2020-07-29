all: maas-documentation-25.html about-maas-840.html

%.html: %.md
	cp templates/vanilla-template.html ./template.html
	xpub convert discourse tagged html $< vanilla
	mv $@ maas-vanilla
	cp templates/ui-only-template.html ./template.html
	xpub convert discourse tagged html $< ui
	mv $@ maas-rad-ui
	cp templates/cli-only-template.html ./template.html
	xpub convert discourse tagged html $< ui
	cp $@  maas-rad-cli
	xpub push github all


