# Deployment Steps

This project demonstrates how to configure Network Security Groups (NSGs) and Application Security Groups (ASGs) in Microsoft Azure.

## Step 1: Create a Resource Group

* Sign in to the Azure Portal.
* Create a new Resource Group named **AzureNSGRG**.

## Step 2: Create a Virtual Network

* Create a Virtual Network named **AzureVNet**.
* Address Space: **10.0.0.0/16**.

## Step 3: Create Three Subnets

* Web Subnet – **10.0.1.0/24**
* Application Subnet – **10.0.2.0/24**
* Database Subnet – **10.0.3.0/24**

## Step 4: Create Application Security Groups

Create three ASGs:

* ASG-Web
* ASG-App
* ASG-Database

## Step 5: Create Virtual Machines

Deploy six virtual machines:

* Web VM1 and Web VM2
* App VM1 and App VM2
* DB VM1 and DB VM2

Assign each VM to the appropriate subnet and ASG.

## Step 6: Create a Network Security Group

Create an NSG named **AzureNSG** and associate it with the Virtual Network.

## Step 7: Configure NSG Rules

* Allow HTTP/HTTPS from Internet to ASG-Web.
* Allow port 8080 from ASG-Web to ASG-App.
* Allow MySQL port 3306 from ASG-App to ASG-Database.
* Deny direct Internet access to the Database subnet.

## Step 8: Verify Connectivity

* Test Web to App communication.
* Test App to Database communication.
* Verify that Internet access to the Database is blocked.
