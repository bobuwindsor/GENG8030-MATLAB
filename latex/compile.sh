#!/bin/bash

# Compile LaTeX file to out folder
echo "Compiling LaTeX file..."
latexmk -pdf -outdir=./out main.tex

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful!"
    
    # Copy PDF to compiled folder
    echo "Copying PDF to compiled folder..."
    cp ./out/main.pdf ../compiled/GENG8030_Notes.pdf
    
    if [ $? -eq 0 ]; then
        echo "PDF copied successfully to ../compiled/"
    else
        echo "Error: Failed to copy PDF"
        exit 1
    fi
else
    echo "Error: Compilation failed"
    exit 1
fi

echo "Done!"
