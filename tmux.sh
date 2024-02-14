#!/usr/bin/bash


if [[ $XDG_SESSION_TYPE =~ wayland ]]; then
    echo Sourcing wayland/clipboard.tmux >> ~/.config/tmux/test.log
    tmux source-file ~/.config/tmux/wayland/clipboard.tmux
fi 

test -e /proc/sys/fs/binfmt_misc/WSLInterop
is_wsl=$? 
if [[ $is_wsl == 0 ]]; then 
    echo Sourcing wsl/clipboard.tmux >> ~/.config/tmux/test.log
    tmux source-file ~/.config/tmux/wsl/clipboard.tmux
fi
