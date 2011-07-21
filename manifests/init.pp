class zsh {
  package { "zsh":
    ensure => present,
  }

  file { "/etc/zsh/zshrc":
    source => "puppet:///modules/zsh/zshrc",
    require => Package["zsh"],
  }
}
