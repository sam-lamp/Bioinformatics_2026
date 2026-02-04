#!/bin/bash

#Add your commands below!

name="Sam"
greeting="Why, hello there"

echo "$greeting, my name is $name."
echo "This script is helping me learn bash."

#make folder called "bioinformatics" on desktop
mkdir /home/slampman/Desktop/bioinformatics

#make folder within that folder called "bash_scripts"
mkdir /home/slampman/Desktop/bioinformatics/bash_scripts

#move the bash_template.txt file (downloaded from ELearning) into that sub-folder
mv /home/slampman/Desktop/bash_template.txt /home/slampman/Desktop/bioinformatics/bash_scripts/bash_template.txt

#rename that file from .txt to .sh
mv /home/slampman/Desktop/bioinformatics/bash_scripts/bash_template.txt /home/slampman/Desktop/bioinformatics/bash_scripts/bash_template.sh 

echo "All done!"
