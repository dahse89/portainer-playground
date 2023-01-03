#!/usr/bin/env bash
set -e

export $(cat .env | xargs)

ssh root@"$HETZNER_CLOUD_INSTANCE_IP"