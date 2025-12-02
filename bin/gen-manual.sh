#!/bin/bash

if [ -f ../arcOS-Field-Manual.html ]; then
	rm ../arcOS-Field-Manual.html
fi

cat <<EOF > ../arcOS-Field-Manual.html
<head>
<style>
h1,h2 {
	padding: 5px 10px;
	background-color: #000000;
	color: #ffffff;
}

h3 {
	padding: 5px 10px;
	background-color: #416399;
	color: #ffffff;
}

blockquote {
	padding: 5px 10px;
	background-color: #e0e0e0;
}
</style>
</head>

EOF


for md in ../markdown/*.md; do
	markdown --html4tags $md >> ../arcOS-Field-Manual.html
done
