# function __fish_default_command_not_found_handler
    
# end 

# function parse_git_branch -d 'Used to show git info in prompt'
#     set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)

#     if [ $status -eq 0 ]

#         if [ $branch = "HEAD" ]
#             set branch (git rev-parse --short HEAD 2>/dev/null)
#         end

#         echo -n ' on '
#         set_color purple
#         echo -n $branch

#         set git_status (git status --porcelain 2>/dev/null)
#         if test -n (echo $git_status)
#             echo -n '*'
#         end

#         set_color normal
#     end
# end

# function fish_prompt -d 'Set custom prompt'
#     if not set -q __fish_prompt_hostname
#         set -g __fish_prompt_hostname (hostname | cut -d . -f 1)
#     end

#     set_color red
#     echo -n $USER
#     set_color normal
#     echo -n ' at '

#     set_color D80
#     echo -n $__fish_prompt_hostname
#     set_color normal
#     echo -n ' in '

#     set_color $fish_color_cwd
#     echo -n (prompt_pwd)

#     set_color normal
#     parse_git_branch
#     echo

#     set_color normal
#     echo -n '$ '

    # set -l last_status $status
    # if not set -q __fish_prompt_normal
    #     set -g __fish_prompt_normal (set_color normal)
    # end

    # set_color normal D80
    # echo -n $__fish_prompt_hostname
    # set_color normal

    # set_color red
    # echo -n $USER
    # set_color normal
    # echo -n ': '

    # set_color $fish_color_cwd
    # if not test $PWD = $HOME
    #     echo -n (basename $PWD)' '
    # end
    # set_color normal

    # if not test $last_status -eq 0
    #     set_color $fish_color_error
    # end

    # if set -q VIRTUAL_ENV
    #     echo -s -n (set_color -b blue) '$' (set_color normal)
    # else
    #     echo -s -n '$'
    # end
    # echo -n '$ '
    # set_color normal

# end

##### RIDER THEME START #####
function _rider_theme_git_branch_name
	echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function fish_prompt
	# this must be the first line
	set -l last_status $status

	set -l yellow (set_color yellow)
	set -l green (set_color green)
	set -l normal (set_color normal)
	set -l magenta (set_color magenta)
	set -l red (set_color red)
	set -l blue (set_color blue)
	set -l cyan (set_color cyan)
	set -l gray (set_color 555)

	set -l cwd (prompt_pwd)

	if test $last_status -eq 0
		set status_indicator $green"➤"
	else
		set status_indicator $red"➤"
	end

	if [ (_rider_theme_git_branch_name) ]
		if test (_rider_theme_git_branch_name) = 'master'
			set -l git_branch (_rider_theme_git_branch_name)
			set git_info "$cyan ($red$git_branch$cyan)$normal"
		else if test (_rider_theme_git_branch_name) = 'develop'
			set -l git_branch (_rider_theme_git_branch_name)
			set git_info "$cyan ($yellow$git_branch$cyan)$normal"
		else
			set -l git_branch (_rider_theme_git_branch_name)
			set git_info "$cyan ($green$git_branch$cyan)$normal"
		end
	end

	set -l lambda "߷"

	echo "$green$USER $magenta$lambda $blue$cwd"
    echo -n "$status_indicator$git_info $normal"
end


