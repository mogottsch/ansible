#!/bin/bash
docker run --rm -it \
    --entrypoint bash \
    -v $(pwd):/home/moritz/tmp \
    manjaro

# sudo ansible-playbook local.yml --ask-vault-pass
