# Adds a badge if we're in an SSH session (first letter hostname, uppercased)
function __ssh_badge
	# See if any standard SSH environment variables contain anything
	if test -n "$SSH_CLIENT$SSH2_CLIENT$SSH_TTY"
		# dark purple on light purple
		set_color -b d6aeec -o 2a0a8b
		# first character of remote hostname, uppercase
		echo -n " "(string upper (string sub -s 1 -l 1 (hostname -s)))" "
		set_color normal
	end
end