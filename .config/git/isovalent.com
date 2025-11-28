[user]
	email = tobias@isovalent.com
[include]
	path = ~/.config/git/with-signoff-hook
[url "https://github.com/"]
	insteadOf = ssh://git@github.com/
