# On Startup
# Load myscript.fish only if the MYSCRIPT_LOADED variable is not set
if not set -q MYSCRIPT_LOADED
    set -x MYSCRIPT_LOADED 1
    source ~/.config/scripts/startup_commands.sh
end



# Environment Variables
set -x -g EDITOR nvim
set -x -g TERMINAL gnome-terminal

# Add to your path
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.pub-cache/bin $PATH
set -gx PATH ~/.config/scripts $PATH
set -gx PATH ~/.cargo/bin $PATH

# Git aliases
alias gcln='git clone'
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gp='ubuntu-access-token&& git push -u origin'
alias gcm='git commit -m'
alias glg='git log --oneline'
alias glga='git log --oneline --all'
alias gdf='git diff'
alias gco='git checkout'
alias gnb="git checkout -b"
alias gbls='git branch'
alias gbla='git branch -a'
alias gblr='git branch -r'
alias gsb="git switch"
alias rcm="regular-commit.sh"
#alias gr="git restore"
alias gra="git remote add"
alias grla="git remote -v"
alias gf="git fetch"
alias gpull="git pull"
alias gbrm="git branch -d"
alias gsla="git stash list"
alias gsu="git stash -u"
alias gsd="git stash drop"
alias gsa="git stash apply"
alias gm="git merge"
alias gpl="git pull"
alias gu="git fetch origin"



# General aliases
alias charm="nohup charm . >/dev/null 2>&1 &"
alias vs="code ."
alias r="zathura"
alias la="colorls -lA --git-status --light"
alias fishconfiguration="vim ~/.config/fish/config.fish"
alias tmuxconfiguration="vim ~/.tmux.conf"
alias ideavimrc="vim ~/.ideavimrc"
alias sf="source ~/.config/fish/config.fish"
alias update="sudo apt-get update -y"
alias upgrade="sudo apt-get upgrade -y"
alias unu="sudo apt-get update -y && sudo apt-get  upgrade -y"
alias install="sudo apt-get install -y"
alias ubuntu-access-token="cat /media/tarikwaleed/Data/repos/ubuntu-access-token|xclip -selection clipboard"
alias bitbucket-app-password="cat /media/tarikwaleed/Data/repos/bitbucket-app-password|xclip -selection clipboard"
alias masheen-dev-creds="cat /media/tarikwaleed/Data/repos/masheen-dev-creds|xclip -selection clipboard"
alias masheen-live-creds="cat /media/tarikwaleed/Data/repos/masheen-live-creds|xclip -selection clipboard"
alias copy="xclip -selection clipboard"
alias studio="studio.sh"
alias b="cd .."
alias bb="cd ../.."
alias bbb="cd ../../.."
alias bbbb="cd ../../../.."
#alias awrc="vim ~/dotfiles/awesome/.config/awesome/rc.lua"
#alias awtheme="vim ~/dotfiles/awesome/.config/awesome/theme.lua"
#alias awxrandr="vim ~/dotfiles/awesome/.config/awesome/xrandr.lua"
#alias logout="dm-tool switch-to-greeter"
#alias vu="amixer -D pulse sset Master 10%+ -q"
#alias vd="amixer -D pulse sset Master 10%- -q"
#alias vm="amixer -D pulse sset Master 50% -q"
#alias vh="amixer -D pulse sset Master 100% -q"
alias vim="nvim"
alias tldr="tldr -t ocean"
alias dpi="sudo dpkg -i"
alias dd="dconf dump / > ~/dotfiles/dconf/dconf"

# Tmux aliases
alias tkl="tmux kill-session -t"
alias tls="tmux list-sessions"
alias tsync="tmuxinator-sync.sh"

# Tmuxinator aliases
alias start="tmuxinator start"
alias new="tmuxinator new"
alias stop="tmuxinator stop"
alias edit="tmuxinator edit"
alias list="tmuxinator list"

# Angular aliases
alias ns="ng serve"
alias nso="ng serve --open"
alias nsop="ng serve --open --port"
alias ngc="ng generate component"
alias ngi="ng generate interface"
alias ngs="ng generate service"
alias ngp="ng generate pipe"
alias ngd="ng generate directive"
alias nge="ng generate enum"
alias ngm="ng generate module"
alias ngg="ng generate guard"
alias ngcl="ng generate cl"

#Node and Nest aliases
alias nr="npm run"
alias ni="npm install"

# Docker Aliases
alias dils="docker image ls"
alias dcls="docker container ls"
alias dila="docker image ls -a"
alias dcla="docker container ls -a"
alias dpl="docker pull"
alias dpsh="docker push"
alias dc="docker container"
alias di="docker image"
alias dvla="docker volume ls"
alias dvi="docker volume inspect"
alias dci="docker container inspect"
alias dvc="docker volume create"
alias dclq="docker container ls -q"
alias dilq="docker image ls -q"
alias dvlq="docker volume ls -q"
alias db="docker build -t"
alias dv="docker volume"
alias dcrma="docker rm (docker ps -a -q)"

# Django Aliases
alias py='python3'
alias ipy='ipython3'
alias py2='python2'
alias ipy2='ipython2'
alias jn='jupyter notebook'
alias wo='workon'
alias pf='pip freeze | sort'
alias pi='pip install'
alias pui='pip uninstall'
alias dj="python manage.py"
alias drs="python manage.py runserver"
alias drp="python manage.py runserverplus"
alias dsh="python manage.py shell"
alias dsp="python manage.py shell_plus"
alias dsm="python manage.py schemamigration"
alias dm="python manage.py migrate"
alias dmm="python manage.py makemigrations"
alias dmmm="python manage.py makemigrations & python manage.py migrate"
alias ddd="python manage.py dumpdata"
alias dld="python manage.py loaddata"
alias dt="python manage.py test"

# Configuring ruby

set -gx PATH $HOME/.rbenv/bin $PATH
set -gx PATH $HOME/.rbenv/plugins/ruby-build/bin $PATH
rbenv init - | source

# set if your term supports `pipenv shell --fancy`
set pipenv_fish_fancy yes
set -x PS1 $PS1' (⚡️  pipenv venv)'
set -x PIPENV_VENV_IN_PROJECT 1


