#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <step>"
    exit 1
fi

step="$1"

case "$step" in
    0)
        playbook="./0_initial.yml"
        ;;
    1)
        playbook="./1_post-dotfiles-clone.yml"
        ;;
    2)
        playbook="./2_post-packages.yml"
        ;;
    *)
        echo "Invalid step: $step"
        echo "Usage: $0 <step>"
        exit 1
        ;;
esac

ansible-playbook "$playbook" --ask-vault-pass --ask-become-pass
