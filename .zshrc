# my_bashrc

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

case "$(uname)" in
	# macOS
	Darwin)
		# path
		source $HOME/goinfre/.brewconfig.zsh
		;;
	# Linux
	Linux)
		export EDITOR=/usr/bin/vim

		if [ -f /etc/os-release ]; then
			. /etc/os-release
		fi
		
		case "$ID" in
			# Ubuntu
			ubuntu)
				if [ -n "$WSLENV" ]; then
					PATH="$PATH"
				else
					# PATH pip
					PATH="$PATH:/home/ubuntu/.local/bin"
				fi
				;;
			# Fedora
			fedora)
				;;
			# Other OS
			*)
				;;
		esac
			;;
	*)
		;;
esac
