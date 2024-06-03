#!/bin/bash

# Assume the current directory contains the previously created directory structure

# Move "linuxman" to "tux" in the mascots directory
mv personnages/super\ heros/hommes/sans\ cape/linuxman personnages/mascottes/tux

# Rename the directory "super heros" to "comics"
mv personnages/super\ heros personnages/comics
:
# Write into the file "batman" the content "Bruce Wayne hides behind this character"
echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman

# Append to the file "batman" the content "he lives in Gotham"
echo "he lives in Gotham" >> personnages/comics/hommes/cape/batman

# Write into the file "daredevil" the content "Homer Simpson hides behind this character"
echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cape/daredevil

# Overwrite the content of the file "daredevil" with the content "daredevil is a blind comic character"
echo "daredevil is a blind comic character" > personnages/comics/hommes/sans\ cape/daredevil

# Copy the contents of the "batman" and "daredevil" files into the "mascots/mixdarbat" file
cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cape/daredevil > personnages/mascottes/mixdarbat

# Switch to root mode (assuming the script is run with sudo)
# Create a user named "fanboy"
sudo useradd fanboy

# Copy the directory "personnages" into /home/fanboy
sudo cp -r personnages /home/fanboy/characters

# Use the chown command to change the owner and group of this directory
sudo chown -R fanboy:fanboy /home/fanboy/characters

# Create a symbolic link "persofanboy" pointing to /home/fanboy/characters
ln -s /home/fanboy/characters persofanboy

# Create a symbolic link "perso_yourname" pointing to /home/yourname/characters
# Replace "yourname" with your actual username
ln -s /home/yourname/characters perso_yourname

# Save the complete tree structure of /home/fanboy/characters into a file "14.txt"
ls -lR /home/fanboy/characters > 14.txt

# Copy the contents of the file "14.txt" into the file "15.txt" by removing occurrences of the word "total"
grep -v "total" 14.txt > 15.txt

# Save the last 250 lines of your history in the file "myhistory" by removing any lines where you used the "cd" command
history | grep -v " cd " | tail -250 > myhistory

# Add the right permissions to the script file
chmod +x $0
