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
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias ccat="highlight --out-format=ansi"
alias dotfiles='/usr/bin/git --git-dir=/home/tux/.dotfiles --work-tree=/home/tux'
alias intellij='/bin/intellijidea-ce'
alias close='exit'
alias quit='exit'
alias showip='hostname -I'
