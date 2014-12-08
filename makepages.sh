#!/bin/bash

for f in `find . -name '*.content'` ; do
    f_base=`basename $f .content`
		f_dir=`dirname $f`

		echo "writing "$f_dir/$f_base.html
    cat header.inc >  $f_dir/$f_base.html
    cat $f         >> $f_dir/$f_base.html
    cat footer.inc >> $f_dir/$f_base.html
done
