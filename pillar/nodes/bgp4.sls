#!yaml|gpg
hostname: bgp4
fqdn: bgp4.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: bgp4

network:
  uplink_ifs:
    - ens18
  exit:
    #Alle potenziellen Exit IPs
    v4_all:
      #FFRL
      - 185.66.195.19/32
      #FFNW
      - 185.197.132.131/32
  internal:
    #TODO: ggf. /28? (Stubnet bei OSPF beachten)
    v4: 10.198.192.49/32
    v6: 2a03:2260:100d:0400::1/56
  traffic_input_interfaces:
    - int_bgp4togw04
  firewall:
    input:
      policy: DROP
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT
    prerouting:
      policy: ACCEPT

#GRE-Einstellungen zum Freifunk Rheinland
#+1 auf Rheinland IP = unsere IP
ffrl_gre:
  local_v4: 185.215.214.137
  exit_v4: 185.66.195.19/32
  default_v4_bgp_local_pref: 200
  default_v6_bgp_local_pref: 300
  tunnel:
    - name: fra0
      gre_target: 185.66.194.0
      v4_local: 100.64.5.43/31
      v4_remote: 100.64.5.42/31
      v6_local: 2a03:2260:0:28f::2/64
      v6_remote: 2a03:2260:0:28f::1/64
    - name: fra1
      gre_target: 185.66.194.1
      v4_local: 100.64.5.49/31
      v4_remote: 100.64.5.48/31
      v6_local: 2a03:2260:0:292::2/64
      v6_remote: 2a03:2260:0:292::1/64
    - name: dus0
      gre_target: 185.66.193.0
      v4_local: 100.64.5.45/31
      v4_remote: 100.64.5.44/31
      v6_local: 2a03:2260:0:290::2/64
      v6_remote: 2a03:2260:0:290::1/64
    - name: dus1
      gre_target: 185.66.193.1
      v4_local: 100.64.5.51/31
      v4_remote: 100.64.5.50/31
      v6_local: 2a03:2260:0:293::2/64
      v6_remote: 2a03:2260:0:293::1/64
    - name: ber0
      gre_target: 185.66.195.0
      v4_local: 100.64.5.41/31
      v4_remote: 100.64.5.40/31
      v6_local: 2a03:2260:0:28e::2/64
      v6_remote: 2a03:2260:0:28e::1/64
    - name: ber1
      gre_target: 185.66.195.1
      v4_local: 100.64.5.47/31
      v4_remote: 100.64.5.46/31
      v6_local: 2a03:2260:0:291::2/64
      v6_remote: 2a03:2260:0:291::1/64

#GRE-Einstellungen zu Freifunk Nordwest
#+1 auf Nordwest IP = unsere IP
ffnw_gre:
  local_v4: 185.215.214.137
  exit_v4: 185.197.132.131/32
  default_v4_bgp_local_pref: 300
  default_v6_bgp_local_pref: 200
  tunnel:
    - name: fra
      gre_target: 185.197.132.3
      v4_local: 100.100.32.33/31 
      v4_remote: 100.100.32.32/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ber
      gre_target: 185.197.132.7
      v4_local: 100.100.96.33/31 
      v4_remote: 100.100.96.32/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_a
      gre_target: 185.197.132.5
      v4_local: 100.100.64.33/31 
      v4_remote: 100.100.64.32/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_b
      gre_target: 185.197.132.6
      v4_local: 100.100.70.33/31 
      v4_remote: 100.100.70.32/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64

internal_gre:
- name: int_bgp4to1
  gre_target: 'bgp1.freifunk-westpfalz.de'
  v4_local: 10.198.193.5/31
  v4_remote: 10.198.193.4/31
  v6_local: 2a03:2260:100d:ff02::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff02::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp4to2
  gre_target: 'bgp2.freifunk-westpfalz.de'
  v4_local: 10.198.193.9/31
  v4_remote: 10.198.193.8/31
  v6_local: 2a03:2260:100d:ff04::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff04::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp4to3
  gre_target: 'bgp3.freifunk-westpfalz.de'
  v4_local: 10.198.193.11/31
  v4_remote: 10.198.193.10/31
  v6_local: 2a03:2260:100d:ff05::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff05::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp4togw04
  gre_target: 'gw04.freifunk-westpfalz.de'
  v4_local: 10.198.193.18/31
  v4_remote: 10.198.193.19/31
  v6_local: 2a03:2260:100d:ff09::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff09::2/64
  type: v4
  ibgp: false
  ospf: true