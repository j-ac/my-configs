# Linux Configs
## How to set up the .dotfiles alias in a new environment

```bash
git clone --bare --recurse-submodules git@github.com:j-ac/my-configs.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout
```

There will probably be an issue with one or more files conflicting with ones just cloned.
Delete the files in your home directory that are conflicting and run `dotfiles checkout` again.

Now populate the submodules:

```dotfiles submodule update --init --recursive```

Then finally prevent untracked files from cluttering `dotfiles status`
```bash
dotfiles config --local status.showUntrackedFiles no
```

Now any time `dotfiles` is invoked on the command line it will function with git syntax and refer exclusively to tracked config files.
