# A vim like copy mode
    #use vi-key bind on copy mode
    setw -g mode-keys vi
    #set 'v' start select
    bind-key -T copy-mode-vi v send -X begin-selection
    # 'y' or 'Enter' use copy-pipe-and-cancel
    bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel "win32yank.exe -i"
    unbind -T copy-mode-vi Enter
    bind-key -T copy-mode-vi Enter send -X copy-pipe-and-cancel "win32yank.exe -i"


# enable mouse drag for copy-pipe-and-cancel
    bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "win32yank.exe -i"
