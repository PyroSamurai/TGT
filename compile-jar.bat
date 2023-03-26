@ECHO OFF
ATTRIB -r TIE.jar
DEL TIE.jar
CD ..
jar cf TIE\src\TIE.jar TIE\src\*.java TIE\docs TIE\LICENSE TIE\VERSION "TIE\README.md"
CD TIE\src
javac *.java
jar ufe TIE.jar Main *.class
CD ..
DEL src\*.class
MOVE src\TIE.jar TIE.jar
ATTRIB +r TIE.jar
