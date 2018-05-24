#!yaml|gpg
hostname: bgp3
fqdn: bgp3.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: bgp3

network:
  uplink_ifs:
    - ens18
  exit:
    #Alle potenziellen Exit IPs
    v4_all:
      # FFRL
      - 185.66.195.18/32
      # FFNW
      - 185.197.132.130/32
  internal:
    #TODO: ggf. /28? (Stubnet bei OSPF beachten)
    v4: 10.198.192.33/32
    v6: 2a03:2260:100d:0300::1/56
  traffic_input_interfaces:
    - int_bgp3togw03
  firewall:
    input:
      policy: ACCEPT
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT
    prerouting:
      policy: ACCEPT

#GRE-Einstellungen zum Freifunk Rheinland
#+1 auf Rheinland IP = unsere IP
ffrl_gre:
  local_v4: 185.133.208.203
  exit_v4: 185.66.195.18/32
  default_v4_bgp_local_pref: 200
  default_v6_bgp_local_pref: 300
  tunnel:
    - name: dus0
      gre_target: 185.66.193.0
      v4_local: 100.64.5.33/31
      v4_remote: 100.64.5.32/31
      v6_local: 2a03:2260:0:28a::2/64
      v6_remote: 2a03:2260:0:28a::1/64
    - name: dus1
      gre_target: 185.66.193.1
      v4_local: 100.64.5.39/31
      v4_remote: 100.64.5.38/31
      v6_local: 2a03:2260:0:28d::2/64
      v6_remote: 2a03:2260:0:28d::1/64
    - name: fra0
      gre_target: 185.66.194.0
      v4_local: 100.64.5.31/31
      v4_remote: 100.64.5.30/31
      v6_local: 2a03:2260:0:289::2/64
      v6_remote: 2a03:2260:0:289::1/64
    - name: fra1
      gre_target: 185.66.194.1
      v4_local: 100.64.5.37/31
      v4_remote: 100.64.5.36/31
      v6_local: 2a03:2260:0:28c::2/64
      v6_remote: 2a03:2260:0:28c::1/64
    - name: ber0
      gre_target: 185.66.195.0
      v4_local: 100.64.5.29/31
      v4_remote: 100.64.5.28/31
      v6_local: 2a03:2260:0:288::2/64
      v6_remote: 2a03:2260:0:288::1/64
    - name: ber1
      gre_target: 185.66.195.1
      v4_local: 100.64.5.35/31
      v4_remote: 100.64.5.34/31
      v6_local: 2a03:2260:0:28b::2/64
      v6_remote: 2a03:2260:0:28b::1/64

#GRE-Einstellungen zu Freifunk Nordwest
#+1 auf Nordwest IP = unsere IP
ffnw_gre:
  local_v4: 185.133.208.203
  exit_v4: 185.197.132.130/32
  default_v4_bgp_local_pref: 300
  default_v6_bgp_local_pref: 200
  tunnel:
    - name: fra_a
      gre_target: 185.197.132.3
      v4_local: 100.100.32.39/31 
      v4_remote: 100.100.32.38/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: fra_b
      gre_target: 185.197.132.4
      v4_local: 100.100.48.39/31 
      v4_remote: 100.100.48.38/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ber
      gre_target: 185.197.132.7
      v4_local: 100.100.96.39/31 
      v4_remote: 100.100.96.38/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_a
      gre_target: 185.197.132.5
      v4_local: 100.100.64.39/31 
      v4_remote: 100.100.64.38/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_b
      gre_target: 185.197.132.6
      v4_local: 100.100.70.39/31 
      v4_remote: 100.100.70.38/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64

internal_gre:
- name: int_bgp3to1
  gre_target: 'bgp1.freifunk-westpfalz.de'
  v4_local: 10.198.193.3/31
  v4_remote: 10.198.193.2/31
  v6_local: 2a03:2260:100d:ff01::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff01::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp3to2
  gre_target: 'bgp2.freifunk-westpfalz.de'
  v4_local: 10.198.193.7/31
  v4_remote: 10.198.193.6/31
  v6_local: 2a03:2260:100d:ff03::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff03::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp3to4
  gre_target: 'bgp4.freifunk-westpfalz.de'
  v4_local: 10.198.193.10/31
  v4_remote: 10.198.193.11/31
  v6_local: 2a03:2260:100d:ff05::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff05::2/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp3togw03
  gre_target: 'gw03.freifunk-westpfalz.de'
  v4_local: 10.198.193.16/31
  v4_remote: 10.198.193.17/31
  v6_local: 2a03:2260:100d:ff08::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff08::2/64
  type: v4
  ibgp: false
  ospf: true
