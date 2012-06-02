class zsh {
  package { "zsh":
    ensure => present,
  }

  file { "/etc/zsh/zshrc":
    source => [ "puppet:///modules/site_zsh/zshrc",
                "puppet:///modules/zsh/zshrc" ],
    require => Package["zsh"],
  }
}
