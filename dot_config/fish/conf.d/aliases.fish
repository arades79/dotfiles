#better rust powered file reader
if type -q bat
	alias cat "bat"
end


# better find command
if type -q fd
	alias find "fd"
end
	
# ls aliases
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
