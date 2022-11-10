ZLE_RPROMPT_INDENT=1
# this 2 are from https://gist.github.com/knadh/123bca5cfdae8645db750bfb49cb44b0
#function prompt_preexec() {
#	timer=$(($(date +%s%0N)/100000))
#}
#function prompt_precmd() {
#	if [ $timer ]; then
#		now=$(($(date +%s%0N)/100000))
#		elapsed=$(($now-$timer))
#		point="${elapsed:0:-1}.${elapsed: -1}"
#		unset timer
#	fi
#}
zmodload zsh/datetime

prompt_preexec() {
  prompt_prexec_realtime=${EPOCHREALTIME}
}

prompt_precmd() {
  if (( prompt_prexec_realtime )); then
    local -rF elapsed_realtime=$(( EPOCHREALTIME - prompt_prexec_realtime ))
    local -rF s=$(( elapsed_realtime%60 ))
    local -ri elapsed_s=${elapsed_realtime}
    local -ri m=$(( (elapsed_s/60)%60 ))
    local -ri h=$(( elapsed_s/3600 ))
    if (( h > 0 )); then
      printf -v prompt_elapsed_time '%ih%im' ${h} ${m}
    elif (( m > 0 )); then
      printf -v prompt_elapsed_time '%im%is' ${m} ${s}
    elif (( s >= 10 )); then
      printf -v prompt_elapsed_time '%.2fs' ${s} # 12.34s
    elif (( s >= 1 )); then
      printf -v prompt_elapsed_time '%.3fs' ${s} # 1.234s
    else
      printf -v prompt_elapsed_time '%ims' $(( s*1000 ))
    fi
    unset prompt_prexec_realtime
  else
    # Clear previous result when hitting ENTER with no command to execute
    unset prompt_elapsed_time
  fi
}

# var definitions
cl="009"
symp=""

# funcs definitions
function chrt() {
	if [ -x /proc/1/root/. ] || [ /proc/1/root/. -ef / ] ;then #if in chroot put cyan prompt
		cl="cyan"
	fi
}
function is_root() {
	if [ $UID -eq 0 ];then
		symp=" #"
	fi
}

# funcs call
chrt
is_root

autoload -Uz add-zsh-hook
add-zsh-hook preexec prompt_preexec
add-zsh-hook precmd prompt_precmd

PROMPT='%{$FG[magenta]%}$symp %{$FG[$cl]%}%~%{$reset_color%} %(?:%{$FG[$cl]%}>%{$reset_color%}:%{$FG[$cl]%}%?%{$reset_color%}) '
RPROMPT='%{$reset_color%}%{$FG[white]%}${prompt_elapsed_time} %{$reset_color%}$(vi_mode_prompt_info)$(git_prompt_info) %{$FG[$cl]%}%D{%Y-%m-%d/%H:%M:%S}%{$reset_color%}%'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[014]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
