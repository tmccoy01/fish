function prompt_pwd --description "Print the current working directory, shortened to fit the prompt"
    set -l options h/help
    argparse -n prompt_pwd --max-args=0 $options -- $argv
    or return

    if set -q _flag_help
        __fish_print_help prompt_pwd
        return 0
    end

    # This allows overriding fish_prompt_pwd_dir_length from the outside (global or universal) without leaking it
    set -q fish_prompt_pwd_dir_length
    or set -l fish_prompt_pwd_dir_length 1

    # Replace $HOME with "~"
    set -l realhome ~
    set -l tmp (string replace -r '^'"$realhome"'($|/)' '~$1' $PWD)

    if [ $fish_prompt_pwd_dir_length -eq 0 ]
        echo $tmp
    else
        # Shorten to at most $fish_prompt_pwd_dir_length characters per directory
        string replace -ar '(\.?[^/]{'"$fish_prompt_pwd_dir_length"'})[^/]*/' '$1/' $tmp
    end
end


# function prompt_pwd
#     set -l path "$PWD"

#     # replacing $HOME -> ~
#     set -l path (string replace -r '^'"$HOME/notes"'($|/)' '$1' $path)
#     set -l path (string replace -r '^'"$HOME"'($|/)' '~$1' $path)
#     set -l path (string replace -r '^'"$PREFIX"'($|/)' '…$1' $path)

#     # splitting to preserve last directory
#     set -l all (string split -m 1 -r / $path)
#     set -l path $all[1]
#     set -l last $all[2..]

#     # shortening and then rejoining
#     echo -n (string join / (string replace -ar '(\.?[^/]{1})[^/]*' '$1' $path) $last )
# end
