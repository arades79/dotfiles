
# Global fish settings can be added here

# utilites that should only be enabled when in interactive mode
if status is-interactive
    # atuin terminal history tui
    [ "$(command -v atuin)" ] && eval "$(atuin init fish)"

    # fzf fuzzy finding tui key bindings
    [ "$(command -v fzf)" ] && eval "$(fzf --fish)"

    # Starship prompt
	[ "$(command -v starship)" ] && source (/usr/bin/starship init fish --print-full-init | psub)
		
    # activate zoxide smart cd command replacement tui
    [ "$(command -v zoxide)" ] && eval "$(zoxide init --cmd cd fish)"
end

# better rust powered file reader
if type -q bat
	alias cat "bat"
end

# better find command
if type -q fd
	alias find "fd"
end
	
# ls aliases with eza
if [ "$(command -v eza)" ]
    alias ll='eza -alhH --icons=auto --group-directories-first'
    alias l.='eza -d .*'
    alias ls='eza'
    alias l1='eza -1'
end

# ugrep for grep
if [ "$(command -v ug)" ]
    alias grep='ug'
    alias egrep='ug -E'
    alias fgrep='ug -F'
    alias xzgrep='ug -z'
    alias xzegrep='ug -zE'
    alias xzfgrep='ug -zF'
end

# See if nix profile exists and source it
test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish ; and source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish

# Add rust development environment variables and any installed utilities into PATH
test -e $HOME/.cargo/env.fish; and source "$HOME/.cargo/env.fish"
