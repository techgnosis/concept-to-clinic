Ansible is used here purely for convenience. The 'cloudformation' module has the following helpful functionality: 

1. Updates the stack if it already exists
2. Makes change sets
3. Waits until the stack is built/updated before returning

We also do a small amount of Jinja2 templating in templates/service.yml