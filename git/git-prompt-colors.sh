override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  Time12a="\$(date +%H:%M)"
  PathShort="\w"

  # These are the color definitions used by gitprompt.sh
  GIT_PROMPT_PREFIX="["                 # start of the git info string
  GIT_PROMPT_SUFFIX="]"                 # the end of the git info string
  GIT_PROMPT_SEPARATOR="|"              # separates each item

  # Unicode symbols:
  # http://www.unicodemap.org/range/55/Miscellaneous_Symbols/

  GIT_PROMPT_BRANCH="${Green}"        # the git branch that is active in the current directory
  # GIT_PROMPT_STAGED="${BoldGreen}●"           # the number of staged files/directories
  GIT_PROMPT_STAGED="${BoldGreen}✚"           # the number of staged files/directories
  # GIT_PROMPT_CONFLICTS="${Red}✖"        # the number of files in conflict
  GIT_PROMPT_CONFLICTS="${Red}✘"        # the number of files in conflict
  # GIT_PROMPT_CHANGED="${YELLOW}✚"         # the number of changed files
  GIT_PROMPT_CHANGED="${YELLOW}★"         # the number of changed files

  GIT_PROMPT_REMOTE=" "                 # the remote branch name (if any) and the symbols for ahead and behind
  # GIT_PROMPT_UNTRACKED="${RED}…"       # the number of untracked files/dirs
  GIT_PROMPT_UNTRACKED="${RED}☉"       # the number of untracked files/dirs
  # GIT_PROMPT_STASHED="${BoldBlue}⚑"     # the number of stashed files/dir
  GIT_PROMPT_STASHED="${BoldBlue}♺"     # the number of stashed files/dir
  GIT_PROMPT_CLEAN="${BoldGreen}✔"      # a colored flag indicating a "clean" repo

  GIT_PROMPT_COMMAND_OK="${Green}✔ "    # indicator if the last command returned with an exit code of 0
  GIT_PROMPT_COMMAND_FAIL="${Red}✘ "   # indicator if the last command returned with an exit code of other than 0

  GIT_PROMPT_START_USER="${Blue}${PathShort}${ResetColor}"
  GIT_PROMPT_START_ROOT="${Yellow}${PathShort}${ResetColor}"
  # GIT_PROMPT_END_USER=" \n${White}${Time12a}${ResetColor} $ "
  GIT_PROMPT_END_USER=" \n$YELLOW[\u@local $CYAN\W$YELLOW] ⚡${ResetColor} "
  GIT_PROMPT_END_ROOT=" \n${White}${Time12a}${ResetColor} # "

  # Please do not add colors to these symbols
  GIT_PROMPT_SYMBOLS_AHEAD="↑·"         # The symbol for "n versions ahead of origin"
  GIT_PROMPT_SYMBOLS_BEHIND="↓·"        # The symbol for "n versions behind of origin"
  GIT_PROMPT_SYMBOLS_PREHASH=":"        # Written before hash of commit, if no name could be found
  GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="L" # This symbol is written after the branch, if the branch is not tracked

}

reload_git_prompt_colors "Custom"