function default --argument val default
    if not string_empty $val
        echo "$val"
    else
        echo "$default"
    end
end