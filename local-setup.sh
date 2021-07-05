#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ansible-playbook -i "$SCRIPT_DIR"/configuration/inventory "$SCRIPT_DIR"/control-node/main.yml
