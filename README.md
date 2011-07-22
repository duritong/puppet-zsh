Puppet Zsh Module
=================

Module for configuring zsh.

Tested on Debian GNU/Linux 6.0 Squeeze and Ubuntu 10.4 LTS with
Puppet 2.6. Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a zsh directory under your Puppet modules directory:

    git clone git://github.com/uggedal/puppet-module-zsh.git zsh

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules test_zsh.pp


Usage
-----

If you include the zsh class zsh will be installed with a zsh configuration
tailored to my personal preferences: 

    include zsh

There is also an `zsh::user` resource which can be used for setting zsh
as the default shell for that user:

    zsh::user { "uggedal": }
