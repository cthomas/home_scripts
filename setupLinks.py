#!/usr/bin/env python

import os

SOURCE_LINK_LIST = [
	('~/home_scripts/vim', '~/.vim'),
	('~/home_scripts/vim/vimrc', '~/.vimrc'),
	('~/home_scripts/bash/bashrc', '~/.bashrc'),
	('~/home_scripts/bash/bash_aliases', '~/.bash_aliases'),
	('~/home_scripts/bin', '~/bin'),
	('~/home_scripts/bin/git-completion.sh', '~/.git-completion.sh')
]

for t, l in SOURCE_LINK_LIST:
	target = os.path.expanduser(t)
	link = os.path.expanduser(l)
	continue_linking = True

	if os.path.exists(link) and os.path.islink(link):
		print 'Removing old link [%s]' % link
		os.unlink(link)
	elif os.path.exists(link):
		print 'Path [%s] already exists and is not a symlink....skipping'
		continue_linking = False

	if continue_linking is True:
		print "Linking [%s] to [%s]" % (target, link)
		os.symlink(target, link)
	else:
		print 'Skipping linking [%s] to [%s]' % (target, link)

CWD = os.getcwd()
os.system('cd ~/home_scripts && git submodule init && git submodule update')
os.chdir(CWD)
