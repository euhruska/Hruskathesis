#!/bin/bash
clear

file='thesis_main'
bibfile='thesis_main'

pdflatex $file'.tex'
bibtex $bibfile 
pdflatex $file'.tex'
pdflatex $file'.tex'

#'.bib'


#rm $bibfile'.bbl' $file'.blg'
# $file'.idx'  $file'.lof' $file'.lot' $file'.toc'

echo 'ok'
rm .pdf  q.pdf
rm *aux *lot *idx *lof *bbl *blg *toc *out
rm $file'.log' #$file'.aux' 
echo 'ok'
 "/c/Program Files (x86)/Adobe/Acrobat Reader DC/Reader/AcroRd32.exe" $file.pdf
