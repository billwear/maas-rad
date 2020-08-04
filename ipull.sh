#!/bin/bash
grep http *.md > http-list
grep .png http-list > png-list-mixed
grep -v src png-list-mixed > png-list
sed -i 's/^.*(//g' png-list
sed -i 's/)[[:blank:]]*$//g' png-list
grep src png-list-mixed > img-src-list
sed -i 's/^.*src=\"//g' img-src-list
sed -i 's/.png\".*$/.png/g' img-src-list
grep .jpeg http-list > jpeg-list
sed -i 's/^.*(//g' jpeg-list
sed -i 's/)[[:blank:]]*$//g' jpeg-list
cat jpeg-list png-list img-src-list > image-list
sed -i 's/^/wget /g' image-list
sort -u image-list > image-pull.sh
cp image-pull.sh images
cd images
chmod 777 image-pull.sh
./image-pull.sh
