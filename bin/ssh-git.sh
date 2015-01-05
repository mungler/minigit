#!/bin/sh
if [ -z "$MINIGIT_SSH_KEY" ]; then
# if MINIGIT_SSH_KEY is not specified, run ssh using default keyfile
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$@"
else
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i "$MINIGIT_SSH_KEY" "$@"
fi

