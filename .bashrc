#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make colorcoding available for everyone

Black='\[\e[0;30m\]'	# Black
Red='\[\e[0;31m\]'		# Red
Green='\[\e[0;32m\]'	# Green
Yellow='\[\e[0;33m\]'	# Yellow
Blue='\[\e[0;34m\]'		# Blue
Purple='\[\e[0;35m\]'	# Purple
Cyan='\[\e[0;36m\]'		# Cyan
White='\[\e[0;37m\]'	# White

# Bold
BBlack='\[\e[1;30m\]'	# Black
BRed='\[\e[1;31m\]'		# Red
BGreen='\[\e[1;32m\]'	# Green
BYellow='\[\e[1;33m\]'	# Yellow
BBlue='\[\e[1;34m\]'	# Blue
BPurple='\[\e[1;35m\]'	# Purple
BCyan='\[\e[1;36m\]'	# Cyan
BWhite='\[\e[1;37m\]'	# White

# Background
On_Black='\[\e[40m\]'	# Black
On_Red='\[\e[41m\]'		# Red
On_Green='\[\e[42m\]'	# Green
On_Yellow='\[\e[43m\]'	# Yellow
On_Blue='\[\e[44m\]'	# Blue
On_Purple='\[\e[45m\]'	# Purple
On_Cyan='\[\e[46m\]'	# Cyan
On_White='\[\e[47m\]'	# White

NC='\[\e[m\]'			# Color Reset

ALERT="${BWhite}${On_Red}" # Bold White on red background

# Useful aliases
alias c='clear'
alias ..='cd ..'
alias ls='ls -CF --color=auto'
alias ll='ls -lisa --color=auto'
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'

alias warp-start='(sudo systemctl start warp-svc.service; warp-cli connect)'
alias warp-stop='warp-cli disconnect && sudo systemctl stop warp-svc.service'
alias light-up='sudo light -A 80'
alias light-down='sudo light -U 20'
alias fast-mount='sudo mount /dev/sdb1 ~/usb'
alias fast-umount='sudo umount ~/usb'
alias pe-gen='mkdir tmp && cp document.odt tmp && cd tmp && unzip document.odt && rm document.odt  && cd ..  && cp script.py tmp && python3 /home/me/Documents/labs/физ-ра/tmp/script.py && rm tmp/script.py && rm Vanyushin_3945gruppa.odt && cd tmp && zip -0 -X ../Vanyushin_3945gruppa.odt mimetype && zip -r ../Vanyushin_3945gruppa.odt * -x mimetype && cd .. && rm -r tmp && Vanyushin_3945gruppa.pdf; unoconv Vanyushin_3945gruppa.odt'

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

# Set prompt
PS1="${Yellow}\u@\h${NC}: ${Blue}\w${NC} \\$ "



. "$HOME/.cargo/env"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
