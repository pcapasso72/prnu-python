#!/bin/bash
# renamer <suffix> <files>

prefix=$1
shift
for f in "$@"
do
  extension=${f##*.}
  if [ -z $extension ]; then
    mv "$f" "$f$suffix"
  else
    mv "$f" "$prefix${f%.$extension}.$extension"
  fi
done
