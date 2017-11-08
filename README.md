ECS
-------
ansible-playbook playbooks/ecs.yml

ALB
-------
The ALB template uses exported Outputs from the ECS template.

ansible-playbook playbooks/alb.yml

Service (initial creation and deployment of new versions)
-------
The Service template uses exported Outputs from the ALB template

ansible-playbook playbooks/service.yml
