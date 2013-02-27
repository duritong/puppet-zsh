define zsh::user($ensure=present, $path="/usr/bin/zsh") {

  exec { "/usr/bin/chsh -s $path $name":
    unless => "/usr/bin/grep -E '^${name}.+:${$path}$' /etc/passwd",
  }

  if $name != "root" {
    file { "/home/${name}/.zshrc":
      ensure => directory,
      owner => $name,
      group => $name,
    }
  }
}
