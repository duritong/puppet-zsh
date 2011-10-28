class zsh {
  package { "zsh":
    ensure => present,
  }

  file { "/etc/zsh/zshrc":
    source => "puppet:///modules/zsh/zshrc",
    require => Package["zsh"],
  }

  file {'/usr/share/zsh/plugins':
    source => "puppet:///modules/zsh/plugins",
    recurse => true,
    mode => 644,
    ignore => '.git',
    require => Package['vim'],
  }
}
