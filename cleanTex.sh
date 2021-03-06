#! /bin/bash

if [ ! -d "build" ]; then
	mkdir build
fi

FILE="$(ls *log 2>/dev/null)"

for i in $FILE; do
        echo Moving PDF: $i
        BASE="$(basename $i .log)"
        BASE+=.pdf
        mv $BASE build/ 2>/dev/null
done


mv *aux build/ 2>/dev/null
mv *log build/ 2>/dev/null
mv *synctex.gz build/ 2>/dev/null
mv *toc build/ 2>/dev/null
mv *lof build/ 2>/dev/null
mv *lot build/ 2>/dev/null
mv *out build/ 2>/dev/null
mv *bbl build/ 2>/dev/null
mv *blg build/ 2>/dev/null
mv *brf build/ 2>/dev/null
mv *dvi build/ 2>/dev/null
mv *vrb build/ 2>/dev/null
mv *snm build/ 2>/dev/null
mv *nav build/ 2>/dev/null

rm *~ 2>/dev/null


