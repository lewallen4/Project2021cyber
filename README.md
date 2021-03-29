## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!Images/Cloud.png
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the config.yaml file may be used to install only certain pieces of it, such as Filebeat.

  Ansible/config.yaml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accesible, in addition to restricting traffic to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the metrics and system logs.


The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| ELK-NET  | Monitor  | 10.1.0.5   | Linux            |
| Web-1    | WebServer| 10.0.0.5   | Linux            |
| TODO     | WebServer| 10.0.0.6   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
	
Host Public IP

Machines within the network can only be accessed by The Jump Box, 10.0.0.4 .


A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 10.0.0.1 10.0.0.2    |
| ELK      | No                  | 10.0.0.4 Host IP      |
| Web 1    | No                  | 10.0.0.4             |
| Web 2    | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
Larger scale rollouts would be much easier using this method, multiple units could be imaged quickly and easily

The playbook implements the following tasks:

installs docker
starts docker
installs python
installs the web containers
initiates everything and removes unused files

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

^the above command fails and should read sudo docker ps, not just docker ps
!Images/docker.png


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6

We have installed the following Beats on these machines:
filebeat
metricbeat

These Beats allow us to collect the following information from each machine:

These beats allow us to collect the log metrics from the machine as well as the machine health and active recources that are in use



### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the config.yaml file to etc/ansible.
- Update the hosts file to include the webservers and their correct IP's
- Run the playbook, and navigate to the affected machines to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_ The config.yaml is the base playbook, and it should be in /etc/ansible  
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ the hosts file, and you dictate which machine you want to install on via the naming heiarchy in the hosts file, then making sure that name correlated with the hosts file in the playbook
- _Which URL do you navigate to in order to check that the ELK server is running?
40.121.86.109:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
