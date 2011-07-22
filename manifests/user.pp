define zsh::user($ensure=present, $path="/usr/bin/zsh") {

  exec { "chsh -s $path $name":
    unless => "grep -E '^${name}.+:${$path}$' /etc/passwd",
  }

  if $name != "root" {
    file { "/home/$name/.zshrc":
      ensure => directory,
      owner => $name,
      group => $name,
    }
  }
}
