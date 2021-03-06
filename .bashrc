# History
# https://stackoverflow.com/a/19533853
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=-1
HISTFILESIZE=-1
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Update the LINES and COLUMNS for the window size
shopt -s checkwinsize

# Use a color prompt, it's just better
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# AWS completion
if [ -f /usr/local/bin/aws_completer ]; then
    complete -C '/usr/local/bin/aws_completer' aws
fi

# Paths
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Default to neovim
export VISUAL=nvim
export EDITOR="$VISUAL"
alias vim=nvim
alias vi=nvim
export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# ResSys config
if [ -f ~/.bash_ressys ]; then
    . ~/.bash_ressys
fi

