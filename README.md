# Project Name

This repository contains Helm chart configurations for deploying [Your Project]. The `setup.sh` script allows you to easily configure and deploy the chart.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
    - [Clone the Repository](#clone-the-repository)
    - [Run the Setup Script](#run-the-setup-script)
    - [Helm Install](#helm-install)
- [Troubleshooting](#troubleshooting)

## Prerequisites

- Helm v3.x
- Kubernetes cluster
- Bash shell

## Usage

### Clone the Repository

```bash
git clone https://github.com/yourusername/yourrepository.git
cd yourrepository
````

### Run the Setup Script
First, make the script executable:

```bash
chmod +x setup.sh
```

Then, run the script:
```bash
./setup.sh
```

The script will prompt you for the following information:

* `hostname`: The hostname for your application.
* `dataPath`: The path where data will be stored.
* `configPath`: The path where the configuration file will be stored.
* `projectname`: The name of the Helm project.
* 
These values will be used to populate the config.yaml file, which will be used for the Helm installation.


## Helm Install

The script will automatically run `helm install` with the provided project name and `config.yaml` file.

This will deploy your Helm chart with the configurations you've specified.

## Troubleshooting

If you encounter any issues, please check the `config.yaml` file to ensure all values are correctly set. You can manually edit this file and rerun `helm upgrade` if needed.

