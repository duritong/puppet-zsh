# enable plugins
class zsh::plugins {
  include vim
  include ::zsh
  file {'/usr/share/zsh/plugins':
    source  => "puppet:///modules/zsh/plugins",
    recurse => true,
    mode    => '0644',
    ignore  => '.git',
    require => Package['vim','zsh'],
  }
}
