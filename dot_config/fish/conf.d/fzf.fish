# setup fzf fuzzy finding tui
if status is-interactive
    [ "$(command -v fzf)" ] && eval "$(fzf --fish)"
end
