Multi-OS Automated Web Deployment

This project automates the deployment of a web server across a hybrid Linux environment (CentOS and Ubuntu) using Vagrant and Bash scripting.

Architecture
Control Node (scriptbox): A CentOS 9 Stream VM that orchestrates the deployment.

Web Nodes: A mix of CentOS and Ubuntu 18.04 instances.

Automation: A master script pushes a configuration script to remote nodes via SSH and executes it to install Apache, configure firewalls, and deploy a web template.

Key Skills Demonstrated
Bash Scripting: Loops, conditional logic (OS detection), and remote execution.

Virtualization: Managing multi-VM environments with Vagrant and VirtualBox.

Linux Admin: Managing sudoers, SSH keys, and systemd services.

Network Automation: Handling remote connectivity between heterogeneous systems.

<img width="1366" height="768" alt="Screenshot from 2026-02-20 19-45-42" src="https://github.com/user-attachments/assets/04d703b2-2ce5-419e-bdd0-31782238b41a" />
<img width="1366" height="768" alt="Screenshot from 2026-02-20 19-45-13" src="https://github.com/user-attachments/assets/ede7332d-59a6-465e-8dd0-da961cd4d27a" />



Folder Structure:

├── scripts/
│   ├── webdeploy.sh           # Master script (runs on scriptbox)
│   └── multios_websetup.sh    # Worker script (deployed to web nodes)
├── Vagrantfile                # Your VM configuration
├── remhosts                   # List of target IP/Hostnames
└── README.md                  # Project documentation
