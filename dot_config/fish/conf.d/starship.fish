if status is-interactive
	if type -q starship
		source (/usr/bin/starship init fish --print-full-init | psub)
	end
end
		
