#!yaml|gpg
hostname: bgp2
fqdn: bgp2.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: bgp2

network:
  uplink_ifs:
    - ens18
  exit:
    #Alle potenziellen Exit IPs
    v4_all:
      #FFRL
      - 185.66.194.19/32
      #FFNW
      - 185.197.132.129/32
  internal:
    #TODO: ggf. /28? (Stubnet bei OSPF beachten)
    v4: 10.198.192.17/32
    v6: 2a03:2260:100d:0200::1/56
  traffic_input_interfaces:
    - int_bgp2togw02
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
  local_v4: 46.4.148.29
  exit_v4: 185.66.194.19/32
  default_v4_bgp_local_pref: 200
  default_v6_bgp_local_pref: 300
  tunnel:
    - name: fra0
      gre_target: 185.66.194.0
      v4_local: 100.64.5.19/31
      v4_remote: 100.64.5.18/31
      v6_local: 2a03:2260:0:283::2/64
      v6_remote: 2a03:2260:0:283::1/64
    - name: fra1
      gre_target: 185.66.194.1
      v4_local: 100.64.5.25/31
      v4_remote: 100.64.5.24/31
      v6_local: 2a03:2260:0:286::2/64
      v6_remote: 2a03:2260:0:286::1/64
    - name: dus0
      gre_target: 185.66.193.0
      v4_local: 100.64.5.21/31
      v4_remote: 100.64.5.20/31
      v6_local: 2a03:2260:0:284::2/64
      v6_remote: 2a03:2260:0:284::1/64
    - name: dus1
      gre_target: 185.66.193.1
      v4_local: 100.64.5.27/31
      v4_remote: 100.64.5.26/31
      v6_local: 2a03:2260:0:287::2/64
      v6_remote: 2a03:2260:0:287::1/64
    - name: ber0
      gre_target: 185.66.195.0
      v4_local: 100.64.5.17/31
      v4_remote: 100.64.5.16/31
      v6_local: 2a03:2260:0:282::2/64
      v6_remote: 2a03:2260:0:282::1/64
    - name: ber1
      gre_target: 185.66.195.1
      v4_local: 100.64.5.23/31
      v4_remote: 100.64.5.22/31
      v6_local: 2a03:2260:0:285::2/64
      v6_remote: 2a03:2260:0:285::1/64

#GRE-Einstellungen zu Freifunk Nordwest
#+1 auf Nordwest IP = unsere IP
ffnw_gre:
  local_v4: 46.4.148.29
  exit_v4: 185.197.132.129/32
  default_v4_bgp_local_pref: 300
  default_v6_bgp_local_pref: 200
  tunnel:
    - name: ber
      gre_target: 185.197.132.7
      v4_local: 100.100.96.37/31 
      v4_remote: 100.100.96.36/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_b
      gre_target: 185.197.132.6
      v4_local: 100.100.70.37/31 
      v4_remote: 100.100.70.36/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: ams_a
      gre_target: 185.197.132.5
      v4_local: 100.100.64.37/31 
      v4_remote: 100.100.64.36/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64
    - name: fra
      gre_target: 185.197.132.3
      v4_local: 100.100.32.37/31 
      v4_remote: 100.100.32.36/31 
      v6_local: fe80::2/64
      v6_remote: fe80::1/64

internal_gre:
- name: int_bgp2to1
  gre_target: 'bgp1.freifunk-westpfalz.de'
  v4_local: 10.198.193.1/31
  v4_remote: 10.198.193.0/31
  v6_local: 2a03:2260:100d:ff00::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff00::1/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp2to3
  gre_target: 'bgp3.freifunk-westpfalz.de'
  v4_local: 10.198.193.6/31
  v4_remote: 10.198.193.7/31
  v6_local: 2a03:2260:100d:ff03::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff03::2/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp2to4
  gre_target: 'bgp4.freifunk-westpfalz.de'
  v4_local: 10.198.193.8/31
  v4_remote: 10.198.193.9/31
  v6_local: 2a03:2260:100d:ff04::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff04::2/64
  type: v4
  ibgp: true
  ospf: true
- name: int_bgp2togw02
  gre_target: 'gw02.freifunk-westpfalz.de'
  v4_local: 10.198.193.14/31
  v4_remote: 10.198.193.15/31
  v6_local: 2a03:2260:100d:ff07::1/64
  v6_linklocal: fe80::1/64
  v6_remote: 2a03:2260:100d:ff07::2/64
  type: v4
  ibgp: false
  ospf: true
