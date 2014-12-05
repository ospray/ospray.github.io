#!/bin/bash

for f in `find . -name '*.content'` ; do
    f_base=`basename $f .content`

    cat header.inc >  $f_base.html
    cat $f         >> $f_base.html
    cat footer.inc >> $f_base.html
done
