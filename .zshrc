# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

source ~/antigen.zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
#if [[ $DISPLAY ]]; then
#    [ -z "$TMUX" ] && command -v tmux > /dev/null && exec tmux -f ~/.tmux.conf
#    export TERM=screen-256color
#fi
ZSH_DISABLE_COMPFIX=true
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen theme romkatv/powerlevel10k
antigen apply
#pgrep Xorg &> /dev/null || source ~/nord-tty/nord-tty
#if [ -f /etc/bash.command-not-found ]; then
#	    . /etc/bash.command-not-found
#fi;
alias gc="git -C ~/git clone"
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
alias ..='cd ..'
alias ...='cd ../..'
#alias startx='QT_QPA_PLATFORMTHEME=qt5ct startx'
# vim
alias vim='nvim'

# broot
alias br='br -dhp'
alias bs='br --sizes'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;34m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh;
alias update='sudo pacman -Sy;paru -Qu && sleep 1 && sudo powerpill -Su && paru -Su'
colorscript -e 5;pfetch;colorscript -e 5
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Su'
alias xq='sudo xbps-query -Rs'
alias xr='sudo xbps-remove'
alias sway='XDG_CURRENT_DESKTOP=sway XDG_SESSION_TYPE=wayland dbus-launch --exit-with-session sway'
alias proton='STEAM_COMPAT_DATA_PATH=$HOME/proton ~/.steam/steam/steamapps/common/Proton\ 6.3/proton run'
wgu() {
    sudo wg-quick down $1;sudo wg-quick up $1
}
wgd() {
    sudo wg-quick down $1
}
a2c() {
  aria2c -x 16 $1
}
