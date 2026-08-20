function jd
    # set file (fd --type d $argv | fzf --preview 'bat --color=always {}')
    set file (fd --type d $argv | fzf)
    test -n "$file"; and cd "$file"
end
