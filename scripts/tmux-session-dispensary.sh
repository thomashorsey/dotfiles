#!/bin/bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    echo "Please provide a filepath"
    exit 1
fi

[[ ! -d $selected ]] && echo "Directory does not exist" && exit 1

selected_name=$(basename "$selected" | tr . _)

if ! tmux has-session -t "$selected_name"; then
    tmux new-session -ds "$selected_name" -c "$selected"
    tmux select-window -t "$selected_name:1"
fi

tmux switch-client -t "$selected_name"
