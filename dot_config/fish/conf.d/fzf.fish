if status is-interactive
        if type -q fzf
        	# Set up fzf key bindings
		fzf --fish | source
	end
end
