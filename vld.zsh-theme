#PROMPT='%{%(!.$fg_bold[red]%}⚡.$fg_bold[green]%}➜) %{$fg[cyan]%}%(4~.…/.)%3c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} %{$reset_color%}'
#RPROMPT='%(!.%{$fg[red]%}.%{$fg_bold[green]%}) %n@%m%{$reset_color%}'



ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green] %}✔"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[red]%} ➦"


ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"
ls
function prompt_char {
	if [ $UID -eq 0 ]; then echo " %{$fg[red]%}✭%{$reset_color%} "; else echo '  '; fi
}


# get the name of the branch we are on
function vim_bg_info() {
  if [[ "$(command echo $VIM)" != "" ]]; then
    echo " ⚡"
  fi
}

PROMPT='%{$reset_color%}%~%{$reset_color%} $(git_prompt_info)%{$reset_color%}$(git_prompt_ahead)%{$reset_color%}$(vim_bg_info)%(?,,%{$fg[red]%} FAIL%{$reset_color%})$(prompt_char)'

# Time on right
RPROMPT='%{$fg[black]%}%{$reset_color%}[%*]%{$reset_color%}'

LSCOLORS=Ehfxbxdxcxegedabagacad
