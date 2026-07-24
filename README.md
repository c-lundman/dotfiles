# My dotfiles

For easy setup of new systems. Clone this repo into ~/dotfiles, cd into the dotfiles folder, and run ./bootstrap.sh.

## Initial setup

```
sudo dnf install git
git config --global user.name "My Name"
git config --global user.email "me@gmail.com"
ssh-keygen -t ed25519 -C "me@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

copy the full output from the cat command, log into GitHub in the browser and add the copied SSH key.

After this, do:

```
ssh -T git@github.com
```

## Clone the dotfiles repo and run the bootstrap

Be located in the home folder. Then:

```
git clone git@github.com:c-lundman/dotfiles.git
cd dotfiles
./bootstrap.sh
```

