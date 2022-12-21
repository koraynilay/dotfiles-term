# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

# zsh
zrc=$HOME/.zshrc
zthemes=$ZSH/themes
zcthemes=$ZSH_CUSTOM/themes
envzsh=$ZSH_CUSTOM/envar.zsh
# i3
i3conf=~/.config/i3/config
# polybar
pbconf=~/.config/polybar/config
# cursor
indexcursor=/usr/share/icons/default/index.theme
cursordot_theme=~/.icons/default/index.theme
# dunst
dunstrc=~/.config/dunst/dunstrc
# picom
picomrc=~/.config/picom.conf
# vim
vrc=~/.vimrc
# termite
termconf=~/.config/termite/config
# xorg (xinit)
xinit=~/.xinitrc
# gtk2/3 configs
gtk2theme=~/.gtkrc-2.0
gtk3theme=~/.config/gtk-3.0/settings.ini
# SteamLibraries
cSteamLibrary=/C/SteamLibrary/steamapps/common
dSteamLibrary=/D/SteamLibrary/steamapps/common
fSteamLibrary=/F/SteamLibrary/steamapps/common
iSteamLibrary=/I/SteamLibrary/steamapps/common
qSteamLibrary=/Q/SteamLibrary/steamapps/common
aSteamLibrary=/A/SteamLibrary/steamapps/common
# others
l=$HOME/linux-custom-scripts
#lcs=$HOME/linux-custom-scripts
remmedia=/media/rem*/*
rem=/media/
trash=~/.local/share/Trash
autostart_script=~/.config/autostart.sh
#svconf=~/.config/savery.ini
#old_root=/disks/D/linux/users/root_old_full

# dotfiles-minimal
#alias m='git --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git --work-tree=$HOME -c status.showUntrackedFiles=no'
alias m='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git'
alias mst='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git status'
alias mrm='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git rm --cached'
alias ma='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git add --verbose'
alias mc='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git commit'
alias mp='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git push'
alias mdi='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git diff'
alias ml='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git pull'
alias mlg='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --stat'
alias mlgg='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph'
alias mlgga='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --decorate --all'
alias mlgm='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --max-count=10'
alias mlgp='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --stat -p'
alias mlo='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --oneline --decorate'
alias mlod='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias mlods='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias mlog='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --oneline --decorate --graph'
alias mloga='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --oneline --decorate --graph --all'
alias mlol='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias mlola='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias mlols='git --work-tree=$HOME --git-dir=$HOME/.config/dotfiles-minimal/dotfiles-minimal.git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'

# default git aliases overrides
alias gaa="$(alias gaa | cut -f2- -d= | tr -d "'") --verbose"

# yadm (took from `alias | grep git`)
alias y=yadm
alias ya='yadm add --verbose'
alias yaa='yadm add --all --verbose'
alias yam='yadm am'
alias yama='yadm am --abort'
alias yamc='yadm am --continue'
alias yams='yadm am --skip'
alias yamscp='yadm am --show-current-patch'
alias yap='yadm apply'
alias yapa='yadm add --patch'
alias yapt='yadm apply --3way'
alias yau='yadm add --update'
alias yav='yadm add --verbose'
alias yb='yadm branch'
alias ybD='yadm branch -D'
alias yba='yadm branch -a'
alias ybd='yadm branch -d'
alias ybda='yadm branch --no-color --merged | command grep -vE "^(\+|\*|\s*(master|development|develop|devel|dev)\s*$)" | command xargs -n 1 yadm branch -d'
alias ybl='yadm blame -b -w'
alias ybnm='yadm branch --no-merged'
alias ybr='yadm branch --remote'
alias ybs='yadm bisect'
alias ybsb='yadm bisect bad'
alias ybsg='yadm bisect good'
alias ybsr='yadm bisect reset'
alias ybss='yadm bisect start'
alias yc='yadm commit -v'
alias 'yc!'='yadm commit -v --amend'
alias yca='yadm commit -v -a'
alias 'yca!'='yadm commit -v -a --amend'
alias ycam='yadm commit -a -m'
alias 'ycan!'='yadm commit -v -a --no-edit --amend'
alias 'ycans!'='yadm commit -v -a -s --no-edit --amend'
alias ycb='yadm checkout -b'
alias ycd='yadm checkout develop'
alias ycf='yadm config --list'
alias ycl='yadm clone --recurse-submodules'
alias yclean='yadm clean -id'
alias ycm='yadm checkout master'
alias ycmsg='yadm commit -m'
alias 'ycn!'='yadm commit -v --no-edit --amend'
alias yco='yadm checkout'
alias ycount='yadm shortlog -sn'
alias ycp='yadm cherry-pick'
alias ycpa='yadm cherry-pick --abort'
alias ycpc='yadm cherry-pick --continue'
alias ycs='yadm commit -S'
alias ycsm='yadm commit -s -m'
alias yd='yadm diff'
alias ydca='yadm diff --cached'
alias ydct='yadm describe --tags $(yadm rev-list --tags --max-count=1)'
alias ydcw='yadm diff --cached --word-diff'
alias yds='yadm diff --staged'
alias ydt='yadm diff-tree --no-commit-id --name-only -r'
alias ydw='yadm diff --word-diff'
alias yf='yadm fetch'
alias yfa='yadm fetch --all --prune'
alias yfg='yadm ls-files | grep'
alias yfo='yadm fetch origin'
alias yg='yadm gui citool'
alias yga='yadm gui citool --amend'
alias yhh='yadm help'
alias yignore='yadm update-index --assume-unchanged'
alias yignored='yadm ls-files -v | grep "^[[:lower:]]"'
alias yit-svn-dcommit-push='yadm svn dcommit && yadm push yadmhub master:svntrunk'
alias yk='\yadmk --all --branches'
alias yke='\yadmk --all $(yadm log -g --pretty=%h)'
alias yl='yadm pull'
alias ylg='yadm log --stat'
alias ylgg='yadm log --graph'
alias ylgga='yadm log --graph --decorate --all'
alias ylgm='yadm log --graph --max-count=10'
alias ylgp='yadm log --stat -p'
alias ylo='yadm log --oneline --decorate'
alias ylod='yadm log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias ylods='yadm log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias ylog='yadm log --oneline --decorate --graph'
alias yloga='yadm log --oneline --decorate --graph --all'
alias ylol='yadm log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias ylola='yadm log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias ylols='yadm log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
alias ylp=_yadm_log_prettily
alias ylum='yadm pull upstream master'
alias ym='yadm merge'
alias yma='yadm merge --abort'
alias ymom='yadm merge origin/master'
alias ymt='yadm mergetool --no-prompt'
alias ymtvim='yadm mergetool --no-prompt --tool=vimdiff'
alias ymum='yadm merge upstream/master'
alias yp='yadm push'
alias ypd='yadm push --dry-run'
alias ypf='yadm push --force-with-lease'
alias 'ypf!'='yadm push --force'
alias ypoat='yadm push origin --all && yadm push origin --tags'
alias ypristine='yadm reset --hard && yadm clean -dffx'
alias ypu='yadm push upstream'
alias ypv='yadm push -v'
alias yr='yadm remote'
alias yra='yadm remote add'
alias yrb='yadm rebase'
alias yrba='yadm rebase --abort'
alias yrbc='yadm rebase --continue'
alias yrbd='yadm rebase develop'
alias yrbi='yadm rebase -i'
alias yrbm='yadm rebase master'
alias yrbs='yadm rebase --skip'
alias yrev='yadm revert'
alias yrh='yadm reset'
alias yrhh='yadm reset --hard'
alias yrm='yadm rm'
alias yrmc='yadm rm --cached'
alias yrmv='yadm remote rename'
alias yrrm='yadm remote remove'
alias yrs='yadm restore'
alias yrset='yadm remote set-url'
alias yrss='yadm restore --source'
alias yrt='cd "$(yadm rev-parse --show-toplevel || echo .)"'
alias yru='yadm reset --'
alias yrup='yadm remote update'
alias yrv='yadm remote -v'
alias ysb='yadm status -sb'
alias ysd='yadm svn dcommit'
alias ysh='yadm show'
alias ysi='yadm submodule init'
alias ysps='yadm show --pretty=short --show-signature'
alias ysr='yadm svn rebase'
alias yss='yadm status -s'
alias yst='yadm status'
alias ysta='yadm stash push'
alias ystaa='yadm stash apply'
alias ystall='yadm stash --all'
alias ystc='yadm stash clear'
alias ystd='yadm stash drop'
alias ystl='yadm stash list'
alias ystp='yadm stash pop'
alias ysts='yadm stash show --text'
alias ystu='yadm stash --include-untracked'
alias ysu='yadm submodule update'
alias ysw='yadm switch'
alias yswc='yadm switch -c'
alias ytl='gtl(){ yadm tag --sort=-v:refname -n -l "${1}*" }; noglob gtl'
alias yts='yadm tag -s'
alias ytv='yadm tag | sort -V'
alias yunignore='yadm update-index --no-assume-unchanged'
alias yunwip='yadm log -n 1 | grep -q -c "\-\-wip\-\-" && yadm reset HEAD~1'
alias yup='yadm pull --rebase'
alias yupa='yadm pull --rebase --autostash'
alias yupav='yadm pull --rebase --autostash -v'
alias yupv='yadm pull --rebase -v'
alias ywch='yadm whatchanged -p --abbrev-commit --pretty=medium'
alias ywip='yadm add -A; yadm rm $(yadm ls-files --deleted) 2> /dev/null; yadm commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

#:q(){
#	read -sp "Are you sure to quit? [y/n]:" yesno
#	if [ "$yesno" = "y" ];then
#		exit
#	done
#}

o(){
	$@ &!
}
#f(){
#	awk "{print \$$1}"
#}
f(){
	tr -s ' ' | cut -d ' ' -f $1
}

# sudo/doas
alias s='doas '
#alias sudo='doas '

# pacman/yay
alias pq='pacman_Qorder'
alias p='sudo pacman'
alias pacman='sudo pacman'
#alias yay='sudo -u build yay'
#alias 'pacman -Qord'='pacman_Qorder'	#not working
#alias yay='paru'

# systemctl
# # system-wide
alias sc='systemctl' #should be stock in zsh, though I had to manually add it, otherwise it whouldn't have worked
alias sce='systemctl enable'
alias scd='systemctl disable'
alias scs='systemctl status'
alias sci='systemctl start' #i=inizia ('start' in italian)
alias scf='systemctl stop' #f=ferma ('stop' in italian)
alias scr='systemctl restart'
# # user
alias scu='systemctl --user'
alias scue='systemctl --user enable'
alias scud='systemctl --user disable'
alias scus='systemctl --user status'
alias scui='systemctl --user start' #i=inizia (start in italian)
alias scuf='systemctl --user stop' #f=ferma (stop in italian)
alias scur='systemctl --user restart'
# # sudo/doas
# # # system-wide
alias ssc='systemctl' #should be stock in zsh, though I had to manually add it, otherwise it whouldn't have worked
alias ssce='doas systemctl enable'
alias sscd='doas systemctl disable'
alias sscs='doas systemctl status'
alias ssci='doas systemctl start' #i=inizia (start in italian)
alias sscf='doas systemctl stop' #f=ferma (stop in italian)
# # user
alias sscu='doas systemctl --user'
alias sscue='doas systemctl --user enable'
alias sscud='doas systemctl --user disable'
alias sscus='doas systemctl --user status'
alias sscui='doas systemctl --user start' #i=inizia (start in italian)
alias sscuf='doas systemctl --user stop' #f=ferma (stop in italian)

# ls
alias ls='ls --color=tty -b'
alias l='ls -lah --author -b'
alias lsd='ls -d .*'
alias la='ls -lAh --author -b'
alias lsdot='find . -maxdepth 1 -name ".*" | sort'
alias lsdu="paste <(du -s * | sort -n | cut -f-1) <(du -s * | sort -n | cut -f2 | xargs -d'\n' ls --color=always -d -U)"
alias lsdur="paste <(du -s * | sort -rn | cut -f-1) <(du -s * | sort -rn | cut -f2 | xargs -d'\n' ls --color=always -d -U)"
alias lsdt="paste <(/bin/ls -tr | xargs -d'\n' du -s | cut -f1) <(/bin/ls -tr | xargs -d'\n' du -s | cut -f2- | xargs -d'\n' ls -d --color=always -U)"
alias lsdtr="paste <(/bin/ls -t | xargs -d'\n' du -s | cut -f1) <(/bin/ls -t | xargs -d'\n' du -s | cut -f2- | xargs -d'\n' ls -d --color=always -U)"
alias ll="l -trc"
alias ltrc='l -tr'
#alias ls='ls --color -p'
#alias l='ls -lah' #already set in zsh by default

# ncdu
alias ncdu='ncdu2'
alias ncu='s ncdu -x / -eo ~/xfs_map_ncdu; ncdu /home -x -eo ~/home_map_ncdu;ncdu /C -eo ~/c_map_ncdu;ncdu /D -eo ~/d_map_ncdu;ncdu /F -eo ~/f_map_ncdu;ncdu /I -eo ~/i_map_ncdu;ncdu /Q -eo ~/q_map_ncdu;ncdu /A -eo ~/a_map_ncdu'
alias ncx='ncdu -ef ~/xfs_map_ncdu'
alias nch='ncdu -ef ~/home_map_ncdu'
alias ncc='ncdu -ef ~/c_map_ncdu'
alias ncd='ncdu -ef ~/d_map_ncdu'
alias ncf='ncdu -ef ~/f_map_ncdu'
alias nci='ncdu -ef ~/i_map_ncdu'
alias ncq='ncdu -ef ~/q_map_ncdu'
alias nca='ncdu -ef ~/a_map_ncdu'

# sl
alias sl='sl -l'

# du
alias lad='du -d 1'
alias lads='du -d 1 | sort -n'
alias duhs='du -hs'
alias duse='du -s * | sort -n'

# find
alias finda='doas find / -path /disks -prune -or -path /C -prune -or -path /D -prune -or -path /F -prune -or -path /I -prune -or'
alias findc='find . -path /disks -prune -or'
#alias f='find -iname'
alias f-i='find -name'
alias fr='find -regextype gnu-awk -regex'
alias fri='find -regextype gnu-awk -iregex'
#alias lsdot='find . -maxdepth 1 -name ".*" -print | xargs ls --color=tty' #-type f

# fd
alias fd='fd -HI'
alias fdi='fd'
alias fs='fd -d 1'
#fs(){
#	arg="$@"
#	fd -d 1 "$arg"
#}
#alias fs='fd -d 1'

# file management
alias cp='cp -vi'
alias rm='rm -vI'
alias mv='mv -vi'
alias ln='ln -v'
alias rename='rename -vi'
alias prename='perl-rename -vi'
alias mkdir='mkdir -vp'
alias rmdir='rmdir -v'
alias mkdirn='mkdir'
alias rmdirn='rmdir'
alias chown='chown -v'
alias chmod='chmod -v'
alias chgrp='chgrp -v'

#alias scp='doas cp -vi'
#alias srm='doas rm -vI'
#alias smv='doas mv -vi'
#alias smkdir='doas mkdir -vp'
#alias srmdir='doas rmdir -v'
#alias smkdirn='doas mkdir'
#alias srmdirn='doas rmdir'

alias ssh_scp='scp'

rsycl(){
	ff="/F/free_ck/anime"
	rsync --progress -xvrlp -u $@ "$ff"
}
alias rsync='rsync --progress'
alias rsyncf='rsync --progress -xvaHAX -c --cc xxh3'
alias rsyncfc='rsync --progress -xvaHAX'

## yadm
#alias ya='yadm add --verbose'
#alias yst='yadm status'

# grep
alias grep='grep --color -n -H -i'
alias griep='grep --color -n -H'
alias pcregrep='pcregrep --color -i'
alias pcregriep='pcregrep --color'
alias -g \?g='| grep -E'
alias -g \?ge='| grep '
alias -g \?l='| less'
#alias -g \?n='ls -Atr | tail '
\?n() {
	h=${2:=$1}
	#echo $1 $2
	/bin/ls -Atr | tail $1 | head -${h#-}
}
alias -g \?x='| xclip -selection clipboard'
alias -g \?x='| xclip -selection clipboard'
alias -g \?s='| awk '"'"'{res+=$1}END{print res}'"'" # -> alias -g \?s='| awk '{res+=$1}END{print res}'' (from https://stackoverflow.com/a/1250279/12206923)

# vim
alias v='vim'
alias vs='doas vim'

# udevil
alias udm='udevil mount' #export DISPLAY=:0.0 
alias udum='udevil unmount' #export DISPLAY=:0.0 
alias uduma='udevil unmount /media/rem*/*' #export DISPLAY=:0.0 

# mount 
alias mount='mount -vl'
alias umount='umount -v'

# screencast
#alias recordmydesktop='recordmydesktop --on-the-fly-encoding'
#alias recmydesk='recordmydesktop --no-wm-check --device pulse --stop-shortcut Control+Delete --pause-shortcut Control+Insert --on-the-fly-encoding -o /home/koraynilay/Videos/screencasts/$(date +%Y-%m-%d_%H-%M-%S).ogv && dunstify -a recordmydesktop "video saved in ~/Videos/screencasts"'

# neofetch
alias nfl='neofetch | lolcat'
alias nf='neofetch'

# mpc
alias mpc_reset_song='mpc prev;mpc next;mpc pause'
alias mpc_restart_song='mpc prev;mpc next'

# other gui/tui programs
alias peaclock='peaclock --config-dir ~/.config/peaclock'
alias etcGTK='doas -b ettercap -G'
alias xo='xdg-open'
alias ecwd='pcmanfm-qt . &!'
#alias dragon='dragon-drop -v'
alias dr='dragon-drop -v'
alias dra='dragon-drop -av'
evince_d(){
	evince $1 &!
}
gen_rand(){
	if [[ -z $1 || -z $2 ]];then echo "$0 [chars (regex)] [length]"
	else cat /dev/urandom | tr -dc $1 | fold -w $2 | head -n 1 | tr -d '\n'
	fi
}

# others cli programs
alias rgt='gio trash'
alias 7z-ultra='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
7zx(){
	for file in $@;do
		7z x "$file"
	done
}
7zl(){
	for file in $@;do
		7z l "$file"
	done
}
alias cip='curl ifconfig.me && echo'
alias fdisk='doas fdisk'
alias tm='termite -d . >/dev/null 2>&1 &!'
alias arp-nmap='nmap -sn 192.168.1.0/24'
#alias ps='ps fauex'
alias pss='ps -elyf | grep'
alias lsxlk='lsblk -o NAME,MAJ:MIN,RM,SIZE,TYPE,FSTYPE,MOUNTPOINT,LABEL'
alias lcz='ln -s ../drive_c c:; ln -s / z:'
alias k='killall -v -i' # SIGTERM
alias kk='killall -v -9 -i' # SIGKILL
alias kp='/bin/kill --verbose ' # SIGKILL
alias pk='killall -v -i -r ' # SIGKILL
print_colors(){ #and_numbers
	#for code in {000..255}; do print -P -- "$code: %F{$code}Color%f"; done
	for code in {000..255};do
		print -P -- "$code: %F{$code}Color%f"
	done
}
reorder_album(){
	s=0 # could also use bash substitions, but I prefer this
	s=$(mpc playlist -f "%album% - %title% - %artist%" | nl | grep -P $1 | tail -1 | cut -f1 | sed 's/\s//g')
	s1=$(mpc playlist -f "%album% - %title% - %artist%" | nl | grep -P $1 | head -1 | cut -f1 | sed 's/\s//g')
	# s=$(mpc playlist -f "%album% - %title% - %artist%" | nl | grep "$@" | tail -1 | cut -f1 | sed 's/\s//g')
	# s1=$(mpc playlist -f "%album% - %title% - %artist%" | nl | grep "$@" | head -1 | cut -f1 | sed 's/\s//g')
	if [ $s -eq 0 ];then
		echo "error, needs the position"
	else
		for a in {$((s-$((s-s1))))..$s};do
			mpc move --verbose $s $a # ma --verbose non va
		done
	fi
}
lln(){ #per olimpiadi territoriali
	ln -is ${1}_input_${2}.txt input.txt
}
# from https://superuser.com/a/1503113:
# SP  ' '  0x20 = · U+00B7 Middle Dot
# TAB '\t' 0x09 = ￫ U+FFEB Halfwidth Rightwards Arrow
# CR  '\r' 0x0D = § U+00A7 Section Sign (⏎ U+23CE also works fine)
# LF  '\n' 0x0A = ¶ U+00B6 Pilcrow Sign (was "Paragraph Sign")
#alias whitespace="sed 's/ /·/g;s/\t/￫/g;s/\r/§/g;s/$/¶/g'"
alias whitespace="sed 's/ /·/g;s/\t/\t￫/g;s/\r/\r§/g;s/$/¶/g'"
alias gcc='gcc -Wall -Wextra -pedantic'
alias gccw='gcc'
gcck(){
	gcc -Wall -Wextra -pedantic -pedantic-errors "$1" -o "${1%.*}" ${@:2}
}
g++k(){
	g++ -Wall -Wextra -pedantic -pedantic-errors "$1" -o "${1%.*}" ${@:2}
}
zilk(){ #zip only
	case $1 in
		j|java)		ext="java";;
		c)		ext="c";;
		cpp|c++)	ext="cpp";;
		lua)		ext="lua";;
		py|python|p)	ext="py";;
		*)		ext="$1";;
	esac
	name="$(basename $PWD).zip"
	zip $name *.$ext $@
}
zil(){ #zip and dragon-drag-and-drop
	zilk $@
	name="$(basename $PWD).zip"
	dragon $name
	rm $name
}
alias wip='export WINEPREFIX=$PWD/.wine'
alias lnsw='ln -s / z:;ln -s /C k:;ln -s /D d:;ln -s /F f:;ln -s /I i:;ln -s /Q q:;ln -s /A a:'
forf(){
	OFS=$IFS
	IFS=$'\n'
	[[ -z $1 ]] && echo -e "Usage: $0 [q (optional)] [file] [cmd]" && return 1
	file_arg=1
	cmd_arg=2
	echo=1
	if [ "$1" = "q" ];then
		echo=0
		file_arg=2
		cmd_arg=3
	fi
	for line in $(cat "${(P)file_arg}");do
		if [ $echo -eq 1 ];then
			echo $line
		fi
		eval "${(P)cmd_arg}"
	done
	IFS=$OFS
}
checkdir(){
	if [ -d $1 ];then
		echo 1
		return 1
	else
		echo 0
		return 0
	fi
}
getcreate_ntfs(){
	date --date=@$(getfattr --only-values -n system.ntfs_crtime_be "$1" | perl -MPOSIX -0777 -ne '$t = unpack("Q>"); print $t/10000000-11644473600')
}
alias watch01='watch -n 0.1 '
alias watch05='watch -n 0.5 '
alias watch1='watch -n 1 '
alias watch='watch '
alias cdc='cd .config'
diffstr() {
	diff <(echo $1) <(echo $2)
}
alias k1='kill %1'
alias kk1='kill -9 %1'
alias jwine='LC_ALL=ja_JP.UTF-8 wine'
alias stmux='systemd-run --scope --user tmux'
alias ninbck='fd -e sav -x cp -v {} ~/bck_savegames/nintendo'
alias e='echo'
alias ee='echo -e'
alias ne='echo -ne'
alias tarp='tar --acls --xattrs --preserve-permissions '
alias va='v appunti_$(date +%Y-%m-%d_%H-%M-%S).txt'
rv() {
	mv $1 ${1}_tmp
	mv $2 $1
	mv ${1}_tmp $2
}
alias rr='exec zsh'
alias gacp='gl;gst;gaa; gc -m "$(date +%Y-%m-%d_%H-%M-%S)";gp'
alias cg='cd $ggrassi'
alias pp='PULSE_LATENCY_MSEC=45 rpcs3 &!'
# relb
linux_server_build() {
	output_folder="/Q/relb/ll"
	ue4_path="/Q/relb/SourceUE4"
	game_server_path="/Q/relb/relb-game-server"
	PATH="$ue4_path/../clang35_prebuilt/bin:$PATH" $ue4_path/Engine/Build/BatchFiles/RunUAT.sh BuildCookRun -project=$game_server_path/ShooterGame.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompileeditor -ue4exe=UE4Editor -utf8output -server -serverplatform=Linux -noclient -build -cook -map=B_redfalls+Highrise_Collisions_Temp+Highrise_Vista+Highrise_Lights+Highrise_Audio+ShooterEntry+Highrise_Gameplay+Highrise_Meshing+Sanctuary+Highrise+clash+clash_gameplay+clash_gameplay_tdm+clash_gameplay_killconf+detour+dev_gym+gateway+grandview_gameplay+grandview+grandview_gameplay_elimination+grandview_gameplay_rush+mammoth+namsan+promenade+promenade_night+reactor+reactor_night+redfalls+redfalls_gameplay+redfalls_gameplay_blitz+redfalls_gameplay_turfwar+C_redfalls+L_redfalls+redfalls_bloodmoon+station_gameplay+station_gameplay_blitz+station+station_gameplay_turfwar+trench+tutorial+B_vertigo+C_vertigo+vertigo+L_vertigo -unversionedcookedcontent -compressed -stage -package -stagingdirectory=$output_folder -cmdline=" -Messaging" -addcmdline="-SessionId=4745CDB71B080E0A003702C3899401A6 -SessionOwner='koraynilay' -SessionName='ciao'" -compile
}
menu_server_start() {
	relb_base_path="/Q/relb"
	relb_menu_server="$relb_base_path/relb-server"
	cd $relb_menu_server
	yarn dev
}
game_server_start() {
	relb_base_path="/Q/relb"
	relb_game_server="$relb_base_path/ll/LinuxServer"
	cd $relb_game_server
	./ShooterGameServer.sh -log -token=__secret__ -menuhost=http://localhost:4000
}
relb_cd() {
	relb_base_path="/Q/relb"
	case $1 in
		m|menu-server) cd $relb_base_path/relb-server;;
		g|game-server) cd $relb_base_path/relb-game-server/Source;;
		l|linux-build) cd $relb_base_path/ll/LinuxServer;;
		ue4|SourceUE4_koraynilay) cd $relb_base_path/SourceUE4_koraynilay;;
		w|wine|prefix|wineprefix) cd $relb_base_path/.wine;;
		*) cd $relb_base_path;;
	esac
}
pull_relb() {
	relb_cd m
	git pull
	relb_cd ue4
	git pull
}
pull_g() {
	relb_cd g
	git stash push
	git lfs fetch upstream --all
	git pull upstream master #upstream
	git pull origin master #my fork
	echo "RUN: git stash pop"
}
relb() {
	relb_base_path="/Q/relb"
	case $1 in
		l|linux-server-build) linux_server_build;;
		y|menu-server-start) menu_server_start;;
		s|game-server-start) game_server_start;;
		u|update|git-pull|pull) pull_relb;;
		gu|) pull_g;;
		v|vs|lb-launcher-settings|settings) vim $relb_base_path/.wine/drive_c/users/koraynilay/AppData/Roaming/AerialNinjaLauncher/settings.ini;;
		r) PATH="$relb_base_path/clang35_prebuilt/bin:$PATH" /usr/bin/mono "$relb_base_path/SourceUE4/Engine/Binaries/DotNET/UnrealBuildTool.exe" ShooterGame Development Linux -project="$relb_base_path/relb-game-server/ShooterGame.uproject" -editorrecompile -progress -noubtmakefiles -NoHotReloadFromIDE;;
		cd) relb_cd $2;;
		*) printf "usage:\nrelb [l|cd]\n";;
	esac

}
alias rl='relb l'
# end relb

# vcsh
vca()    { vcsh "$1" add -v ${@:2} }
vcm()    { vcsh "$1" commit -m ${@:2} }
vcp()    { vcsh "$1" push }
vcst()   { vcsh "$1" status --untracked=no }
vcrm()   { vcsh "$1" rm --cached }
vcdi()   { vcsh "$1" diff }
vcl()    { vcsh "$1" pull }
vclg()   { vcsh "$1" log --stat }
vclgg()  { vcsh "$1" log --graph }
vclgga() { vcsh "$1" log --graph --decorate --all }
vclgm()  { vcsh "$1" log --graph --max-count=10 }
vclgp()  { vcsh "$1" log --stat -p }
vclo()   { vcsh "$1" log --oneline --decorate }
vclod()  { vcsh "$1" log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' }
vclods() { vcsh "$1" log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short }
vclog()  { vcsh "$1" log --oneline --decorate --graph }
vcloga() { vcsh "$1" log --oneline --decorate --graph --all }
vclol()  { vcsh "$1" log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' }
vclola() { vcsh "$1" log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all }
vclols() { vcsh "$1" log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat }

# mac change
alias macon='doas mac_change on'
alias macoff='doas mac_change off'

# lgfs
alias lsg='lgfs'
alias lg='lgfs -o "lah"'

# missions_bot
alias hbots='heroku ps:scale worker=0 -a timwbot2'
alias hbotr='heroku ps:scale worker=1 -a timwbot2'
alias hbotl='heroku logs -a timwbot2 --tail'
alias hbotrr='heroku restart -a timwbot2'

alias hak='heroku accounts:set koraynilay'
alias hat='heroku accounts:set timw'

# xfsdump
alias xfs0dump='doas xfsdump -p 1 -e -l 0 -L arch_root_folder -M root_folder -f /D/linux/xfs/arch.xfsdump /'
alias xfs1dump='doas xfsdump -p 1 -e -l 1 -L arch_root_folderlvl1 -M root_folder -f /D/linux/xfs/arch_lvl_1.xfsdump /'
alias xfs2dump='doas xfsdump -p 1 -e -l 2 -L arch_root_folderlvl2 -M root_folder -f /D/linux/xfs/arch_lvl_2.xfsdump /'
alias xfs3dump='doas xfsdump -p 1 -e -l 3 -L arch_root_folderlvl3 -M root_folder -f /D/linux/xfs/arch_lvl_3.xfsdump /'
alias xfs4dump='doas xfsdump -p 1 -e -l 4 -L arch_root_folderlvl4 -M root_folder -f /D/linux/xfs/arch_lvl_4.xfsdump /'
alias xfs5dump='doas xfsdump -p 1 -e -l 5 -L arch_root_folderlvl5 -M root_folder -f /D/linux/xfs/arch_lvl_5.xfsdump /'
alias xfs6dump='doas xfsdump -p 1 -e -l 6 -L arch_root_folderlvl6 -M root_folder -f /D/linux/xfs/arch_lvl_6.xfsdump /'
alias xfs7dump='doas xfsdump -p 1 -e -l 7 -L arch_root_folderlvl7 -M root_folder -f /D/linux/xfs/arch_lvl_7.xfsdump /'
alias xfs8dump='doas xfsdump -p 1 -e -l 8 -L arch_root_folderlvl8 -M root_folder -f /D/linux/xfs/arch_lvl_8.xfsdump /'
alias xfs9dump='doas xfsdump -p 1 -e -l 9 -L arch_root_folderlvl9 -M root_folder -f /D/linux/xfs/arch_lvl_9.xfsdump /'

alias rsyncroot='doas rsync -xvaHAX --progress --delete --exclude={"/dev/*","/proc/*","/sys/*","/run/*","/mnt/*","/media/*/*","/lost+found","/home/*","/swpfl.sys"} / /D/linux/backup'
alias rsynchome='doas rsync -xvaHAX --progress --delete /home /D/linux/backup_homes'

#xrandr --output DVI-D-0 --mode 1920x1080 #to change res
