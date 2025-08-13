fish_config theme choose "Dracula Official"
source ~/.shell_aliases
set -gx PATH $HOME/scripts $PATH

if status --is-login
	set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
