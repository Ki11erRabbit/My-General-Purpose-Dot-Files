
# Clean Prompt
	# PROMPT="[%n@%m %~]$ "
	# PROMPT="【%n❭図書館に %d】"
# Prompt
	#PROMPT="[%F{magenta}%n%f%F{blue}@%f%F{green}%m%f %F{red}%d%f]$ "
	#PROMPT="【%F{magenta}%n%f%F{cyan}が%f%F{magenta}図書館に%f %F{cyan}%d%f】"
	PROMPT="【%F{magenta}%n%f%F{blue}❭%f%F{magenta}図書館に%f %F{blue}%d%f】"
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
		alias ssh='kitty +kitten ssh'	#fix for kitty terminal ssh


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
		alias ls='ls --color'
		LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5.cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
		export LS_COLORS

	# GREP Colors
		alias grep='grep --color=auto'




# Some weird NVM thing	
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Rust
	. "$HOME/.cargo/env"
# Plugins

	# Load zsh-syntax-highlighting; should be last.
		source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
