TARGET_DEPS := originals/maas-documentation-25.md

all: $(TARGET_DEPS)
.PHONY: all

originals/maas-documentation-25.md: maas-documentation.md
	chmod 644 originals/*
	cp maas-documentation.md maas-documentation-25.md
	cp maas-documentation.md maas-documentation-cli-2030.md
	cp maas-documentation.md maas-documentation-ui-2100.md
	cp maas-documentation.md maas-documentation-v2-7-2168.md
	./clean-navigation.sh
	xpub push discourse -t vanilla maas-documentation-25.md
	xpub push discourse -t cli maas-documentation-cli-2030.md
	xpub push discourse -t ui maas-documentation-ui-2100.md
	xpub push discourse -t 2.7 maas-documentation-v2-7-2168.md
	xpub pull discourse 25 25
	xpub pull discourse 2100 2100
	xpub pull discourse 2030 2030
	xpub pull discourse 2168 2168
	cp -p maas-documentation-25.md originals
	cp -p maas-documentation-ui-2100.md originals
	cp -p maas-documentation-cli-2030.md originals
	cp -p maas-documentation-v2-7-2168.md originals
	rm maas-documentation-25.md
	rm maas-documentation-ui-2100.md
	rm maas-documentation-cli-2030.md
	rm maas-documentation-v2-7-2168.md
	chmod 444 originals/*

originals/api-authentication-742.md: api-authentication-742.md
	chmod 644 originals/*
	cp api-authentication.md api-authentication-742.md
	xpub push discourse api-authentication-742.md
	xpub pull discourse 742 742
	cp -p api-authentication-742.md originals
	rm api-authentication-742.md
	chmod 444 originals/*

originals/contact-us-743.md: contact-us.md
	chmod 644 originals/*
	cp contact-us.md contact-us-743.md
	xpub push discourse contact-us-743.md
	xpub pull discourse 743 743
	cp -p contact-us-743.md originals
	rm contact-us-743.md
	chmod 444 originals/*

originals/language-details-contributing-to-maas-docs-745.md: lang-det-contrib-to-maas-docs.md
	chmod 644 originals/*
	cp lang-det-contrib-to-maas-docs.md language-details-contributing-to-maas-docs-745.md
	xpub push discourse language-details-contributing-to-maas-docs-745.md
	xpub pull discourse 745 745
	cp -p language-details-contributing-to-maas-docs-745.md originals
	rm language-details-contributing-to-maas-docs-745.md
	chmod 444 originals/*

originals/writing-guide-747.md: writing-guide.md
	chmod 644 originals/*
	cp writing-guide.md writing-guide-747.md
	xpub push discourse writing-guide-747.md
	xpub pull discourse 747 747
	cp -p writing-guide-747.md originals
	rm writing-guide-747.md
	chmod 444 originals/*

# COMMENTED PENDING CONFIRMATION OF EQUIV UI METHODS OR NOT
#originals/block-devices-749.md: writing-guide.md
	# chmod 644 originals/*
	# cp block-devices.md block-devices-749.md
	# xpub push discourse block-devices-749.md
	# xpub pull discourse 749 749
	# cp -p block-devices-749.md originals
	# rm block-devices-749.md
	# chmod 444 originals/*

pull:
	chmod 644 originals/*.md
	xpub pull discourse 25 25
	xpub pull discourse 742 743
	xpub pull discourse 745 745
	xpub pull discourse 747 747
	cp -p *.md originals
	chmod 444 originals/*.md
# 	xpub pull discourse 742 743
# 	xpub pull discourse 745 745
# 	xpub pull discourse 747 747
# 	xpub pull discourse 749 754
# 	xpub pull discourse 756 766
# 	xpub pull discourse 768 768
# 	xpub pull discourse 770 775
# 	xpub pull discourse 777 781
# 	xpub pull discourse 783 804
# 	xpub pull discourse 806 806
# 	xpub pull discourse 810 810
# 	xpub pull discourse 813 814
# 	xpub pull discourse 819 822
# 	xpub pull discourse 824 838
# 	xpub pull discourse 840 840
# 	xpub pull discourse 1112 1112
# 	xpub pull discourse 1267 1267
# 	xpub pull discourse 1305 1306
# 	xpub pull discourse 1308 1308
# 	xpub pull discourse 1314 1314
# 	xpub pull discourse 1381 1381
# 	xpub pull discourse 1468 1468
# 	xpub pull discourse 1478 1478
# 	xpub pull discourse 1506 1506
# 	xpub pull discourse 1524 1526
# 	xpub pull discourse 1549 1549
# 	xpub pull discourse 1652 1652
# 	xpub pull discourse 1655 1655
# 	xpub pull discourse 1753 1753
# 	xpub pull discourse 1992 2156
# 	cp -p *.md originals
# 	chmod 444 originals/*.md
