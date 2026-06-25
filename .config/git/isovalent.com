[user]
	email = tobias@isovalent.com
	signingkey = 522F4C5CA5C0A0290684A41D23D1475F10BFAE8C
[include]
	path = ~/.config/git/with-signoff-hook
[url "https://github.com/"]
	insteadOf = ssh://git@github.com/
