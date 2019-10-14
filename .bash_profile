export EDITOR=vim
#brew
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export HOMEBREW_NO_ANALYTICS=1
#system ruby
export PATH=/Users/achikin/.gem/ruby/2.3.0/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export GOPATH=~/src/gocode
export PATH=~/src/gocode/bin:$PATH
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk/25.2.3
export ANDROID_HOME=/usr/local/share/android-sdk/25.2.3
export GTAGSLABEL=ctags
export PATH=/Users/achikin/bin:$PATH
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
#Brew completion
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
      . $(brew --prefix)/share/bash-completion/bash_completion
        fi

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=4000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

LESSOPEN="|lesspipe.sh %s"; export LESSOPEN
case "$TERM" in
    xterm-color) color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
    xterm-kitty) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    #export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] →\[\033[00m\] '
    #export PS1='\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] →\[\033[00m\] '
    export PS1='\[\e[00;37m\]\w\[\e[01;33m\]$(__git_ps1)\[\e[01;34m\] →\[\e[00m\] '
fi
unset color_prompt force_color_prompt

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias trans='trans en:ru'
alias fbcd='cd ~/src/clj/flyerbee.com'
alias fbpg='postgres -D /usr/local/var/postgres/'
alias fbfw='cd ~/src/clj/flyerbee.com; rlwrap lein figwheel'
source .github_api_token
LEIN_FAST_TRAMPOLINE=y
export GPG_TTY=$(tty)

launchctl setenv PATH $PATH

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"  

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
if [ -e /Users/achikin/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/achikin/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
