# User prompt
source ~/.zsh_prompt

# Best editor
export EDITOR='vim'

# General options
setopt completealiases
setopt autopushd
setopt noclobber

# vi keybindings
bindkey -v
export KEYTIMEOUT=1

# Functions
function open() { xdg-open "$1" &> /dev/null & disown; }
function d() { "$@" & disown; }
function wiki() { dig +short txt "$1".wp.dg.cx; }
function mkdircd() { mkdir -p "$@" && eval cd "\"\$$#\""; }
function git-update() {
	local repodir="$1"
	local tabwidth=8 # This might be different for some people, I don't know
	local cwd="$PWD" # I would use pushd but the autopushd thing fucks with it
	cd "$repodir"
	for i in *; do
		if [ -d "$i" ] && [ -d "$i/.git" ]; then
			cd "$i"
			echo -ne "$i:\t\t"
			if [ ${#i} -lt "$tabwidth" ]; then
				echo -ne "\t"
			fi
			git pull
			cd ..
		fi
	done
	cd "$cwd"
}

# Keyboard Shortcuts
bindkey '^R' history-incremental-search-backward

# Pacman Aliases
alias update='pacaur -Syu'

# Sudo alias
alias svim='sudo vim'

# Remote servers
alias armory='ssh smikims@b.armory.com'
alias palm='ssh -X reudc13@user.palmetto.clemson.edu'
alias palmy='ssh -Y reudc13@user.palmetto.clemson.edu'
alias tunnel='ssh -D 2000 smikims@b.armory.com -N -f'

# Programs
alias ifrestart='sudo ip link set wlp2s0 down && sudo ip link set wlp2s0 up'
alias record='ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -qscale 0'
alias checkpatch='checkpatch --no-tree --file'

# Shortcuts
alias rm='rm -i'
alias mv='mv -i'
alias c='xsel -ib'
alias p='xsel -ob'
alias h='history | tail'
alias dc='dirs -c'
alias ch='chmod 755 '
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ']'='open'
alias cl='clear'
alias ll='ls -alF'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls -CF'
alias wget='wget -c'
alias gdb='gdb -q'
alias tmux='tmux -2'
alias psgrep='ps aux | grep -v "grep" | grep -i'
alias mount='mount | column -t'
alias start='systemctl start'
alias stop='systemctl stop'
alias restart='systemctl restart'
alias status='systemctl status'
alias rmscr='rm -f ~/Pictures/Screenshot\ *'
alias js='d8'
alias diff='diff -u'
alias vim-update='git-update ~/.vim/bundle'

# Power Management
alias hibernate='systemctl hibernate'
alias gosleep='systemctl suspend'
alias screenoff='xset dpms force off'
alias backlight='xbacklight -set'

#Virtual Machines
alias debian='qemu-system-x86_64 -m 512 -machine accel=kvm -enable-kvm -curses ~/Documents/isos/debian.qcow2'
alias centos='qemu-system-x86_64 -m 512 -machine accel=kvm -enable-kvm -curses ~/Documents/isos/centos.qcow2'
alias freebsd='qemu-system-x86_64 -m 512 -machine accel=kvm -enable-kvm -curses ~/Documents/isos/freebsd.qcow2'

# Bookmarks
function cs() { cd ~/Documents/school/cs270/$1; }
alias iso='cd ~/Documents/iso/'

# Enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# MUTT BG fix
COLORFGBG="default;default"

# Ruby
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')
export PATH="$HOME/.gem/ruby/2.1.0/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)" # may be slow

# Haskell
export PATH="$HOME/.cabal/bin:$PATH"

# X11 forwarding
if [ -z "$DISPLAY" ]; then
	export DISPLAY="$(echo "$SSH_CONNECTION" | awk '{ print $1 }'):0.0"
fi
