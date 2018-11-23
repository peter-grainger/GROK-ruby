#!/bin/bash
mkdir -p dist/excercises
for filename in excercises/*.md; do
    echo "<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">" > dist/${filename%.*}.html
    echo "<main>" >> dist/${filename%.*}.html

    code_in_docs "$(< $filename)" >> dist/${filename%.*}.html
    echo "</main>" >> dist/${filename%.*}.html
done
mv dist/excercises/* dist
rm -r dist/excercises
cp build-assets/style.css dist