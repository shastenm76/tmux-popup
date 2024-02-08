#!/bin/bash

# Get the last 10 commands from shell history
history_commands=$(history | tail -n 10 | awk '{$1=""; print $0}' | sed 's/^\s*//')

# Create a temporary file to store commands
temp_file=$(mktemp)
echo "$history_commands" > "$temp_file"

# Open tmux-popup with the list of commands in the current pane
tmux-popup -w 80% -h 60% -x "$temp_file"

# Remove temporary file
rm -f "$temp_file"
