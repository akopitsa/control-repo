hiera_include('classes')

#$myvhosts = hiera('apache::vhosts', {})
#create_resources('apache::vhost', $myvhosts)
$mserver = hiera('mysql::server::databases', {})
create_resources('mysql::server::databases', $mserver)


#$mod = hiera('apache::mod', {})
#create_resources('apache::mod', $mod)


$node_users = hiera_hash('users')
create_resources(user, $node_users, {})


