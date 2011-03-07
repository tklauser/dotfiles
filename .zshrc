# .zshrc
#
# Base zshrc file which simply delegates to files in $ZDOTDIR
#
# Copyright © 2010–2011 Tobias Klauser <tklauser@distanz.ch>
#
# Source repository: git://git.distanz.ch/dotfiles/zsh.git
#
# Based on the zsh setup by martin f. krafft which can be found at:
# git://git.madduck.net/etc/zsh.git

ZDOTDIR=$HOME/.zsh
[ -f $ZDOTDIR/.zshrc ] && . $ZDOTDIR/.zshrc
