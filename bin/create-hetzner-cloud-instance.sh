#!/usr/bin/env bash
set -e

export $(cat .env | xargs)

SERVER_NAME="portainer-test-server-1"

hcloud server create --name "$SERVER_NAME" --image docker-ce --type cx31 --ssh-key "$HETZNER_CLOUD_KEY_ID"

TEST_SERVER_IP=$(hcloud server list | grep  "$SERVER_NAME" | cut -d ' ' -f 10)

sed -i -E "s/HETZNER_CLOUD_INSTANCE_IP=.*/HETZNER_CLOUD_INSTANCE_IP=$TEST_SERVER_IP/" .env

echo ".env file updated"