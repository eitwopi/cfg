# cfg

## About

A repository for tracking dot files & folders located in `$HOME`, [inspired by StreakyCobra's post](https://news.ycombinator.com/item?id=11071754)

### How does it work?
* The repository itself is bare, with working directory pointing to `$HOME` (see installation below)
* This means files are tracked without links or duplication (see benefits below)
* It is enabled through a simple alias to a git command (see usage below)

### Benefits

* No extra tooling (except an alias)
* No symlinks
* Files are tracked on a version control system
* You can use different branches for different computers
* You can replicate you configuration easily on new installation.

## Install

Install config tracking in your $HOME by running:
```sh
git clone https://github.com/eitwopi/cfg.git --bare $HOME/.cfg
echo "alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
source $HOME/.bashrc
cfg config status.showUntrackedFiles no
cfg reset HEAD
cfg update-index --assume-unchanged README.md LICENSE
# if you're me, do this... if not, use your own name/email
cfg config user.name "eitwopi"
cfg config user.email "49045944+eitwopi@users.noreply.github.com"
cfg remote set-url origin git@github.com:eitwopi/cfg.git
```

## Usage

Any file within the home folder can be versioned with normal git command options:
```sh
cfg status
cfg add .vimrc
cfg commit -m "Add vimrc"
cfg add .config/redshift.conf
cfg commit -m "Add redshift config"
cfg push
```
