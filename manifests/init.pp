class resolver_conf(
  $domain = 'lightedge.com',
  $search_domain = [ 'lightedge.com', 'lh.net' ],
  $servers = [ '216.81.128.160', '216.81.128.161' ] ) {

  file { '/etc/resolv.conf':
    ensure => file,
    content => template('resolver_conf/resolv.conf.erb'),
    mode => 0644;
  }

}
