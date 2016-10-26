#!/bin/bash

# Ask for INPUT-FILENAME
echo -e "Hello. Which \e[31m.md\e[0m file would you like to convert?"

# Declare input argument as a variable
read FILENAME

# Say "Converting to HTML..."
echo -e "Converting to \e[36mHTML\e[0m..."

# Convert markdown to HTML
pandoc -o $FILENAME.html $FILENAME.md

# Say "Converting to DOCX..."
echo -e "Converting to \e[36mDOCX\e[0m..."

# Convert markdown to DOCX
pandoc -o $FILENAME.docx $FILENAME.md

# Say "Converting to ODT..."
echo -e "Converting to \e[36mODT\e[0m..."

# Convert markdown to ODT
pandoc -o $FILENAME.odt $FILENAME.md

#Say "Converting to PDF..."
echo -e "Converting to \e[36mPDF\e[0m..."

# Convert markdown to PDF
pandoc -o $FILENAME.pdf $FILENAME.md

# Make the command line read "Converted $FILENAME to HTML, DOCX, ODT, PDF
echo -e "Converted \e[31m$FILENAME.md\e[0m to \e[36mHTML\e[0m, \e[36mDOCX\e[0m, \e[36mODT\e[0m, and \e[36mPDF\e[0m."

echo "Have a nice day!"



# Notes to self:

# add if statement? -if ANSWER.md else ANSWER
# add function??
# templates?
# smartquotes?