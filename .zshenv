# Colour Output

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# Standard Environment Variables

export EDITOR=vi
export VISUAL=vim
export PAGER=less

if [ -n "$DISPLAY" ]; then
	export BROWSER=firefox
else 
	export BROWSER=links
fi

# Proton and wine environment variables

#export STEAM_COMPAT_CLIENT_INSTALL_PATH=~/.local/share/Steam/
#export QT_STYLE_OVERRIDE=kvantum
