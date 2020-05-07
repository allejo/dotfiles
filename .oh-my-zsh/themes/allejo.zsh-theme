# IntelliJ IDE Terminals

find_up() {
  path=$(pwd)
  while [[ "$path" != "" && ! -e "$path/$1" ]]; do
    path=${path%/*}
  done
  echo "$path"
}

intellij_project() {
  if [[ "$TERMINAL_EMULATOR" == JetBrains* ]]; then
    projectPath=$(find_up ".idea")
    projectName=$(basename "$projectPath")

    relativePath=${$(pwd)#$projectPath}

    prefix=""

    if [[ ! -z "$projectName" ]]; then
      prefix="[$projectName] "
    else
      relativePath=$(pwd | sed -E -e 's#.+Dropbox/##g')
    fi

    if [[ ! -z "$relativePath" ]]; then
        echo "$prefix%{$fg[yellow]%}(${relativePath#/})%{$reset_color%} "
    else
        echo "$prefix"
    fi
  fi
}

PROMPT='%{$fg[white]%}$(intellij_project)%{$reset_color%}$(git_prompt_info)\$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
