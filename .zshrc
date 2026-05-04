
# alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"


#
# quick showing only the latest files
# --color forces --color=always, which may not work for other program that it pipes through
ls_short_func()
{
    if [ -z $1 ]
    then
        ls -lhrt --color | tail -n 10
    else
        ls -lhrt --color | tail -n $1
    fi
    return 0
}
alias lss=ls_short_func
alias ls="ls -GFh"
alias ll="ls -lh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

