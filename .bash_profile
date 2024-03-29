# Bash git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Load the shell dotfiles:
for file in ~/.{path,bash_prompt,exports,aliases,functions,react_functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(_ZO_ECHO=1 zoxide init --cmd j bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use 18
