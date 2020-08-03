#!/bin/bash
xpub pull discourse -c 5 1 1900
sed -i '/^## Navigation/,$d' maas-documentation-25.md
sed -i "s/\(^\!\[.*\)/<!-- vanilla\n\1\n vanilla -->\n\n<!-- ui\n\1\n ui -->\n\n<!-- cli\n### ADD SUITABLE CLI EXAMPLE OR PRINTOUT ###\n cli -->/g" *.md
