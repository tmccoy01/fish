function move_last_download
    set destination (default $argv[1] .)
    mv ~/Downloads/(ls -t -A ~/Downloads/ | head -1) $destination
end