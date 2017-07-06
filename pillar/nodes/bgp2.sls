#!yaml|gpg
hostname: bgp2
fqdn: bgp2.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: bgp2

#GRE-Einstellungen zum Freifunk Rheinland
#+1 auf Rheinland IP = unsere IP
ffrl_gre:
  local_v4: 46.231.178.246
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
