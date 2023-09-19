#!/bin/bash
#set -x # Set Debugging active

# Prompt the user for input
read -p "Enter your hostname: " hostname
read -p "Enter your dataPath: " dataPath
read -p "Enter your configPath: " configPath
read -p "Enter your project name for Helm: " projectname

# Create config.yaml from values.yaml.bak
sed -e "s/###hostname###/$hostname/" \
    -e "s/###dataPath###/$dataPath/" \
    -e "s/###configPath###/$configPath/" \
    values.yaml.bak > values.yaml

# Run helm install
helm install $projectname -f values.yaml .