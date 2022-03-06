
# Clean Prompt
	# PROMPT="[%n@%m %~]$ "
	# PROMPT="❬%n❭ 図書館に %d "
# Prompt
	#PROMPT="[%F{magenta}%n%f%F{blue}@%f%F{green}%m%f %F{red}%d%f]$ "
	#PROMPT="【%F{magenta}%n%f%F{cyan}が%f%F{magenta}図書館に%f %F{cyan}%d%f】"
	#PROMPT="❬%F{magenta}%n%f❭ %f%F{magenta}図書館に%f %F{blue}%d " #%f❭
	PROMPT="❬%F{magenta}%n%f❭ %f%F{magenta}図書館に%f %F{blue}%d
 "
	#PROMPT="[%F{magenta}%n%f%F{blue}@%f%F{green}%m%f %F{red}%~%f]$ "

# History
	HISTFILE=~/.histfile
	HISTSIZE=1500
	SAVEHIST=1000

# Configuration
	# NO Beeps
		unsetopt beep
	# Set Editor
		export EDITOR='vim'
		export VISUAL='vim'
	
	# vi mode
		bindkey -v
		export KEYTIMEOUT=1
			
	
	# setopts
		setopt autocd
	# Aliases
		alias home='cd'
		alias root='cd /'
		alias ssh='kitty +kitten ssh'		#fix for kitty terminal ssh
		alias bottom='btm'			#because my brain is small
		alias btm='btm --color default-light'	#because of my light terminal
		alias bat='bat --style plain'		#line numbers are useful but useless when copying something
		alias batf='bat --style full'		#line numbers are useful when not needing to copy something
		alias ls='exa --icons'
		alias tree='exa --tree --icons'
		alias cp='cp -iv'
		alias mv='mv -iv'
		alias rm='rm -v'
		alias lf='/usr/bin/lfrun'
		alias yewtube='yt'
		#alias nsxiv='nsxiv-env'
		alias nn='n -c -a -P p'	

		alias suckless='cd /home/ki11errabbit/Documents/Suckless-Software'		



# Basic auto/tab complete:
	autoload -U compinit
	zstyle ':completion:*' menu select
	zmodload zsh/complist
	compinit
	_comp_options+=(globdots)		# Include hidden files.

# Colorful Things

	# Does some colors thing IDK
		autoload -U colors && colors

	# LS Colors
		#alias ls='ls --color'
		#LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5.cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
		#export LS_COLORS

	# GREP Colors
		alias grep='grep --color=auto'

export PATH=/home/ki11errabbit/.local/bin:$PATH
# NNN
# CD on Quit

n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}



# Some weird NVM thing	
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Rust
	. "$HOME/.cargo/env"
# Plugins

	# Load zsh-syntax-highlighting; should be last.
		source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
