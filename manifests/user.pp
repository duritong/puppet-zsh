define zsh::user($ensure=present) {

  User[$name] {
    shell +> "/usr/bin/zsh",
  }

  file { "/home/$name/.zshrc":
    ensure => directory,
    owner => $name,
    group => $name,
    require => User[$name],
  }
}
