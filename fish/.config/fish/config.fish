set -g fish_greeting ""
if status is-interactive
    fastfetch --logo-type small
    starship init fish | source
end

