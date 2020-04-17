#!/bin/bash

for f in `ls *.jpg`; do
	b=`basename $f .jpg`
	convert $f -resample 72 -resize 300x thumbnails/$b-thumb.jpg
done

for f in `ls *.png`; do
	b=`basename $f .png`
	convert $f -resample 72 -resize 300x thumbnails/$b-thumb.jpg
done

