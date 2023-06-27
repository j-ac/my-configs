# .bashrc

HISTSIZE= HISTFILESIZE= # Infinite history
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/usr/bin:$HOME/bin:" ]]
then
    PATH="$HOME/usr/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

#. "$HOME/.cargo/env"
source ~/.shell_aliases # Used by multiple of my shells so only one change affects them all
