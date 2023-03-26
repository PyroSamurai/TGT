#!/bin/bash
rm -f TIE.jar
cd ..
jar cf TIE/src/TIE.jar TIE/src/*.java TIE/docs TIE/LICENSE TIE/VERSION TIE/README.md
cd TIE/src
javac *.java
jar ufe TIE.jar Main *.class
cd ..
rm src/*.class
mv src/TIE.jar TIE.jar
chmod 705 TIE.jar
