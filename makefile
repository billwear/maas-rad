TARGET_DEPS := *.md


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

finale: $(TARGET_DEPS)
	xpub push github



