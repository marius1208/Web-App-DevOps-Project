# Web-App-DevOps-Project
I was presented with a simple Flask application and asked to apply DevOps principles in order to improve the application scalability,efficiency and flexibility. The main scope of the project is to showcase my ability to implement these tools at industry standards even though they should normally not be used for such a basic application. 

## Table of Contents

- [Features](#features)
- [Technology Stack](#technology-stack)

## Features

-The basic application allows efficiently managing and tracking orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones. 

-Docker is used to containerize the application. Firstly, an image of the application is created which serves as a template for creating Docker containers. The containers are instances of this image that can be run as isolated envoirements on a host system.

-I am also using Kubernetes to simplify the deployment and management of the containerized application, and enableing to build scalable, resilient, and cloud-native applications more efficiently. To achieve this, I chose to implement infrastructure as code(IaC) using Terraform. 

-In order to automate the processes, I configured a Coninous Integration/Continous Deployment (CI/CD) pipeline using Azure DevOps. The pipeline automates the containerization and deployment process, thus every time a new feature is added to the appication, it will trigger an automatic build of an updated Docker image ,its release to Docker Hub, and the deployment of the updated containers to the Kubernetes cluster.

-I have also used monitoring and alert tools provided by Azure DevOps which assure the effective monitoring and alerting for the AKS cluster while also ensuring that the cluster runs smoothly and potential issues are adressed quickly.

-Additionly, no sensible data is hardcoded into the application. Some sensible data is stored in an Azure Vaut Key and retrieved as neccesary such as server_name,secret_uname, secret_database_name, and secret_server_password used in the main application. Other data such as client_id, client_secret, subscription_id, tenant_id, and public_address are stored loccaly. This also means these variables would need to be given values to run the project succesfully.

### Prerequisites

For the application to succesfully run, you need to install the following packages:

- flask (version 2.2.2)
- pyodbc (version 4.0.39)
- SQLAlchemy (version 2.0.21)
- werkzeug (version 2.2.3)
- azure-keyvault-secrets (version 4.7.0)
- azure.identity (version 1.15.0)

### Flask application Usage

To run the application, you simply need to run the `app.py` script in this repository. Once the application starts you should be able to access it locally at `http://127.0.0.1:5000`. Here you will be meet with the following two pages:

1. **Order List Page:** Navigate to the "Order List" page to view all existing orders. Use the pagination controls to navigate between pages.

2. **Add New Order Page:** Click on the "Add New Order" tab to access the order form. Complete all required fields and ensure that your entries meet the specified criteria.

## Technology Stack

- **Backend:**

Flask is used to build the backend of the application, handling routing, data processing, and interactions with the database.

Terraform is used for managing infrastructure as code. It simplifies the process of building, changing, and versioning infrastructure configurations.

Azure DevOps Pipelines helps to compile, build, and deploy the code.

- **Frontend:** 

The user interface is designed using HTML, CSS, and JavaScript to ensure a smooth and intuitive user experience.

- **Database:** 

The application employs an Azure SQL Database as its database system to store order-related data.

