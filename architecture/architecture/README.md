# Architecture

This folder contains the architecture diagrams used in the Azure Network Security Group and ASG Rule Rationalisation project.

## Network Architecture

The project follows a three-tier Azure network architecture:

* **Web Layer** – Receives HTTP/HTTPS requests from the Internet.
* **Application Layer** – Handles backend services and business logic.
* **Database Layer** – Stores application data and accepts traffic only from the Application layer.

Application Security Groups (ASGs) are used to group virtual machines based on their roles, while Network Security Groups (NSGs) control traffic between these groups.
