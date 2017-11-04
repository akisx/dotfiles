export LANG=ja_JP.UTF-8

PROMPT='%n@%C%% '

autoload -Uz compinit && compinit
autoload -Uz colors && colors
autoload -Uz url-quote-magic    

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH