# Testing and Validation

This document describes how the Azure Network Security Group (NSG) and Application Security Group (ASG) rules were tested.

## Test Scenario 1 – Internet Access to Web Layer

**Source:** Internet

**Destination:** ASG-Web

**Port:** 80/443

**Expected Result:** Allowed

**Status:** Passed

The web virtual machines successfully received HTTP and HTTPS traffic from the Internet.

---

## Test Scenario 2 – Web Layer to Application Layer

**Source:** ASG-Web

**Destination:** ASG-App

**Port:** 8080

**Expected Result:** Allowed

**Status:** Passed

Communication from the web servers to the application servers was successful.

---

## Test Scenario 3 – Application Layer to Database Layer

**Source:** ASG-App

**Destination:** ASG-Database

**Port:** 3306

**Expected Result:** Allowed

**Status:** Passed

Application servers successfully connected to the database servers.

---

## Test Scenario 4 – Internet Access to Database Layer

**Source:** Internet

**Destination:** ASG-Database

**Port:** 3306

**Expected Result:** Denied

**Status:** Passed

Direct access from the Internet to the database subnet was blocked by the Network Security Group.

---

## Validation Result

- HTTP/HTTPS traffic allowed to the Web tier.
- Web tier communicates with the Application tier.
- Application tier communicates with the Database tier.
- Internet access to the Database tier is denied.
- NSG rules work correctly using Application Security Groups.
