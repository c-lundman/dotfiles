function jd
    set dir (fd --type d $argv | fzf)
    test -n "$dir"; and cd "$dir"; and pwd; and tree -C -L 2 --gitignore
end
