#!/bin/bash

#1: using sed, write a command that removes all lines containing the word "zoo"
# (upper and lowercase) and prints the output to a new file called panda_zoos.txt

sed "/zoo/Id" /home/slampman/Desktop/pandas.tsv >> /home/slampman/Desktop/panda_zoos.txt


#2 Using awk, linux, and grep, write a command that sorts pandas by sex and prints their name in column 1, age in column 2,
# and sex in column 3 in a new file called sorted_pandas.txt.

grep 'female' /home/slampman/Desktop/pandas.tsv | grep 'male' /home/slampman/Desktop/pandas.tsv | awk '{print $1,$4,$2}' >> /home/slampman/Desktop/sorted_pandas.txt


#3 Using grep and linux commands, print an alphabetically sorted list of zoo/reserve names to a new file called
# panda_zoos_A2Z.txt.

grep -v '^location' /home/slampman/Desktop/pandas.tsv | cut -f5 | sort >> /home/slampman/Desktop/panda_zoosA2Z.txt

		#sort alphabetizes things, cut extracts the column, -v '^location' removes the header row


#4 Using sed, write a command that replaces all instances of "male" with "M" and "female" with "F" and prints the results to a
# new file called panda_m_f.tx

sed -e 's/female/F/g' -e 's/male/M/g' /home/slampman/Desktop/pandas.tsv >> /home/slampman/Desktop/panda_m_f.txt

	#-e strings multiple edits together, s is for subsitution, g is for replacing all occurences
	#have to replace female before male since male will be detected in female


#5 Using grep, write a command that counts how many female pandas were born in October (no need to print to new file)

grep -c "October" /home/slampman/Desktop/pandas.tsv | grep -cv "female"


#6 Using grep, print the pandas.txt file (to a new file called panda_names.txt) with line numbers appended as prefixes (e.g. "1
# Name....." on the first line).

cut -f1 /home/slampman/Desktop/pandas.tsv | grep -n '' | awk -F: '{print $1, $2}' >> /home/slampman/Desktop/panda_names.txt

	#cut to get name column, grep -n numbers rows, -F: gets rid of colons since -n adds colons apparantly


#7 Using sed, write a command that prints lines 1, 6, and 17 to a new file called lines_1_6_17.txt

sed -n '1p; 6p; 17p' /home/slampman/Desktop/pandas.tsv >> lines_1_6_17.txt

	# ; to separate lines, p seems to be the command to print that line


#8 Using grep, print lines to a new file that contain the letter "x" (capital or lowercases) and print this to a new file called
# x_lines.txt.

grep -i 'x' /home/slampman/Desktop/pandas.tsv >> x_lines.txt

	# -i ignores case


#9 Using awk and linux commands, find the location of pandas with unique locations where no other pandas are currently kept,
# and print these to a new file called unique_places.txt

awk -F' ' '{print $5}' /home/slampman/Desktop/pandas.tsv | sort | uniq -u >> unique_places.txt

	# -F helps command to know where columns end/begin, ' ' ' can specifcy tab separated values since I can't do backslash-t on my keyboard, uniq -u finds unique values, sort is needed for uniq


#10 Using awk and linux commands, sort panda ages from youngest to oldest and print to a new file, only the pandas age 10
# and younger with their names in column 1 and ages in column 2. Name the file young_pandas.txt

awk -F' ' '$4 <= 10 {print $1, $4}' /home/slampman/Desktop/pandas.tsv | sort -k2,2n >> young_pandas.txt

	# $4 <= is for ages 10 and below in the age column, prints name and age column. sort -k2,2n orders numerically the 2nd column (which is now age) from youngest to oldest