.PHONY: %.html file

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

finale: %.html
	xpub push github all


