function rmzip
    fs=./*{.zip, .gz, .tar, .bz2} begin
        [ "fs" ] || return
        rm -v $fs
    end
end