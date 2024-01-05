# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Export nvm completion settings for lukechilds/zsh-nvm zsh_plugins
# Note: This must be exported before the plugin is bundled
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

# source plugins
# This was originally from Wiesler
source ~/.dotfiles/.config/zsh/.zsh_plugins.sh

# aliases
alias ls='exa'
alias ll='exa -l -g --icons'
alias lla='ll -a'
alias vim='nvim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GPG_TTY=$(tty)
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# postgres
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
