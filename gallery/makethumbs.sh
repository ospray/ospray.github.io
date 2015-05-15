#!/bin/bash

for f in `ls *.png`; do
	b=`basename $f .png`
	convert $f -resample 72 -resize 200x $b-thumb.jpg
done

