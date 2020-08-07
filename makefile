TARGET_DEPS := maas-documentation-25.html
TARGET_DEPS += api-authentication-742.html
TARGET_DEPS += contact-us-743.html
TARGET_DEPS += language-details-contributing-to-maas-docs-745.html
TARGET_DEPS += writing-guide-747.html
TARGET_DEPS += block-devices-749.html
TARGET_DEPS += installation-and-configuration-checklist-750.html
TARGET_DEPS += select-and-import-images-751.html
TARGET_DEPS += local-image-mirror-752.html
TARGET_DEPS += vmware-images-753.html
TARGET_DEPS += images-754.html
TARGET_DEPS += install-with-lxd-757.html
TARGET_DEPS += network-discovery-758.html
TARGET_DEPS += managing-dhcp-759.html
TARGET_DEPS += ip-ranges-760.html
TARGET_DEPS += ipv6-addressing-761.html
TARGET_DEPS += ntp-services-762.html
TARGET_DEPS += proxy-763.html
TARGET_DEPS += configuring-tls-encryption-764.html
TARGET_DEPS += managing-stp-765.html
TARGET_DEPS += subnet-management-766.html
TARGET_DEPS += networking-768.html
TARGET_DEPS += partitions-770.html
TARGET_DEPS += rack-controllers-771.html
TARGET_DEPS += region-controllers-772.html
TARGET_DEPS += maas-installation-from-a-snap-773.html
TARGET_DEPS += disk-erasure-774.html
TARGET_DEPS += storage-775.html
TARGET_DEPS += upgrade-2-3-to-2-4-from-ubuntu-16-04-777.html
TARGET_DEPS += upgrade-from-1-9-to-2-x-778.html
TARGET_DEPS += upgrading-maas-779.html
TARGET_DEPS += vmware-vmfs-datastores-780.html
TARGET_DEPS += configuration-journey-781.html
TARGET_DEPS += maas-communication-783.html
TARGET_DEPS += zone-examples-784.html
TARGET_DEPS += concepts-and-terms-785.html
TARGET_DEPS += introduction-to-controllers-786.html
TARGET_DEPS += explore-maas-787.html
TARGET_DEPS += whats-new-in-2-6-788.html
TARGET_DEPS += maas-requirements-789.html
TARGET_DEPS += user-accounts-790.html
TARGET_DEPS += audit-event-logs-791.html
TARGET_DEPS += backup-792.html
TARGET_DEPS += cli-advanced-tasks-793.html
TARGET_DEPS += common-cli-tasks-794.html
TARGET_DEPS += cli-composable-hardware-795.html
TARGET_DEPS += cli-dhcp-snippet-management-796.html
TARGET_DEPS += cli-image-management-797.html
TARGET_DEPS += cli-interface-management-798.html
TARGET_DEPS += cli-kernel-management-799.html
TARGET_DEPS += cli-resource-pool-management-800.html
TARGET_DEPS += cli-tag-management-801.html
TARGET_DEPS += maas-cli-802.html
TARGET_DEPS += postgresql-ha-hot-standby-803.html
TARGET_DEPS += high-availability-804.html
TARGET_DEPS += creating-and-deleting-vms-806.html
TARGET_DEPS += python-api-client-810.html
TARGET_DEPS += prometheus-metrics-813.html
TARGET_DEPS += package-repositories-814.html
TARGET_DEPS += interactive-search-819.html
TARGET_DEPS += availability-zones-820.html
TARGET_DEPS += add-machines-821.html
TARGET_DEPS += commission-machines-822.html
TARGET_DEPS += custom-machine-setup-824.html
TARGET_DEPS += deploy-machines-825.html
TARGET_DEPS += hardware-testing-826.html
TARGET_DEPS += kernel-boot-options-827.html
TARGET_DEPS += ubuntu-kernels-828.html
TARGET_DEPS += introduction-to-machines-829.html
TARGET_DEPS += power-management-830.html
TARGET_DEPS += resource-pools-831.html
TARGET_DEPS += cli-commissioning-and-hardware-testing-scripts-832.html
TARGET_DEPS += commissioning-and-hardware-testing-scripts-833.html
TARGET_DEPS += maas-tags-834.html
TARGET_DEPS += historical-release-notes-835.html
TARGET_DEPS += maas-2-6-release-notes-836.html
TARGET_DEPS += troubleshooting-837.html
TARGET_DEPS += getting-help-838.html
TARGET_DEPS += about-maas-840.html
TARGET_DEPS += maas-image-builder-1112.html
TARGET_DEPS += network-testing-1267.html
TARGET_DEPS += whats-new-in-maas-2-6-1305.html
TARGET_DEPS += whats-new-in-maas-2-7-1306.html
TARGET_DEPS += give-me-an-example-of-maas-1314.html
TARGET_DEPS += hardening-your-maas-installation-1381.html
TARGET_DEPS += maas-logging-1468.html
TARGET_DEPS += commissioning-logs-1478.html
TARGET_DEPS += tips-tricks-and-traps-1506.html
TARGET_DEPS += introduction-to-vm-hosting-1524.html
TARGET_DEPS += vm-host-storage-pools-1525.html
TARGET_DEPS += vm-host-networking-1526.html
TARGET_DEPS += adding-a-vm-host-1549.html
TARGET_DEPS += creating-a-custom-ubuntu-image-1652.html
TARGET_DEPS += whats-new-in-maas-2-8-1655.html

%.html: %.md
	cp templates/vanilla-template.html ./template.html
	xpub convert dc2html -t vanilla $<
	cp $@ maas-vanilla
	mv $@ maas-offline
	cp templates/ui-only-template.html ./template.html
	xpub convert dc2html -t ui $<
	mv $@ maas-rad-ui
	cp templates/cli-only-template.html ./template.html
	xpub convert dc2html -t cli $<
	cp $@  maas-rad-cli

finale: $(TARGET_DEPS)
	xpub push github
	cd /var/www/html/maas-rad
	xpub pull github

pull:
	xpub pull discourse -c 5 -b not-rad 25 25
	xpub pull discourse -c 5 -b not-rad 742 742
	xpub pull discourse -c 5 -b not-rad 743 743
	xpub pull discourse -c 5 -b not-rad 745 745
	xpub pull discourse -c 5 -b not-rad 747 747
	xpub pull discourse -c 5 -b not-rad 749 749
	xpub pull discourse -c 5 -b not-rad 750 750
	xpub pull discourse -c 5 -b not-rad 751 751
	xpub pull discourse -c 5 -b not-rad 752 752
	xpub pull discourse -c 5 -b not-rad 753 753
	xpub pull discourse -c 5 -b not-rad 754 754
	xpub pull discourse -c 5 -b not-rad 757 757
	xpub pull discourse -c 5 -b not-rad 758 758
	xpub pull discourse -c 5 -b not-rad 759 759
	xpub pull discourse -c 5 -b not-rad 760 760
	xpub pull discourse -c 5 -b not-rad 761 761
	xpub pull discourse -c 5 -b not-rad 762 762
	xpub pull discourse -c 5 -b not-rad 763 763
	xpub pull discourse -c 5 -b not-rad 764 764
	xpub pull discourse -c 5 -b not-rad 765 765
	xpub pull discourse -c 5 -b not-rad 766 766
	xpub pull discourse -c 5 -b not-rad 768 768
	xpub pull discourse -c 5 -b not-rad 770 770
	xpub pull discourse -c 5 -b not-rad 771 771
	xpub pull discourse -c 5 -b not-rad 772 772
	xpub pull discourse -c 5 -b not-rad 773 773
	xpub pull discourse -c 5 -b not-rad 774 774
	xpub pull discourse -c 5 -b not-rad 775 775
	xpub pull discourse -c 5 -b not-rad 777 777
	xpub pull discourse -c 5 -b not-rad 778 778
	xpub pull discourse -c 5 -b not-rad 779 779
	xpub pull discourse -c 5 -b not-rad 780 780
	xpub pull discourse -c 5 -b not-rad 781 781
	xpub pull discourse -c 5 -b not-rad 783 783
	xpub pull discourse -c 5 -b not-rad 784 784
	xpub pull discourse -c 5 -b not-rad 785 785
	xpub pull discourse -c 5 -b not-rad 786 786
	xpub pull discourse -c 5 -b not-rad 787 787
	xpub pull discourse -c 5 -b not-rad 788 788
	xpub pull discourse -c 5 -b not-rad 789 789
	xpub pull discourse -c 5 -b not-rad 790 790
	xpub pull discourse -c 5 -b not-rad 791 791
	xpub pull discourse -c 5 -b not-rad 792 792
	xpub pull discourse -c 5 -b not-rad 793 793
	xpub pull discourse -c 5 -b not-rad 794 794
	xpub pull discourse -c 5 -b not-rad 795 795
	xpub pull discourse -c 5 -b not-rad 796 796
	xpub pull discourse -c 5 -b not-rad 797 797
	xpub pull discourse -c 5 -b not-rad 798 798
	xpub pull discourse -c 5 -b not-rad 799 799
	xpub pull discourse -c 5 -b not-rad 800 800
	xpub pull discourse -c 5 -b not-rad 801 801
	xpub pull discourse -c 5 -b not-rad 802 802
	xpub pull discourse -c 5 -b not-rad 803 803
	xpub pull discourse -c 5 -b not-rad 804 804
	xpub pull discourse -c 5 -b not-rad 806 806
	xpub pull discourse -c 5 -b not-rad 810 810
	xpub pull discourse -c 5 -b not-rad 813 813
	xpub pull discourse -c 5 -b not-rad 814 814
	xpub pull discourse -c 5 -b not-rad 819 819
	xpub pull discourse -c 5 -b not-rad 820 820
	xpub pull discourse -c 5 -b not-rad 821 821
	xpub pull discourse -c 5 -b not-rad 822 822
	xpub pull discourse -c 5 -b not-rad 824 824
	xpub pull discourse -c 5 -b not-rad 825 825
	xpub pull discourse -c 5 -b not-rad 826 826
	xpub pull discourse -c 5 -b not-rad 827 827
	xpub pull discourse -c 5 -b not-rad 828 828
	xpub pull discourse -c 5 -b not-rad 829 829
	xpub pull discourse -c 5 -b not-rad 830 830
	xpub pull discourse -c 5 -b not-rad 831 831
	xpub pull discourse -c 5 -b not-rad 832 832
	xpub pull discourse -c 5 -b not-rad 833 833
	xpub pull discourse -c 5 -b not-rad 834 834
	xpub pull discourse -c 5 -b not-rad 835 835
	xpub pull discourse -c 5 -b not-rad 836 836
	xpub pull discourse -c 5 -b not-rad 837 837
	xpub pull discourse -c 5 -b not-rad 838 838
	xpub pull discourse -c 5 -b not-rad 840 840
	xpub pull discourse -c 5 -b not-rad 1112 1112
	xpub pull discourse -c 5 -b not-rad 1267 1267
	xpub pull discourse -c 5 -b not-rad 1305 1305
	xpub pull discourse -c 5 -b not-rad 1306 1306
	xpub pull discourse -c 5 -b not-rad 1314 1314
	xpub pull discourse -c 5 -b not-rad 1381 1381
	xpub pull discourse -c 5 -b not-rad 1468 1468
	xpub pull discourse -c 5 -b not-rad 1478 1478
	xpub pull discourse -c 5 -b not-rad 1506 1506
	xpub pull discourse -c 5 -b not-rad 1524 1524
	xpub pull discourse -c 5 -b not-rad 1525 1525
	xpub pull discourse -c 5 -b not-rad 1526 1526
	xpub pull discourse -c 5 -b not-rad 1549 1549
	xpub pull discourse -c 5 -b not-rad 1652 1652
	xpub pull discourse -c 5 -b not-rad 1655 1655
	./clean-navigation.sh
