#!/bin/sh -ex

rm -rf out
mkdir -p out

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
mv index.xhtml out

cp src/main/css/com/io7m/oakleaf/reset.css   out/
cp src/main/example/example.css              out/document.css
cp src/main/css/com/io7m/oakleaf/oakleaf.css out/
cp src/main/example/woods.jpg                out/
