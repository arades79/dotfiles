# See if nix profile exists and source it
test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish ; and source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish

