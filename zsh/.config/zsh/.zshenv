export EDITOR="nvim"

export LESSHISTFILE="-"
export LESS_HIST_SIZE="-"

export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.npm-global/bin"
export NV="$HOME/.config/nvim/lua/custom"
export ZDOTDIR="$HOME/.config/zsh"
export SD=$ZDOTDIR

# In order to sign something, eg. Git commits
export GPG_TTY=\$(tty)

# Nvidia cache location
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache"

# Export working directory
if [[ -f ~/.working_directory ]]; then
    export WD=$(cat ~/.working_directory)
fi
. "$HOME/.cargo/env"
