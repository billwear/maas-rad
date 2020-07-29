maas-documentation-25.html: maas-documentation-25.md
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

about-maas-840.html: about-maas-840.md
	cp templates/vanilla-template.html ./template.html
	xpub convert discourse tagged html about-maas-840.md vanilla
	mv about-maas-840.html maas-vanilla
	cp templates/ui-only-template.html ./template.html
	xpub convert discourse tagged html about-maas-840.md ui
	mv about-maas-840.html maas-rad-ui
	cp templates/cli-only-template.html ./template.html
	xpub convert discourse tagged html about-maas-840.md ui
	cp about-maas-840.html maas-rad-cli
	xpub push github all
