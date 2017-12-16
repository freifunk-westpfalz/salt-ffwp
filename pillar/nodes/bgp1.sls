#!yaml|gpg
hostname: bgp1
fqdn: bgp1.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 42227
git_name: bgp1

network:
  uplink_ifs:
    - ens3
  exit:
    v4: 185.66.194.18/32
  internal:
    #TODO: ggf. /28? (Stubnet bei OSPF beachten)
    v4: 10.198.192.1/32
    v6: 2a03:2260:100d:0100::1/56
  traffic_input_interfaces:
    - ens12
  interfaces_direct:
    - interface: ens12
      v4_network: 10.198.193.12/31
      v6_network: 2a03:2260:100d:ff06::1/64
      v6_linklocal: fe80::1/64
      ospf: true
  firewall:
    input:
      policy: DROP
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT
    prerouting:
      policy: ACCEPT

ffrl_gre:
  local_v4: 10.8.1.6
  tunnel:
    - name: fra0
      gre_target: 185.66.194.0
      v4_local: 100.64.5.7/31
      v4_remote: 100.64.5.6/31
      v6_local: 2a03:2260:0:27d::2/64
      v6_remote: 2a03:2260:0:27d::1/64
    - name: fra1
      gre_target: 185.66.194.1
      v4_local: 100.64.5.13/31
      v4_remote: 100.64.5.12/31
      v6_local: 2a03:2260:0:280::2/64
      v6_remote: 2a03:2260:0:280::1/64
    - name: dus0
      gre_target: 185.66.193.0
      v4_local: 100.64.5.9/31
      v4_remote: 100.64.5.8/31
      v6_local: 2a03:2260:0:27e::2/64
      v6_remote: 2a03:2260:0:27e::1/64
    - name: dus1
      gre_target: 185.66.193.1
      v4_local: 100.64.5.15/31
      v4_remote: 100.64.5.14/31
      v6_local: 2a03:2260:0:281::2/64
      v6_remote: 2a03:2260:0:281::1/64
    - name: ber0
      gre_target: 185.66.195.0
      v4_local: 100.64.5.5/31
      v4_remote: 100.64.5.4/31
      v6_local: 2a03:2260:0:27c::2/64
      v6_remote: 2a03:2260:0:27c::1/64
    - name: ber1
      gre_target: 185.66.195.1
      v4_local: 100.64.5.11/31
      v4_remote: 100.64.5.10/31
      v6_local: 2a03:2260:0:27f::2/64
      v6_remote: 2a03:2260:0:27f::1/64

internal_gre:
- name: int_bgp1to2
  gre_target: 'bgp2.freifunk-westpfalz.de'
  v4_local: 10.198.193.0/31
  v4_remote: 10.198.193.1/31
  v6_local: 2a03:2260:100d:ff00::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff00::2/64
  ibgp: true
  ospf: true
- name: int_bgp1to3
  gre_target: 'bgp3.freifunk-westpfalz.de'
  v4_local: 10.198.193.2/31
  v4_remote: 10.198.193.3/31
  v6_local: 2a03:2260:100d:ff01::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff01::2/64
  ibgp: true
  ospf: true
- name: int_bgp1to4
  gre_target: 'bgp4.freifunk-westpfalz.de'
  v4_local: 10.198.193.4/31
  v4_remote: 10.198.193.5/31
  v6_local: 2a03:2260:100d:ff02::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff02::2/64
  ibgp: true
  ospf: true
