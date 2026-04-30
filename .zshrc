
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
