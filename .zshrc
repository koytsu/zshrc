## Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%{$fg[green]%}%n%{$fg[green]%}% %{$fg[{green]%}%~%{$green%}>%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

#SCRIPT CHAD PATHING ONLY SPOT
export PATH=~/scripts:$PATH
# alias 
# to run things from an entire nother directory 1) cd there first 2) run it 3) put a ; at the end of the command and then do "cd" to go back home all in one line command. can also do "cd -" to go back to directory you were at before. can find a cleaner way later

#color
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

#sysalias
alias \
	ka="killall" \
	g="git" \
	install="sudo pacman -S" \
	remove="sudo pacman -R" \
	system-update="sudo pacman -Syu" \
	sdn="sudo shutdown now" \
	reboot="sudo reboot now" \
	c="clear" \
	z="source ~/.zshrc" \
	zshrc="sudo nvim ~/.zshrc" \
	nfetch="neofetch --w3m ~/e2d4d3dda654b24f06d0a19158b16180.png --crop_mode fill" \
	afetch="cd ~/afetch && ./afetch ; cd -" \
	theme="wal --theme" \
	themedark="wal --theme random_dark" \
	themelight="wal --theme random_light" \
	vpn="sudo openvpn /etc/openvpn/ovpn_udp/us8386.nordvpn.com.udp.ovpn" \
#IMPORTANT: TO CHANGE SERVERS, RUN nord-servers FOR UDP AND nord-servers-tcp FOR TCP SERVERS AND THEN USE THAT .opvn FILE FOR VPN FOR CHANGING FOR WHATEVER REASON. MAY NEED TO RE ENTER CREDENTIALS.
#
#.sh files
#
alias \
	tm="transcode.sh" \
	264tm="264transcode.sh" \
	weather="weather.sh" \

#for when we must cd to where no cd has gone before

alias \
	the-archive="cd /run/media/yenren/The\ Archive" \
	extended-archive="cd /run/media/yenren/Extended\ Archive" \
	nord-servers="ls /etc/openvpn/ovpn_udp/" \
	nord-servers-tcp="ls /etc/openvpn/ovpn_tcp/" \
#internet stuff

alias \
	yt="youtube-dl --add-metadata -i" \
	urls="nvim ~/.newsboat/urls" \
	musicdl="~/smloadr/BUILD/SMLoadr-linux-x64" \
	newsboat="newsboat -r" \

#wals bro
#
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

wal -R

export CUDA_PATH=/usr
#
path+=/home/yenren/.local/bin
## Load syntax highlighting; should be last. 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
