function cdf
    set file (fd --type d | fzf --preview 'bat --color=always {}')
    test -n "$file"; and cd "$file"
end
