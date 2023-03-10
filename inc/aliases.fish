alias ...="cd ../../"
alias ....="cd ../../.."
alias hb="ping -c 4 homebridge.local"
alias clc="clear"
alias ca="conda activate"

# Open 'config.fish' in VS Code
alias ff="code ~/.config/fish/config.fish"

# Rick Roll in terminal
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"

function dev -d 'Go to ~/Development'
    cd ~/Development
end

function dl -d 'Go to ~/Downloads'
    cd ~/Downloads
end

function duf -d 'disk usage'
    command duf -hide special $argv1
end

function e -d 'exa (improved version of "ls")' --wraps=exa
    EXA_COLORS="da=36" exa -l --group-directories-first $argv
end
