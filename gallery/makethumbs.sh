#!/bin/bash

for f in `ls *.png`; do
	b=`basename $f .png`
	convert $f -geometry 200x $b-thumb.jpg
done

