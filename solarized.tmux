#!/usr/bin/env bash

main() {

  ## Colors
  black='colour16'
  white='colour255'
  gray='colour12'
  light_gray='colour7'
  dark_gray='colour8'
  yellow='colour3'
  red='colour9'

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-bg "${light_gray}"
  tmux set-option -g pane-active-border-fg "${red}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left " #I #[fg=${light_gray},reverse]${right_sep} "
  tmux set-option -g status-left-style "fg=${white},bg=${red},bold"
  tmux set-option -g status-right "${left_sep}#[bg=${light_gray},reverse] %d %h %Y, %H:%M "
  tmux set-option -g status-right-style "fg=${yellow},bg=${light_gray}"
  tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style "fg=${yellow},bg=${dark_gray}"
  tmux set-window-option -g window-status-current-format \
    "${right_sep}#[fg=${light_gray}] #I ${right_alt_sep} #W #[fg=${light_gray},reverse]${right_sep}"
  tmux set-window-option -g window-status-current-style "fg=${light_gray},bg=${gray}"
}

main

# vim: set filetype=bash
