
pull:
	cd originals
	xpub pull discourse 25 25
	clean_navigation.sh
	xpub pull discourse -c 5 -b not-rad 700 2156
	cd ..
