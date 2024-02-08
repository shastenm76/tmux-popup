#!/bin/bash

# Get the dimensions of the terminal
terminal_width=$(tput cols)
terminal_height=$(tput lines)

# Calculate the center position with additional margins
left_margin=$(( terminal_width * 30 / 100 ))
top_margin=$(( terminal_height * 30 / 100 ))
center_x=$(( (terminal_width - 80) / 2 + left_margin ))
center_y=$(( (terminal_height - 60) / 2 + top_margin ))

# Open tmux-popup with the list of commands in the center with margins
tmux display-popup -x "$center_x" -y "$center_y" -w 80% -h 60%
