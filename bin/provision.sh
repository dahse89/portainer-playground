#!/usr/bin/env bash
set -e

export $(cat .env | xargs)

ansible-playbook ansible-playbook.yml -i ansible-hetzner-cloud-instance-inventory -e ansible_host="$HETZNER_CLOUD_INSTANCE_IP"