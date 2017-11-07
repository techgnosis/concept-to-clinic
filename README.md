Motivation
----------
This stack is designed to do a few things particularly well.
* Maximize resource utilization by using Docker
* Simplify environments by sharing a single ALB
* Reflect 100% of the stack in-code. There are no resources not under management by CloudFormation.
* Includes minimal alarms

More specific information can be found in the README files found elsewhere in the project.

Note: Ansible is not used to configure any EC2 instances directly so the ansible.cfg does not have any bastion access configured for use with prod accounts.

ECS
-------
ansible-playbook playbooks/ecs.yml --extra-vars "Environment=dev"

ALB
-------
The ALB template uses exported Outputs from the ECS template.

ansible-playbook playbooks/alb.yml --extra-vars "Environment=dev"

Service (initial creation and deployment of new versions)
-------
The Service template uses exported Outputs from the ALB template

This is by far the most common operation so it has its own script

./deploy.sh example dev [version]
