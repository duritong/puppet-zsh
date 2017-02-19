class zsh {
  package { "zsh":
    ensure => present,
  }

  if $osfamily == 'Debian' {
    file { "/etc/zsh/zshrc":
      source => [ "puppet:///modules/site_zsh/zshrc",
                  "puppet:///modules/zsh/zshrc" ],
      require => Package["zsh"],
    }
  }
}
