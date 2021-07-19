## Options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt appendhistory						# writes all terminal arguments into the specified file location
setopt promptsubst						# required for manual installation zsh-agnoster-theme

## History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

## Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/themes/agnoster-zsh-theme/agnoster.zsh-theme
source /usr/share/doc/pkgfile/command-not-found.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

## Alias

alias cls='~/Documents/dotfiles/scripts/alias1.sh'
alias clear='~/Documents/dotfiles/scripts/alias1.sh'

## keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## misc
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && 'ls'
}

## autostart some apps on terminal
neofetch
