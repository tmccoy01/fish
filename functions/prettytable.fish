set -l _prettytable_char_top_left "┌"
set -l _prettytable_char_horizontal "─"
set -l _prettytable_char_vertical "│"
set -l _prettytable_char_bottom_left "└"
set -l _prettytable_char_bottom_right "┘"
set -l _prettytable_char_top_right "┐"
set -l _prettytable_char_vertical_horizontal_left "├"
set -l _prettytable_char_vertical_horizontal_right "┤"
set -l _prettytable_char_vertical_horizontal_top "┬"
set -l _prettytable_char_vertical_horizontal_bottom "┴"
set -l _prettytable_char_vertical_horizontal "┼"

set -l _prettytable_color_blue "0;34"
set -l _prettytable_color_green "0;32"
set -l _prettytable_color_cyan "0;36"
set -l _prettytable_color_red "0;31"
set -l _prettytable_color_purple "0;35"
set -l _prettytable_color_yellow "0;33"
set -l _prettytable_color_gray "1;30"
set -l _prettytable_color_light_blue "1;34"
set -l _prettytable_color_light_green "1;32"
set -l _prettytable_color_light_cyan "1;36"
set -l _prettytable_color_light_red "1;31"
set -l _prettytable_color_light_purple "1;35"
set -l _prettytable_color_light_yellow "1;33"
set -l _prettytable_color_light_gray "0;37"

# Somewhat special colors
set -l _prettytable_color_black "0;30"
set -l _prettytable_color_white "1;37"
set -l _prettytable_color_none "0"

function __prettytable_prettify_lines
    cat - | sed -e "s@^@(_prettytable_char_vertical)"
end
