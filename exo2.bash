#!/bin/bash

# Define the script path
script_path="$HOME/create_personnages.sh"

# Create the create_personnages.sh script
cat << 'EOF' > "$script_path"

#!/bin/bash

# Get the current time in hours and minutes
current_time=$(date +'%H%M')

# Define the root directory where the new directories will be created
root_dir="$HOME/personnages_$current_time"

# Define the directory structure
directories=(
    "$root_dir/mascottes"
    "$root_dir/comics/femmes/cape"
    "$root_dir/comics/femmes/sans cape"
    "$root_dir/comics/hommes/cape"
    "$root_dir/comics/hommes/sans cape"
    "$root_dir/comics/femmes/cape/batgirl"
    "$root_dir/comics/femmes/cape/wonderwoman"
    "$root_dir/comics/femmes/sans cape/electra"
    "$root_dir/comics/femmes/sans cape/superwoman"
)

# Define the files to be created
files=(
    "$root_dir/mascottes/beastie"
    "$root_dir/mascottes/bibendum"
    "$root_dir/mascottes/mario"
    "$root_dir/mascottes/sonic"
    "$root_dir/comics/hommes/cape/batman"
    "$root_dir/comics/hommes/cape/superman"
    "$root_dir/comics/hommes/cape/thor"
    "$root_dir/comics/hommes/sans cape/antman"
    "$root_dir/comics/hommes/sans cape/daredevil"
    "$root_dir/comics/hommes/sans cape/tux"
    "$root_dir/comics/hommes/sans cape/spiderman"
)

# Create directories
for dir in "${directories[@]}"; do
    mkdir -m 775 -p "$dir"
done

# Create files
for file in "${files[@]}"; do
    touch "$file"
    chmod 664 "$file"
done
EOF

# Make the script executable
chmod +x "$script_path"

# Add the script to cron
(crontab -l 2>/dev/null; echo "*/5 * * * * $script_path") | crontab -
