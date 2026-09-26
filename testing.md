# Testing and Validation

This section verifies that the NSG and ASG rules are working correctly.

## Test Case 1 – Web Layer Access

- Source: Internet
- Destination: ASG-Web
- Port: 80/443

**Expected Result:** HTTP/HTTPS access is allowed.

## Test Case 2 – Web to Application Communication

- Source: ASG-Web
- Destination: ASG-App
- Port: 8080

**Expected Result:** Traffic is allowed.

## Test Case 3 – Application to Database Communication

- Source: ASG-App
- Destination: ASG-Database
- Port: 3306

**Expected Result:** MySQL traffic is allowed.

## Test Case 4 – Internet to Database

- Source: Internet
- Destination: ASG-Database
- Port: 3306

**Expected Result:** Traffic is denied by the Network Security Group.

## Validation Summary

All security rules were successfully validated, ensuring secure communication between the Web, Application, and Database layers.
