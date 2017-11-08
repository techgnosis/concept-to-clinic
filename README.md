ECS
-------
ansible-playbook playbooks/ecs.yml

ALB
-------
The ALB template uses exported Outputs from the ECS template.

ansible-playbook playbooks/alb.yml

C2C
-------
The Service template uses exported Outputs from the ALB template

ansible-playbook playbooks/c2c.yml
