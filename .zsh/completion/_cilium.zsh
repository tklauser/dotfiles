
# Copyright 2017 Authors of Cilium
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#compdef _cilium cilium


function _cilium {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "bpf:Direct access to local BPF maps"
      "cleanup:Reset the agent state"
      "completion:Output shell completion code"
      "config:Cilium configuration options"
      "debuginfo:Request available debugging information from agent"
      "endpoint:Manage endpoints"
      "fqdn:Manage fqdn proxy"
      "help:Help about any command"
      "identity:Manage security identities"
      "kvstore:Direct access to the kvstore"
      "map:Access BPF maps"
      "metrics:Access metric status"
      "monitor:Display BPF program events"
      "node:Manage cluster nodes"
      "policy:Manage security policies"
      "prefilter:Manage XDP CIDR filters"
      "preflight:cilium upgrade helper"
      "service:Manage services & loadbalancers"
      "status:Display status of daemon"
      "version:Print version information"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  bpf)
    _cilium_bpf
    ;;
  cleanup)
    _cilium_cleanup
    ;;
  completion)
    _cilium_completion
    ;;
  config)
    _cilium_config
    ;;
  debuginfo)
    _cilium_debuginfo
    ;;
  endpoint)
    _cilium_endpoint
    ;;
  fqdn)
    _cilium_fqdn
    ;;
  help)
    _cilium_help
    ;;
  identity)
    _cilium_identity
    ;;
  kvstore)
    _cilium_kvstore
    ;;
  map)
    _cilium_map
    ;;
  metrics)
    _cilium_metrics
    ;;
  monitor)
    _cilium_monitor
    ;;
  node)
    _cilium_node
    ;;
  policy)
    _cilium_policy
    ;;
  prefilter)
    _cilium_prefilter
    ;;
  preflight)
    _cilium_preflight
    ;;
  service)
    _cilium_service
    ;;
  status)
    _cilium_status
    ;;
  version)
    _cilium_version
    ;;
  esac
}


function _cilium_bpf {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "ct:Connection tracking tables"
      "endpoint:Local endpoint map"
      "ipcache:Manage the IPCache mappings for IP/CIDR <-> Identity"
      "lb:Load-balancing configuration"
      "metrics:BPF datapath traffic metrics"
      "nat:NAT mapping tables"
      "policy:Manage policy related BPF maps"
      "proxy:Proxy configuration"
      "sha:Manage compiled BPF template objects"
      "tunnel:Tunnel endpoint map"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  ct)
    _cilium_bpf_ct
    ;;
  endpoint)
    _cilium_bpf_endpoint
    ;;
  ipcache)
    _cilium_bpf_ipcache
    ;;
  lb)
    _cilium_bpf_lb
    ;;
  metrics)
    _cilium_bpf_metrics
    ;;
  nat)
    _cilium_bpf_nat
    ;;
  policy)
    _cilium_bpf_policy
    ;;
  proxy)
    _cilium_bpf_proxy
    ;;
  sha)
    _cilium_bpf_sha
    ;;
  tunnel)
    _cilium_bpf_tunnel
    ;;
  esac
}


function _cilium_bpf_ct {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "flush:Flush all connection tracking entries"
      "list:List connection tracking entries"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  flush)
    _cilium_bpf_ct_flush
    ;;
  list)
    _cilium_bpf_ct_list
    ;;
  esac
}

function _cilium_bpf_ct_flush {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_ct_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_endpoint {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete local endpoint entries"
      "list:List local endpoint entries"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _cilium_bpf_endpoint_delete
    ;;
  list)
    _cilium_bpf_endpoint_list
    ;;
  esac
}

function _cilium_bpf_endpoint_delete {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_endpoint_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_ipcache {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Retrieve identity for an ip"
      "list:List endpoint IPs (local and remote) and their corresponding security identities"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _cilium_bpf_ipcache_get
    ;;
  list)
    _cilium_bpf_ipcache_list
    ;;
  esac
}

function _cilium_bpf_ipcache_get {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_ipcache_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_lb {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List load-balancing configuration"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _cilium_bpf_lb_list
    ;;
  esac
}

function _cilium_bpf_lb_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--revnat[List reverse NAT entries]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_metrics {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List BPF datapath traffic metrics"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _cilium_bpf_metrics_list
    ;;
  esac
}

function _cilium_bpf_metrics_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_nat {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "flush:Flush all NAT mapping entries"
      "list:List all NAT mapping entries"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  flush)
    _cilium_bpf_nat_flush
    ;;
  list)
    _cilium_bpf_nat_list
    ;;
  esac
}

function _cilium_bpf_nat_flush {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_nat_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_policy {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:Add/update policy entry"
      "delete:Delete a policy entry"
      "get:List contents of a policy BPF map"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _cilium_bpf_policy_add
    ;;
  delete)
    _cilium_bpf_policy_delete
    ;;
  get)
    _cilium_bpf_policy_get
    ;;
  esac
}

function _cilium_bpf_policy_add {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_policy_delete {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_policy_get {
  _arguments \
    '--all[Dump all policy maps]' \
    '(-n --numeric)'{-n,--numeric}'[Do not resolve IDs]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_proxy {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "flush:Flush all proxy entries (deprecated)"
      "list:List proxy configuration (deprecated)"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  flush)
    _cilium_bpf_proxy_flush
    ;;
  list)
    _cilium_bpf_proxy_list
    ;;
  esac
}

function _cilium_bpf_proxy_flush {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_proxy_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_sha {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Get datapath SHA header"
      "list:List BPF template objects."
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _cilium_bpf_sha_get
    ;;
  list)
    _cilium_bpf_sha_list
    ;;
  esac
}

function _cilium_bpf_sha_get {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_bpf_sha_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_bpf_tunnel {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List tunnel endpoint entries"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _cilium_bpf_tunnel_list
    ;;
  esac
}

function _cilium_bpf_tunnel_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_cleanup {
  _arguments \
    '--all-state[Remove all cilium state]' \
    '--bpf-state[Remove BPF state]' \
    '(-f --force)'{-f,--force}'[Skip confirmation]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_completion {
  _arguments \
    '(-h --help)'{-h,--help}'[help for completion]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    '1: :("bash" "zsh")'
}

function _cilium_config {
  _arguments \
    '--list-options[List available options]' \
    '(-n --num-pages)'{-n,--num-pages}'[Number of pages for perf ring buffer. New values have to be > 0]:' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_debuginfo {
  _arguments \
    '(-f --file)'{-f,--file}'[Redirect output to file(s)]' \
    '--file-per-command[Generate a single file per command]' \
    '*--output[markdown| html| json| jsonpath='\''{}'\'']:' \
    '--output-directory[directory for files (if specified will use directory in which this command was ran)]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_endpoint {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "config:View & modify endpoint configuration"
      "disconnect:Disconnect an endpoint from the network"
      "get:Display endpoint information"
      "health:View endpoint health"
      "labels:Manage label configuration of endpoint"
      "list:List all endpoints"
      "log:View endpoint status log"
      "regenerate:Force regeneration of endpoint program"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  config)
    _cilium_endpoint_config
    ;;
  disconnect)
    _cilium_endpoint_disconnect
    ;;
  get)
    _cilium_endpoint_get
    ;;
  health)
    _cilium_endpoint_health
    ;;
  labels)
    _cilium_endpoint_labels
    ;;
  list)
    _cilium_endpoint_list
    ;;
  log)
    _cilium_endpoint_log
    ;;
  regenerate)
    _cilium_endpoint_regenerate
    ;;
  esac
}

function _cilium_endpoint_config {
  _arguments \
    '--list-options[List available options]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_disconnect {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_get {
  _arguments \
    '(*-l *--labels)'{\*-l,\*--labels}'[list of labels]:' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_health {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_labels {
  _arguments \
    '(*-a *--add)'{\*-a,\*--add}'[Add/enable labels]:' \
    '(*-d *--delete)'{\*-d,\*--delete}'[Delete/disable labels]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_list {
  _arguments \
    '--no-headers[Do not print headers]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_log {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_endpoint_regenerate {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_fqdn {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "cache:Manage fqdn proxy cache"
      "names:show internal state Cilium has for DNS names / regexes"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  cache)
    _cilium_fqdn_cache
    ;;
  names)
    _cilium_fqdn_names
    ;;
  esac
}


function _cilium_fqdn_cache {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "clean:Clean fqdn cache"
      "list:List fqdn cache contents"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  clean)
    _cilium_fqdn_cache_clean
    ;;
  list)
    _cilium_fqdn_cache_list
    ;;
  esac
}

function _cilium_fqdn_cache_clean {
  _arguments \
    '(-f --force)'{-f,--force}'[Skip confirmation]' \
    '(-p --matchpattern)'{-p,--matchpattern}'[Delete cache entries with FQDNs that match matchpattern]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_fqdn_cache_list {
  _arguments \
    '(-e --endpoint)'{-e,--endpoint}'[List cache entries for a specific endpoint id]:' \
    '(-p --matchpattern)'{-p,--matchpattern}'[List cache entries with FQDN that match matchpattern]:' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_fqdn_names {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_help {
  _arguments \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_identity {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Retrieve information about an identity"
      "list:List identities"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _cilium_identity_get
    ;;
  list)
    _cilium_identity_list
    ;;
  esac
}

function _cilium_identity_get {
  _arguments \
    '*--label[Label to lookup]:' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_identity_list {
  _arguments \
    '--endpoints[list identities of locally managed endpoints]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_kvstore {
  local -a commands

  _arguments -C \
    '--kvstore[kvstore type]:' \
    '--kvstore-opt[kvstore options]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete a key"
      "get:Retrieve a key"
      "set:Set a key and value"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _cilium_kvstore_delete
    ;;
  get)
    _cilium_kvstore_get
    ;;
  set)
    _cilium_kvstore_set
    ;;
  esac
}

function _cilium_kvstore_delete {
  _arguments \
    '--recursive[Recursive lookup]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    '--kvstore[kvstore type]:' \
    '--kvstore-opt[kvstore options]:'
}

function _cilium_kvstore_get {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--recursive[Recursive lookup]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    '--kvstore[kvstore type]:' \
    '--kvstore-opt[kvstore options]:'
}

function _cilium_kvstore_set {
  _arguments \
    '--key[Key]:' \
    '--value[Value]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    '--kvstore[kvstore type]:' \
    '--kvstore-opt[kvstore options]:'
}


function _cilium_map {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Display BPF map information"
      "list:List all open BPF maps"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _cilium_map_get
    ;;
  list)
    _cilium_map_list
    ;;
  esac
}

function _cilium_map_get {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_map_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--verbose[Print cache contents of all maps]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_metrics {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List all metrics"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _cilium_metrics_list
    ;;
  esac
}

function _cilium_metrics_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_monitor {
  _arguments \
    '--from[Filter by source endpoint id]:' \
    '--hex[Do not dissect, print payload in HEX]' \
    '(-j --json)'{-j,--json}'[Enable json output. Shadows -v flag]' \
    '--monitor-socket[Configure monitor socket path]:' \
    '--related-to[Filter by either source or destination endpoint id]:' \
    '--to[Filter by destination endpoint id]:' \
    '(-t --type)'{-t,--type}'[Filter by event types [agent capture debug drop l7 trace]]:' \
    '(-v --verbose)'{-v,--verbose}'[Enable verbose output]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_node {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List nodes"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _cilium_node_list
    ;;
  esac
}

function _cilium_node_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_policy {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete policy rules"
      "get:Display policy node information"
      "import:Import security policy in JSON format"
      "selectors:Display cached information about selectors"
      "trace:Trace a policy decision"
      "validate:Validate a policy"
      "wait:Wait for all endpoints to have updated to a given policy revision"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _cilium_policy_delete
    ;;
  get)
    _cilium_policy_get
    ;;
  import)
    _cilium_policy_import
    ;;
  selectors)
    _cilium_policy_selectors
    ;;
  trace)
    _cilium_policy_trace
    ;;
  validate)
    _cilium_policy_validate
    ;;
  wait)
    _cilium_policy_wait
    ;;
  esac
}

function _cilium_policy_delete {
  _arguments \
    '--all[Delete all policies]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_get {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_import {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--print[Print policy after import]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_selectors {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_trace {
  _arguments \
    '*--dport[L4 destination port to search on outgoing traffic of the source label context and on incoming traffic of the destination label context]:' \
    '(*-d *--dst)'{\*-d,\*--dst}'[Destination label context]:' \
    '--dst-endpoint[Destination endpoint]:' \
    '--dst-identity[Destination identity]:' \
    '--dst-k8s-pod[Destination k8s pod ([namespace:]podname)]:' \
    '--dst-k8s-yaml[Path to YAML file for destination]:' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '(*-s *--src)'{\*-s,\*--src}'[Source label context]:' \
    '--src-endpoint[Source endpoint]:' \
    '--src-identity[Source identity]:' \
    '--src-k8s-pod[Source k8s pod ([namespace:]podname)]:' \
    '--src-k8s-yaml[Path to YAML file for source]:' \
    '(-v --verbose)'{-v,--verbose}'[Set tracing to TRACE_VERBOSE]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_validate {
  _arguments \
    '--print[Print policy after validation]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_policy_wait {
  _arguments \
    '--fail-wait-time[Wait time after which command fails if endpoint regeration fails (seconds)]:' \
    '--max-wait-time[Wait time after which command fails (seconds)]:' \
    '--sleep-time[Sleep interval between checks (seconds)]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_prefilter {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete CIDR filters"
      "list:List CIDR filters"
      "update:Update CIDR filters"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _cilium_prefilter_delete
    ;;
  list)
    _cilium_prefilter_list
    ;;
  update)
    _cilium_prefilter_update
    ;;
  esac
}

function _cilium_prefilter_delete {
  _arguments \
    '*--cidr[List of CIDR prefixes to delete]:' \
    '--revision[Update revision]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_prefilter_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_prefilter_update {
  _arguments \
    '*--cidr[List of CIDR prefixes to block]:' \
    '--revision[Update revision]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_preflight {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "fqdn-poller:Prepare for DNS Polling upgrades to cilium 1.4"
      "migrate-identity:Migrate KVStore-backed identities to kubernetes CRD-backed identities"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  fqdn-poller)
    _cilium_preflight_fqdn-poller
    ;;
  migrate-identity)
    _cilium_preflight_migrate-identity
    ;;
  esac
}

function _cilium_preflight_fqdn-poller {
  _arguments \
    '--tofqdns-pre-cache[The path to write serialized ToFQDNs pre-cache information. stdout is the default]:' \
    '--tofqdns-pre-cache-ttl[TTL, in seconds, to set on generated ToFQDNs pre-cache information]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_preflight_migrate-identity {
  _arguments \
    '--k8s-api-server[Kubernetes api address server (for https use --k8s-kubeconfig-path instead)]:' \
    '--k8s-kubeconfig-path[Absolute path of the kubernetes kubeconfig file]:' \
    '--kvstore[Key-value store type]:' \
    '--kvstore-opt[Key-value store options]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}


function _cilium_service {
  local -a commands

  _arguments -C \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "delete:Delete a service"
      "get:Display service information"
      "list:List services"
      "update:Update a service"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  delete)
    _cilium_service_delete
    ;;
  get)
    _cilium_service_get
    ;;
  list)
    _cilium_service_list
    ;;
  update)
    _cilium_service_update
    ;;
  esac
}

function _cilium_service_delete {
  _arguments \
    '--all[Delete all services]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_service_get {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_service_list {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_service_update {
  _arguments \
    '*--backends[Backend address or addresses (<IP:Port>)]:' \
    '--frontend[Frontend address]:' \
    '--id[Identifier]:' \
    '--k8s-external[Set service as a k8s ExternalIPs]' \
    '--k8s-node-port[Set service as a k8s NodePort]' \
    '--k8s-traffic-policy[Set service with k8s externalTrafficPolicy as {Local,Cluster}]:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_status {
  _arguments \
    '--all-addresses[Show all allocated addresses, not just count]' \
    '--all-controllers[Show all controllers, not just failing]' \
    '--all-health[Show all health status, not just failing]' \
    '--all-nodes[Show all nodes, not just localhost]' \
    '--all-redirects[Show all redirects]' \
    '--brief[Only print a one-line status message]' \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--timeout[Sets the timeout to use when querying for health]:' \
    '--verbose[Equivalent to --all-addresses --all-controllers --all-nodes --all-health]' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

function _cilium_version {
  _arguments \
    '(-o --output)'{-o,--output}'[json| jsonpath='\''{}'\'']:' \
    '--config[config file (default is $HOME/.cilium.yaml)]:' \
    '(-D --debug)'{-D,--debug}'[Enable debug messages]' \
    '(-H --host)'{-H,--host}'[URI to server-side API]:'
}

