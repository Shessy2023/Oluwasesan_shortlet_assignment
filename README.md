# Oluwasesan_shortlet_assignment

##  Prerequisites

### to successfully complete this Cloud Engineering Take-Home Assignment, This is the steps below:


#### - A Kubernetes cluster
#### - An GCP CLI provider account
#### - Terraform installed
#### - Prometheus, Grafana, and Alertmanager installed
#### - Docker installed
#### - Kubectl


## Step 1: Set Up the Project Environment
### -Initialize a GitHub Repository:
### -Create a new GitHub repository to store all your project files.
### Clone the repository to your local machine.
### Set Up a Project Structure:
### Create directories for organizing your files:

### Step 2 API Implementation:
### In the api/ directory, create a simple API that returns the current time in JSON format. Here's an example in Python using Flask.

![environment](/snapshots/GCP_cli.png)

![environment](/snapshots/GCP_cli_login.png)


### Step 3: Containerize the API
### Create a Dockerfile:
### In the root directory, create a Dockerfile to containerize the API after creating the simple time app for this case I used Python:flash push the docker file to the GCP registry

![python](/snapshots/python.png)

![python](/snapshots/python_env.png)

![location](/snapshots/setting_location.png)

![api](/snapshots/time_api.png)

![api](/snapshots/time_api_display.png)

![docker](/snapshots/success_docker.png)


### Step 4: Set Up Infrastructure with Terraform
#### Initialize Terraform Configuration:
#### In the terraform/ directory, create Terraform files to define your GCP infrastructure.
#### Main Configuration (main.tf):
#### Include the GKE cluster, VPC, subnets, and firewall rules.
#### Define Kubernetes resources like namespaces, deployments, services, and ingress.



![terraform](/snapshots/terraform_init.png)

![environment](/snapshots/terraform_validate_plan.png)

![environment](/snapshots/terraform_apply.png)


### Step 5: Create a ci-cd-pipeline and then push my code to github repository