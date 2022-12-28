#
# ~/.bashrc
#
#run fortune on cli start
fortune | cowsay

#History stuff
HISTTIMEFORMAT="%Y-%m-%d %T "
HISTCONTROL=ignoreboth

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
eval $(thefuck --alias)

alias foxwq='LANG=zh_CN.UTF-8 wine /home/me/.wine/drive_c/Program\ Files/foxwq/foxwq/foxwq.exe'
alias warp-start='(sudo systemctl start warp-svc.service; warp-cli connect)'
alias warp-stop='warp-cli disconnect && sudo systemctl stop warp-svc.service'
alias warp-check='curl https://www.cloudflare.com/cdn-cgi/trace/'
alias light-up='sudo light -A 80'
alias light-down='sudo light -U 20'
alias f-mt='sudo mount /dev/sdb1 ~/usb'
alias f-umt='sudo umount ~/usb'
#alias pe-gen='mkdir /home/me/Documents/labs/физ-ра/tmp && cp /home/me/Documents/labs/физ-ра/document.odt /home/me/Documents/labs/физ-ра/tmp  && unzip /home/me/Documents/labs/физ-ра/tmp/document.odt && rm /home/me/Documents/labs/физ-ра/tmp/document.odt && cp /home/me/Documents/labs/физ-ра/script.py /home/me/Documents/labs/физ-ра/tmp && python3 /home/me/Documents/labs/физ-ра/tmp/script.py && rm /home/me/Documents/labs/физ-ра/tmp/script.py && rm /home/me/Documents/labs/физ-ра/Vanyushin_3945gruppa.odt && zip -0 -X /home/me/Documents/labs/физ-ра/Vanyushin_3945gruppa.odt mimetype && zip -r /home/me/Documents/labs/физ-ра/Vanyushin_3945gruppa.odt * -x mimetype && rm -r /home/me/Documents/labs/физ-ра/tmp && rm /home/me/Documents/labs/физ-ра/Vanyushin_3945gruppa.pdf; unoconv /home/me/Documents/labs/физ-ра/Vanyushin_3945gruppa.odt'
#alias pe-gen='cd /home/me/Documents/labs/физ-ра && mkdir tmp && cp document.odt tmp && cd tmp && unzip document.odt && rm document.odt  && cd ..  && cp script.py tmp && python3 /home/me/Documents/labs/физ-ра/tmp/script.py && rm tmp/script.py && rm Vanyushin_3945gruppa.odt && cd tmp && zip -0 -X ../Vanyushin_3945gruppa.odt mimetype && zip -r ../Vanyushin_3945gruppa.odt * -x mimetype && cd .. && rm -r tmp && rm Vanyushin_3945gruppa.pdf; libreoffice --headless --convert-to pdf Vanyushin_3945gruppa.odt; cd '
alias pe-gen='cd /home/me/Documents/labs/физ-ра && mkdir tmp && cp document.odt tmp && cd tmp && unzip document.odt && rm document.odt  && cd ..  && cp script.py tmp && python3 /home/me/Documents/labs/физ-ра/tmp/script.py && rm tmp/script.py && rm Vanyushin_3945gruppa.odt && cd tmp && zip -0 -X ../Vanyushin_3945gruppa.odt mimetype && zip -r ../Vanyushin_3945gruppa.odt * -x mimetype && cd .. && rm -r tmp && rm Vanyushin_3945gruppa.pdf; libreoffice --headless --convert-to pdf Vanyushin_3945gruppa.odt; mv Vanyushin_3945gruppa.pdf Vanyushin_3945gruppa2.pdf; cd /home/me/Documents/labs/физ-ра && mkdir tmp && cp document.odt tmp && cd tmp && unzip document.odt && rm document.odt  && cd ..  && cp script_mon.py tmp && python3 /home/me/Documents/labs/физ-ра/tmp/script_mon.py && rm tmp/script_mon.py && rm Vanyushin_3945gruppa.odt && cd tmp && zip -0 -X ../Vanyushin_3945gruppa.odt mimetype && zip -r ../Vanyushin_3945gruppa.odt * -x mimetype && cd .. && rm -r tmp && rm Vanyushin_3945gruppa.pdf; libreoffice --headless --convert-to pdf Vanyushin_3945gruppa.odt; mv Vanyushin_3945gruppa.pdf Vanyushin_3945gruppa1.pdf; rm Vanyushin_3945gruppa.pdf; pdfunite Vanyushin_3945gruppa1.pdf Vanyushin_3945gruppa2.pdf Vanyushin_3945gruppa.pdf; cd '
alias vi='nvim'
alias vim='nvim'
# Set PATH so it includes user's private bin directoriesPATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"
# Set prompt
PS1="${Yellow}\u@\h${NC}: ${Blue}\w${NC} \\$ "

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
. "$HOME/.cargo/env"

export EDITOR=/usr/bin/nano


export QSYS_ROOTDIR="/home/me/intelFPGA/18.0/quartus/sopc_builder/bin"

#Set keybindings to vim mode
set -o vi
