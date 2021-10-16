datacenter = "control-node"
data_dir   = "/var/consul"

server           = true
bootstrap_expect = 1
client_addr      = "0.0.0.0"

# ui_config.enabled = true only for dev/testing, false for production
ui_config = {
  enabled = true
}

dns_config = {
  enable_truncate = true
  a_record_limit  = 100
}
