Multi-OS Automated Web Deployment Cluster
Developed by Onyeka Obasiocha

  Project Overview
  
This project demonstrates my ability to automate web infrastructure deployment across a heterogeneous Linux environment. Using Vagrant for local virtualization and Bash scripting, I engineered a system where a single "Control Node" (scriptbox) orchestrates the configuration and deployment of a website to multiple remote nodes running different operating systems (CentOS and Ubuntu).

Architecture
The environment consists of four Virtual Machines:

scriptbox (Control Node): CentOS 9 Stream — The management engine used to trigger all deployments.

web01 & web02 (Target Nodes): CentOS 9 Stream — RedHat-based web servers.

web03 (Target Node): Ubuntu 18.04 — Debian-based web server.

Key Features
Dynamic OS Detection: I developed the setup script to autonomously identify the underlying Linux distribution (yum vs apt) and execute the appropriate package management commands.

Remote Orchestration: Utilizes SSH and SCP to securely push and execute scripts across the network without manual intervention.

Automated Artifact Management: The system automatically fetches web templates from external sources, handles extraction, and configures the web root (/var/www/html).

Advanced Linux Administration: Implements logic to handle non-interactive sudoers permissions and systemd service management.

File Descriptions
Vagrantfile: Defines the entire VM cluster infrastructure, including IPs, OS images, and hardware allocations.

webdeploy.sh: The master orchestration script that loops through target hosts.

multios_websetup.sh: The specialized worker script that performs the actual installation on target nodes.

remhosts: A configuration file containing the list of target server hostnames and IPs.

Usage Instructions
1. Provision the Environment
Ensure you have Vagrant and VirtualBox installed, then run:
vagrant up

2. Execute Deployment
Log into the control node and run the orchestration script:
vagrant ssh scriptbox
cd /path/to/project
./webdeploy.sh

3. Verify
Access the web servers in your browser via their private IPs defined in the remhosts file.

Skills Demonstrated
Infrastructure as Code (IaC): Defining and spinning up entire networks via configuration files.

Automated Configuration Management: Replacing manual "SSH-and-type" workflows with scalable scripts.

Cross-Platform Administration: Expertly handling differences between RedHat and Debian families.

Troubleshooting & Security: Successfully resolved challenges regarding non-interactive sudo sessions and automated SSH fingerprinting.



<img width="1366" height="768" alt="Screenshot from 2026-02-20 19-45-42" src="https://github.com/user-attachments/assets/311312f9-1d89-493d-a291-c0d63c8332aa" />



<img width="1366" height="768" alt="Screenshot from 2026-02-20 19-45-13" src="https://github.com/user-attachments/assets/3cf37b9a-2b04-441d-b605-7cf97c14ada2" />

👤 Contact
Onyeka Obasiocha

GitHub: https://github.com/onyeka30/

LinkedIn: https://www.linkedin.com/in/onyeka-obasiocha/
