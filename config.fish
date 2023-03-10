if not status is-interactive
    exit
end

for file in ~/.config/fish/inc/*
    source $file
end

set -x DENO_INSTALL /Users/tannermccoy/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

thefuck --alias | source

bass source ~/.config/fish/scripts/prettytable.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/tannermccoy/Development/anaconda3/bin/conda
    eval /Users/tannermccoy/Development/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

fish_add_path /Users/tannermccoy/.spicetify
