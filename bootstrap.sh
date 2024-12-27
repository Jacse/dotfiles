#!/usr/bin/env sh

# git pull origin master;

function doIt() {
	rsync -avh --no-perms config/ ~/.config;

	rsync -avh --no-perms dots/ ~/;

  # Ensure all sketchybar scripts are executable
  find ~/.config/sketchybar -type f -name "*.sh" -exec chmod +x {} \;
}

echo "$1";

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
