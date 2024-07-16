# setup atuin terminal history tui
if status is-interactive
    [ "$(command -v atuin)" ] && eval "$(atuin init fish)"
end

