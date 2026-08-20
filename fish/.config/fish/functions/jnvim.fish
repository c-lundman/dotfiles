function jnvim
    set file (fd --type f $argv | fzf --preview 'bat --color=always {}')
    test -n "$file"; and nvim "$file"
end
