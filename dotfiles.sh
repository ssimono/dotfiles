#! /bin/bash

function usage {
    echo "Usage: dotfiles.sh <command>
    
Supported commands:

    list	Show all dotfiles handled by this utility
    install	Will install dotfiles in current \$HOME
    collect	Collect dotfiles into git repo
    remove	Delete dotfiles from \$HOME
"
}

base_dir=$(dirname $0)
dotfiles=$(find $base_dir -maxdepth 1 -type f -not -name `basename $0`)

if [ -z $1 ]; then
    usage;
    exit 0
fi

if [ $1 == list ]; then
    for f in $dotfiles 
    do
	echo $f
    done
elif [ $1 == install ]; then
    for f in $dotfiles
    do
	cp -v $base_dir/$f $HOME/$f
    done
elif [ $1 == collect ]; then
    for f in $dotfiles
    do
	cp -v $HOME/$f $base_dir
    done
elif [ $1 == remove ]; then
    rm -v $dotfiles
fi


