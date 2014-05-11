# Set up the prompt

autoload -Uz promptinit
autoload -Uz add-zsh-hook
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ":completion:*:commands" rehash 1

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

. /home/igel/dev/files/prompt.zsh

export STUDIO_JDK=/home/igel/dev/jdk1.7.0_25
export REDIS_PATH=/usr/bin/redis-server

alias lock='gnome-screensaver-command -l'
alias vol='amixer set Master'
alias suspend='dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend && lock'

export BROWSER=/usr/bin/firefox
export PATH=./bin:$PATH

# Show message of the day in new consoles
for i in /etc/update-motd.d/*; do if [ "$i" != "/etc/update-motd.d/98-fsck-at-reboot" ]; then $i 2>/dev/null; fi; done

function beep_on_return () (
  echo -ne '\a'
)
add-zsh-hook precmd beep_on_return
