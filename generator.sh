#! /bin/sh

echo "title"
read TITLE

echo "page number"
read NUMBER

echo '<svg xmlns="http://www.w3.org/2000/svg" width="128" height="40"><linearGradient id="b" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/><stop offset="1" stop-opacity=".1"/></linearGradient><clipPath id="a"><rect width="128" height="40" rx="3" fill="#fff"/></clipPath><g clip-path="url(#a)"><path fill="#555" d="M0 0h37v20H0z"/><path fill="#007ec6" d="M37 0h27v20H37z"/><path fill="url(#b)" d="M0 0h64v20H0z"/></g><g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11"><text x="37" y="30" fill="#010101" fill-opacity=".3">'$TITLE'</text><text x="37" y="28">'$TITLE'</text><text x="99" y="30" fill="#010101" fill-opacity=".3">'$NUMBER'</text><text x="99" y="28">'$NUMBER'</text></g></svg>' > file_tmp.svg

#convert -background none "$file" "`basename "./Templates/flat-blue" .svg`".png
convert -background none "file_tmp.svg" "`basename "flat-bsadasdlue" .svg`".png
