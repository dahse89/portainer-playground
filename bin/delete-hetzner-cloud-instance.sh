#!/usr/bin/env bash
set -e

SERVER_NAME="portainer-test-server-1"

hcloud server delete "$SERVER_NAME"