#!/bin/bash
#set -x # Set Debugging active

# Prompt the user for input
read -p "Enter your hostname: " hostname
read -p "Enter your dataPath: " dataPath
read -p "Enter your configPath: " configPath
read -p "Enter your project name for Helm: " projectname

# Escape special characters in variables
escapedHostname=$(printf '%s\n' "$hostname" | sed -e 's/[\/&]/\\&/g')
escapedDataPath=$(printf '%s\n' "$dataPath" | sed -e 's/[\/&]/\\&/g')
escapedConfigPath=$(printf '%s\n' "$configPath" | sed -e 's/[\/&]/\\&/g')

# Create config.yaml from values.yaml.bak
sed -e "s/###hostname###/$escapedHostname/" \
    -e "s/###dataPath###/$escapedDataPath/" \
    -e "s/###configPath###/$escapedConfigPath/" \
    values.yaml.bak > values.yaml

# Run helm install
helm install $projectname -f values.yaml .