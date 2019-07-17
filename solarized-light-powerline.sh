# Solarized Light - Tmux Theme
# Based on Powerline Gray by Jim Myhrberg <contact@jimeh.me>.
#
# Inspired by vim-powerline: https://github.com/Lokaltog/powerline
#
# Requires terminal to be using a powerline compatible font, find one here:
# https://github.com/Lokaltog/powerline-fonts
#

# Status update interval
set -g status-interval 1

# Basic status bar colors
set -g status-style fg=colour245,bg=white

# Left side of status bar
set -g status-left-style fg=colour243,bg=white
set -g status-left-length 40
set -g status-left "#[fg=white,bg=colour11,nobold] #S #[fg=colour11,bg=white]"

# Right side of status bar
set -g status-right-style fg=colour243,bg=white
set -g status-right-length 150
set -g status-right "#[fg=colour11,bg=white]#[fg=white,bg=colour11] %H:%M #[fg=white,bg=colour11]#[fg=colour11,bg=white] %d-%b-%y #[fg=white,bg=colour11]"

# Window status
set -g window-status-format "  #I #W  "
set -g window-status-current-format "#[fg=white,bg=colour14]#[fg=white,nobold] #I #W #[fg=colour14,bg=white,nobold]"

# Current window status
set -g window-status-current-style fg=white,bg=colour14

# Window with activity status
set -g window-status-activity-style fg=white,bg=colour243

# Window separator
set -g window-status-separator ""

# Pane border
set -g pane-border-style fg=white,bg=default

# Active pane border
set -g pane-active-border-style fg=colour254,bg=default

# Pane number indicator
set -g display-panes-colour white
set -g display-panes-active-colour colour245

# Clock mode
set -g clock-mode-colour white
set -g clock-mode-style 24

# Message
set -g message-style fg=brightred,bg=white

# Command message
set -g message-command-style fg=brightred,bg=white

# Mode
set -g mode-style fg=white,bg=colour37
