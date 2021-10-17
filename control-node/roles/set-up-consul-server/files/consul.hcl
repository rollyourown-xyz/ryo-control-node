datacenter = "control-node"
data_dir   = "/var/consul"

server                = true
bootstrap_expect      = 1
client_addr           = "{{ veth0_network_part }}.1"   
bind_addr             = "{{ veth0_network_part }}.1"
advertise_addr        = "{{ veth0_network_part }}.1"
advertise_addr_wan    = "{{ veth0_network_part }}.1"
retry_join_wan        = [
]

# ui_config.enabled = true only for dev/testing, false for production
ui_config = {
  enabled = true
}

dns_config = {
  enable_truncate = true
  a_record_limit  = 100
}
