This is a collection of scripts and config files that I like to use Posix/MacOS systems to set up my environment

Installation
============
Clone the repo to your home directory:
`git clone --recursive https://github.com/cthomas/home_scripts.git ~/home_scripts`

Run the setup script:
`cd ~/home_scripts && ./setupLinks.py`

Note
=================
The setupLinks.py script will not destructively set up symlinks to the config files.  It will flag certain files as "skipped" when it is run if it cannot safely perform an operation.  If you encounter this, simply move the file in question to some backup path and run the script again.

Update Submodules
=================
`git submodule foreach git pull origin master`


Enjoy!
