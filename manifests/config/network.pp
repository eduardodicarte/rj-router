class router::config::network {

  package {'gem':
    ensure => 'present'
  }

  network_config {$router::interface:
    ensure    => 'present',
    family    => 'inet',
    ipaddress => $router::ip,
    method    => 'static',
    netmask   => '255.255.255.0',
    onboot    => 'true',
    require   => Package['gem']
  }
}
