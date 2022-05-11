[user]
	email = tobias@isovalent.com
[include]
	path = ~/.config/git/with-signoff-hook
[url "ssh://git@github.com/"]
	insteadOf = https://github.com/
