#!/bin/bash
# renamer2 <files>

shift
for f in "$@"
do
  extension=${f##*.}
  if [ -z $extension ]; then
    mv "$f" "${f,,}"
  else
    mv "$f" "${f%.$extension}.${extension,,}"
  fi
done
