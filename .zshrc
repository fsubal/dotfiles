ssh-add -K

## Git
alias g=git
export PATH=/usr/local/git/bin:$PATH

## nvm
export NVM_DIR="/Users/f_subal/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## PHP
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
alias composer='php composer.phar'
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

export PATH=$HOME/.composer/vendor/bin:$PATH

export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

## rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

## bundler
alias b='bundle'
alias be='bundle exec'
alias befs='mysql.server start && bundle exec foreman start'
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

## Rails
alias r='redis-server --daemonize yes && bundle exec sidekiq -C config/sidekiq.yml -c 1'

## blender
export PATH="/Applications/Blender/blender.app/Contents/MacOS:$PATH"

# brew
# export HOMEBREW_CASK_OPTS="--appdir=/usr/local"

#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
eval "$(nodenv init -)"

# Go
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# Github
# export GITHUB_ACCESS_TOKEN=

## Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PIPENV_VENV_IN_PROJECT=true

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# direnv
eval "$(direnv hook zsh)"

###############################################################

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
unset color_prompt force_color_prompt

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
