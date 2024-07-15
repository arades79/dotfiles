if status is-interactive

	#better rust powered file reader
	if type -q bat
		alias cat "bat"
	end
	

	# better find command
	if type -q fd
		alias find "fd"
	end
	
	# better ls command
	if type -q eza
		alias ls "eza"
		alias ll "eza -l"
		alias la "eza -alhH --smart-group"
	end
end
