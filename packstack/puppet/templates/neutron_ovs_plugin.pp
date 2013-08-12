class { 'neutron::plugins::ovs':
  tenant_network_type => '%(CONFIG_NEUTRON_OVS_TENANT_NETWORK_TYPE)s',
  network_vlan_ranges => '%(CONFIG_NEUTRON_OVS_VLAN_RANGES)s',
  sql_connection      => $neutron_sql_connection
}

if $::operatingsystem != 'Fedora' {
  neutron_config {
    'DEFAULT/ovs_use_veth': value => 'True';
  }
}