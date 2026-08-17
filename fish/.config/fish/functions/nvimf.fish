function nvimf
    set file (fd --type f | fzf --preview 'bat --color=always {}')
    test -n "$file"; and nvim "$file"
end
