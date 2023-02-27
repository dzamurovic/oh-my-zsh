# Personalized!

# Grab the current date (%D) and time (%T) wrapped in {}: {%D %T}
DALLAS_CURRENT_TIME_="%{$fg[white]%}{%{$fg[yellow]%}%D %T%{$fg[white]%}}%{$reset_color%}"
# Grab the current machine name: muscato
DALLAS_CURRENT_MACH_="%{$fg[green]%}%m%{$fg[white]%}:%{$reset_color%}"
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
# DALLAS_CURRENT_LOCA_="%{$fg[gray]%}%~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)"
# DALLAS_CURRENT_LOCA_="%{$fg[gray]%}%~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)"
DALLAS_CURRENT_LOCA_="%{$fg[gray]%}%~\$(git_prompt_info)%{$reset_color%}"

# Grab the current username: dallas
DALLAS_CURRENT_USER_="%{$fg[cyan]%}%n%{$reset_color%}"
# Use a $ for normal users and a # for privelaged (root) users.
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.$)%{$reset_color%}"
# For the git prompt, use a white @ and magenta text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg[magenta]%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add some mark if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="*"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[white]%}[%{$fg[magenta]%}"
ZSH_THEME_RUBY_PROMPT_SUFFIX="%{$fg[white]%}]%{$reset_color%}"

# Put it all together!
PROMPT="$DALLAS_CURRENT_TIME_\$(ruby_prompt_info)$DALLAS_CURRENT_USER_%{$fg[white]%}@$DALLAS_CURRENT_MACH_$DALLAS_CURRENT_LOCA_ $DALLAS_PROMPT_CHAR_ "
