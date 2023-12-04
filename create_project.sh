#!/bin/bash

# Check if folder name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <folder_name> [base_path]"
    exit 1
fi

# Get folder name from command line argument
folder_name=$1

# Set default base path or use the provided one
base_path=${2:-"C:/YOUR_FOLDER_PATH"}

# Check if the folder already exists
if [ -d "$base_path/$folder_name" ]; then
    echo "Error: Folder '$folder_name' already exists. Please choose a different folder name."
    exit 1
fi

# Create the folder within the specified path
mkdir -p "$base_path/$folder_name"
cd "$base_path/$folder_name"

# Create a Python virtual environment
virtualenv env

# Activate the virtual environment
source env/Scripts/activate

# Ask for Python packages to install
read -p "Enter Python packages to install (space-separated): " packages
pip install $packages

# Open VS Code
code .

# Display instructions to deactivate virtual environment
echo "To deactivate the virtual environment, run: deactivate"
