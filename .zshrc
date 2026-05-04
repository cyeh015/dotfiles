
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

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/opt/homebrew/bin/mamba';
export MAMBA_ROOT_PREFIX='/Users/angus/.local/share/mamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
