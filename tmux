## dope colors
## colour061

## global
set -g default-shell "/bin/zsh"
set -g status-keys vi
set-option -g history-limit 4000
set-window-option -g mode-keys vi
set -g base-index 1
setw -g pane-base-index 1
setw -g automatic-rename on
set -g renumber-windows on
new-session main

## command prefix
unbind C-b
set-option -g prefix %
bind % send-prefix

## reload conf
unbind c
bind c source-file ~/Stuff/etc/tmux \; display-message "Config reloaded."

## paning
unbind '"'
unbind %
bind | split-window -h
bind - split-window -v

## movement
#bind M-s-Left select-pane -L
#bind M-s-Right select-pane -R
#bind M-s-Up select-pane -U
#bind M-s-Down select-pane -D

## windows
unbind C-r
bind q kill-window
bind n new-window
bind C-s choose-session
bind r command-prompt -I "#{b:pane_current_command}" "rename-window '%%'"
bind -n C-h previous-window
bind -n C-l next-window
bind -n M-j swap-window -t -1
bind -n M-k swap-window -t +1
bind -n M-` select-window -t :0
bind -n M-1 select-window -t :1
bind -n M-2 select-window -t :2
bind -n M-3 select-window -t :3

## status
set-option -g status-justify left
set-option -g status-bg colour154
set-option -g status-interval 5
set-option -g status-style bg=black

set-option -g status-left ''

set-option -g status-left-length 60
set-option -g status-right ' the world is yours #[fg=#999999]#S #[fg=#db434d]▓#[fg=#ef905d]▓#[fg=#d1cf5e]▓#[fg=#2a824c]▓#[fg=#167596]▓'

setw -g window-status-format " #[fg=#999999]#I#[fg=#3e3e3e] #W "
setw -g window-status-current-format " #I #W "
set -g window-status-style bg=black
set -g window-status-last-style bg=black
set -g window-status-current-style bg=white,fg=blue
set-option -g visual-activity on
set-window-option -g monitor-activity on

set -g assume-paste-time 1
set -g base-index 0
set -g bell-action any
set -g default-command ""
set -g destroy-unattached off
set -g detach-on-destroy on
set -g display-panes-active-colour red
set -g display-panes-colour blue
set -g display-panes-time 1000
set -g display-time 750
set -sg escape-time 1
set -g key-table "root"
set -g lock-after-time 0
set -g lock-command "lock -np"
set -g message-command-style fg=yellow,bg=black
set -g message-style fg=black,bg=blue
set -g mouse on
set -g prefix2 None
set -g renumber-windows on
set -g repeat-time 500
set -g set-titles on
set -g set-titles-string "#W"
#set -g set-titles-string "#S:#I:#W - \"#T\" #{session_alerts}"
#set-option -ga terminal-overrides ",st-256color:Tc"
set -g visual-activity off
set -g visual-bell off
set -g visual-silence off
set -g word-separators " -_@"

bind C-y set-window-option synchronize-panes

# vim: set ft=tmux:
