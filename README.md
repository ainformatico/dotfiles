Mydots
===========================
My configuration files.

*NOTE*: tested only on Ubuntu, use at your own risk.

Installation
------------------

    $ git clone git://github.com/ainformatico/mydots.git ~/.mydots
    $ cd !$
    $ ./install.sh [-a, -i]

*NOTE*:

* use `./install.sh -a` for a _full_ installation mode.
* use `./install.sh [-a] -i` to be prompted about user information.

###Full installation mode
This mode installs:

* `rbenv`
* Prompt for user information.

###The installation script will:

1. Fetch submodules
2. Backup your old files to `/tmp`
3. Create a symbolic link to the new files

Update repo and submodules
--------------------------

`$ ./update.sh`

1. Pull changes from main repo
2. Pull changes from each submodule

Included configurations
--------------------------

* bash <http://www.gnu.org/software/bash/manual/bash.html>
* ruby gems <http://rubygems.org/>
* rbenv <https://github.com/sstephenson/rbenv/>
* nautilus scripts <http://g-scripts.sourceforge.net/>
* ssh <http://www.openssh.com/>
* hg <http://mercurial.selenic.com/>
* git <http://git-scm.com/>
* tmux <http://tmux.sourceforge.net/>
* xmonad <http://xmonad.org/>

Included submodules
--------------------------

* myvim <https://github.com/ainformatico/myvim>
* myvcs <https://github.com/ainformatico/myvcs>
* rbenv <https://github.com/sstephenson/rbenv>
    * ruby-build <https://github.com/sstephenson/ruby-build>
    * rbenv-gemset <https://github.com/jamis/rbenv-gemset>

New stuff
-----------

* put your file into `~/.mydots` and it will be automatically linked to `~/{your_file}`
    * you need to run installation again
    * use _submodules_ whenever possible
* all files starting with underscore will be ignored
    * you have to create manual configuration for this kind of files

Author
----------------------------------------------
Alejandro El Informático

License
----------------------------------------------
The following license is not applied to software that have their own license.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
Version 2, December 2004

Copyright (C) 2012 Alejandro El Informático

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.
