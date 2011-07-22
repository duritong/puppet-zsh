define zsh::user($ensure=present, $path="/usr/bin/zsh") {

  exec { "chsh -s $zsh_path $name":
    unless => "grep -E '^${name}.+:${$path}$' /etc/passwd",
  }

  file { "/home/$name/.zshrc":
    ensure => directory,
    owner => $name,
    group => $name,
  }
}
