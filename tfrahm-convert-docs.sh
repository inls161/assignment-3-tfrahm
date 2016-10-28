#!/bin/bash

# Ask for OUTPUT
echo -e "Hello. Which \e[31m.md\e[0m file would you like to convert?"

# Declare input argument as a variable
read OUTPUT

if [[ $OUTPUT == *".md" ]]; then  
    FILE=${OUTPUT%.*};
 else
    FILE=$OUTPUT;
fi
  
# Say "Converting to HTML..."
echo -e "Converting to \e[36mHTML\e[0m..."

# Convert markdown to HTML
pandoc -o $FILE.html $FILE.md

# Say "Converting to DOCX..."
echo -e "Converting to \e[36mDOCX\e[0m..."

# Convert markdown to DOCX
pandoc -o $FILE.docx $FILE.md

# Say "Converting to ODT..."
echo -e "Converting to \e[36mODT\e[0m..."

# Convert markdown to ODT
pandoc -o $FILE.odt $FILE.md

#Say "Converting to PDF..."
echo -e "Converting to \e[36mPDF\e[0m..."

# Convert markdown to PDF
pandoc -o $FILE.pdf $FILE.md

# Make the command line read "Converted $FILENAME to HTML, DOCX, ODT, PDF
echo -e "Converted \e[31m$FILE.md\e[0m to \e[36mHTML\e[0m, \e[36mDOCX\e[0m, \e[36mODT\e[0m, and \e[36mPDF\e[0m."

echo "Have a nice day!"



# Notes to self:

# add if statement? -if ANSWER.md else ANSWER
# add function??
# templates?