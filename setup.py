import os

# Prompt the user for input
hostname = input("Enter your hostname: ")
dataPath = input("Enter your dataPath: ")
configPath = input("Enter your configPath: ")
projectname = input("Enter your project name for Helm: ")

# Read the content from values.yaml.bak
with open("values.yaml.bak", "r") as f:
    content = f.read()

# Replace placeholders with user input
content = content.replace("###hostname###", hostname)
content = content.replace("###dataPath###", dataPath)
content = content.replace("###configPath###", configPath)

# Write the new content to config.yaml
with open("config.yaml", "w") as f:
    f.write(content)

# Run helm install
os.system(f"helm install {projectname} -f config.yaml")
