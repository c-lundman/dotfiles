function jd
    set dir (fd --type d $argv | fzf)
    test -n "$dir"; and cd "$dir"; and pwd; and tree -L 2
end
