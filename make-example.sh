#!/bin/sh -ex

rm -rf target/example
mkdir -p target/example

xmllint \
--xinclude \
--noout \
--schema src/main/xsd/com/io7m/oakleaf/oakleaf-1.xsd \
src/main/example/article.xml

saxon \
-ea \
-xi \
-warnings:fatal \
-xsl:target/classes/com/io7m/oakleaf/oakleaf-1.xsl \
-s:src/main/example/article.xml \
oakleafBranding=$(realpath src/main/example/brand.xml)

xmllint \
--noout \
--schema target/classes/com/io7m/oakleaf/xhtml1-strict.xsd \
index.xhtml
mv index.xhtml target/example

cp target/classes/com/io7m/oakleaf/*.css  target/example/
cp src/main/example/example.css           target/example/document.css
cp src/main/example/woods.jpg             target/example/
