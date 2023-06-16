#!/bin/bash
#Creator: David Parra-Sandoval
#Date: 06/16/2023
#Last Modified: 06/16/2023
clear

MONTH=$(date +%B)                  ### DON'T touch/Modify
DAY=$(date +%d)                    ### DON'T touch/Modify
BACKUPLOCATION=$(cat INFO)         ### DON'T touch/Modify

mkdir $BACKUPLOCATION/$MONTH/$DAY/TXT &> /dev/null  ### This creates a directory TXT
mkdir $BACKUPLOCATION/$MONTH/$DAY/DOC &> /dev/null  ### you can modify this to your
mkdir $BACKUPLOCATION/$MONTH/$DAY/PDF &> /dev/null  ### liking. You can add more
mkdir $BACKUPLOCATION/$MONTH/$DAY/ZIP &> /dev/null  ### or delete!
mkdir $BACKUPLOCATION/$MONTH/$DAY/JPEG &> /dev/null ### If you add more directories you need to change the bottom too! Follow the pattern.
                                                    ### "*" is a wildcard; in this script it means whatever is in this directory do this..
                                                    ### for loop takes every file one by one and puts it in a variable named FILES and a case statement;multiple different choices of files, do this.


for FILES in *; do
case $FILES in
*.txt | *.TXT | *.Txt | *.txT | *.tXt)
mv $FILES $BACKUPLOCATION/$MONTH/$DAY/TXT
;;
*.doc | *.DOC | *.Doc | *.doC | *.dOc)
mv $FILES $BACKUPLOCATION/$MONTH/$DAY/DOC
;;
*.pdf | *.PDF | *.Pdf | *.pdF | *.pDf)
mv $FILES $BACKUPLOCATION/$MONTH/$DAY/PDF
;;
*.zip | *.ZIP | *.Zip | *.ziP | *.zIp)
mv $FILES $BACKUPLOCATION/$MONTH/$DAY/ZIP
;;
*.jpeg | *.JPEG | *.Jpeg | *.jpeG | *.jpg | *.gif | *.png | *.PNG | *.GIF)
mv $FILES $BACKUPLOCATION/$MONTH/$DAY/JPEG
;;
esac
done
