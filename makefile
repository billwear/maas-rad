%.html: %.md
	cp templates/vanilla-template.html ./template.html
	xpub convert dc2html -t vanilla $<
	scp $@ stormrider.io:/var/www/html/maas-rad/maas-vanilla
	mv $@ maas-vanilla
	cp templates/ui-only-template.html ./template.html
	xpub convert dc2html -t ui $<
	scp $@ stormrider.io:/var/www/html/maas-rad/maas-rad-ui
	mv $@ maas-rad-ui
	cp templates/cli-only-template.html ./template.html
	xpub convert dc2html -t cli $<
	scp $@ stormrider.io:/var/www/html/maas-rad/maas-rad-cli
	cp $@  maas-rad-cli

finale: maas-documentation-25.html about-maas-840.html  give-me-an-example-of-maas-1314.html
	xpub push github



