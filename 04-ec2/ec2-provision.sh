#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/Prema-931/roboshop-ansible-roles.git
cd roboshop-ansible-roles
ansible-playboook -e component=mongodb main.yaml
ansible-playboook -e component=catalogue main.yaml
ansible-playboook -e component=redis main.yaml
ansible-playboook -e component=rabbitmq main.yaml
ansible-playboook -e component=user main.yaml
ansible-playboook -e component=cart main.yaml
ansible-playboook -e component=mysql main.yaml
ansible-playboook -e component=shipping main.yaml
ansible-playboook -e component=payment main.yaml
ansible-playboook -e component=web main.yaml
