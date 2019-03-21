# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# Env variables

export EDITOR=vim
export TERMINAL=mate-terminal
export PATH=$PATH:$HOME/bin

export GOPATH=$HOME/go/bin

# Aliases
alias copier='xclip -selection clipboard'
alias xop=xdg-open
alias p='echo "

-----------------

"'
alias cat='bat -p'
alias dcc=docker-compose

# Restore last wd
PROMPT_COMMAND='pwd > "${XDG_RUNTIME_DIR}/cwd"'
[[ -f "${XDG_RUNTIME_DIR}/cwd" ]] && cd "$(< ${XDG_RUNTIME_DIR}/cwd)"

