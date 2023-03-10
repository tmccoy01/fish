function describe_functions -d 'Output a list of all function descriptions'
    for file in ~/.config/fish/functions/*.fish
        set -l d (basename $file .fish)
        describe $d
    end
end