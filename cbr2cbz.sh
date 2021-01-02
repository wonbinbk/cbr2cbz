#!/bin/bash
# Convert CBR to CBZ for Koreader
for f in *.cbr; do
	echo $f
	ark -ba "$f"
	FOLDER=$(ls -d */)
	echo $FOLDER
	f="$(basename -s .cbr $f)"
	ark -t "$f.cbz" "$FOLDER"
	rm -r "$FOLDER"
done
mkdir CBZ
mv *.cbz CBZ/
