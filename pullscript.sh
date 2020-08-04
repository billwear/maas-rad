#!/bin/bash
xpub pull discourse -c 5 1 1900
rm creating-and-deleting-machines-816.md
rm add-a-kvm-host-805.md
rm accessing-maas-782.md
rm add-a-vm-host-1523.md
rm building-the-docs-744.md
rm configure-networking-767.md
rm documentation-index-839.md
rm installation-755.md
rm introduction-to-kvms-808.md
rm kvm-host-networking-807.md
rm kvm-host-storage-pools-809.md
rm logging-776.md
rm maas-security-811.md
rm pods-823.md
rm working-with-git-and-github-746.md
rm manage-composable-machines-812.md
sed -i '/^## Navigation/,$d' maas-documentation-25.md
sed -i "s/\(^\!\[.*\)/<!-- vanilla\n\1\n vanilla -->\n\n<!-- ui\n\1\n ui -->\n\n<!-- cli\n### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###\n cli -->/g" *.md
