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
export MANGOHUD=1
export PICO_SDK_PATH=/home/pranavtaysheti/Programs/pico/pico-sdk/
export ARDUINOPATH=/usr/share/arduino/
export TIDDLYWIKI_PLUGIN_PATH=~/Programs/tiddlywiki/plugins/
export TIDDLYWIKI_THEME_PATH=~/Programs/tiddlywiki/themes/
export TIDDLYWIKI_LANGUAGE_PATH=~/Programs/tiddlywiki/languages/
export TIDDLYWIKI_EDITION_PATH=~/Programs/tiddlywiki/editions/
