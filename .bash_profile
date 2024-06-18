if [[ "$OSTYPE" == "darwin"* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -e /home/tgroven/.nix-profile/etc/profile.d/nix.sh ]; then . /home/tgroven/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
