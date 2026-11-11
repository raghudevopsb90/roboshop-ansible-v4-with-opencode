#!/bin/bash

ansible-playbook roboshop.yml -i "$1-dev.rdevopsb90.online," -e "component_name=$1 ansible_user=ec2-user ansible_password=DevOps321"
