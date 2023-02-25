# zsh

**since the typescript language server is working in zsh and not in fish,**
**let's just change back to zsh since my MP20 is to get back to developing drifter.live**
**ASAP**
* [x] move the current zsh files in ~/temp-config/.config/zsh
* .oh-my-zsh
* .p10k.zsh
* .zshrc
* .zsh_history
* .zsh.pre-oh-my-zsh
* .shell.pre- oh-my-zsh
* [x] put changing the default shell to zsh insid the install script
* [x] make a zsh directory
* [x] make a .zsh_plugins.txt file for listing zsh_plugins
* [x] run `antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
* [x] create a new .zshrc file in ~
* [x] put source ~/.zsh_plugins.sh as the only line of code in .zshrc
* [x] source .zshrc
#I sourcced the .zshrc but I didn't see anything happen#
#WHEN there was only lukechilds/zsh-nvm in the .zsh_plugins.txt file#
* [x] add only romkatv/powerlevel10k since that one has a prompt
* [x] do the pipe bundle to update the .zsh_plugins.sh files
#I don't have to add anything new to .zshrc because it loads all plugins#
* [x] source the .zshrc file again
#powerlevel10k looks like it is working since the command line prompt has icons#
#... but I didn't get a prompt asking for my preferences like (Wiesler)'s video#
* [x] robbyrussell/oh-my-zsh path:plugins/colored-man-pages
#colors are showing in man pages#
* [x] robbyrussell/oh-my-zsh path:plugins/command-not-found
* [x] robbyrussell/oh-my-zsh path:plugins/git
* [x] robbyrussell/oh-my-zsh path:plugins/git-extras
* [x] robbyrussell/oh-my-zsh path:plugins/node
* [x] romkatv/powerlevel10k
* [x] rupa/z
* [x] zsh-users/zsh-autosuggestions
* [x] zsh-users/zsh-completions
* [x] zsh-users/zsh-syntax-highlighting
* [x] add aliases back to .zshrc ( nvim and ls -la )
* [x] source .zsh in .dotfiles/install after
* [x] move .zshrc to ~/dotfiles/.config/zsh/.zshrc
* [x] make symbolic link between .zshrc and ~/.dotfiles/.config/zsh/.zshrc
#ls -la is runnning WHEN I type ls

* [ ] zsh directory along with a .zshrc or is .zshrc sufficient

* [ ] get typescrpt language server running again per Wiesler) with the exception that I'm using packer to install lsp-config instead of vim-plug

* [x] run `stow zsh` from the `~/.dotfiles/.config` directory
##That's not WHAT I wanted... that put all the symbolic links in the ~/.dotfiles directory
* [ ] undo the stow zsh command

