#!/bin/bash

application=$1
environment=$2
version=$3

ansible-playbook playbooks/service.yml --extra-vars "Config=$application Environment=$environment ImageVersion=$version"