#!yaml|gpg
hostname: gw04
fqdn: gw04.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: gw04

network:
  uplink_ifs:
    - ens18
  br_ffwp:
    v4_network: 10.198.32.1/16
    v6_suffix: cafe::4/64
  firewall:
    input:
      policy: ACCEPT
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT
    prerouting:
      policy: ACCEPT

internal_gre:
- name: int_gw04tobgp4
  gre_target: 'bgp4.freifunk-westpfalz.de'
  v4_local: 10.198.193.19/31
  v4_remote: 10.198.193.18/31
  v6_local: 2a03:2260:100d:ff09::2/64
  v6_linklocal: fe80::2/64
  v6_remote: 2a03:2260:100d:ff09::1/64
  type: v4
  ibgp: false
  ospf: true

gretap:
  output_if: ens18
  tunnel:
    - name: gw04togw01
      target: 'gw01.freifunk-westpfalz.de'
    - name: gw04togw02
      target: 'gw02.freifunk-westpfalz.de'
    - name: gw04togw03
      target: 'gw03.freifunk-westpfalz.de'

batman:
  gateway: true
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:04:00:00
  hop_penalty: 60

fastd:
  - name: "1406_01"
    type: server
    mtu: 1406
    port: 10001
    peer_limit: 250
    mac:  FE:F8:FF:04:01:00
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMAxD9NgfAXz3WAQ/+NFqIM2zbYGtTYbiSvsF7W4xvWEc7FOyIwEPLVy5Yw9NA
      SsQCUHZgDoEDllycbEM+z7VueT698+i9/RtpZQmNUwecAoK75d3QET53TBkJEvzf
      CvG8iCm0sE+cOQYz8bN50Wcl/rkBKx0rx4d1zfVYTdg5+A0zIrmoBBr/TuWx22ur
      SABnA3Q1XDx7q1qWPl/aLcQbkQcPbfl2g5uA3Y0iUUOUnrQVFIEAGH2/0qfbIoYR
      snAiDrSSie3BBrX1IZxEgew/GFTJh11/1oH9or07p93bpUlH7foU/zH5emLmigD8
      rFxg8lejYkUNwfIyjJJ22vfe/ldu3IdEOrvIG3nA1ZGnPAzx8DIlAcletupMxTDl
      5VP9FtCJk1JL6nbz4FdPhTtqrMexPtWQ/31FyoJopmYrkPFzFjwOWqTh2obpig4L
      4W0iWWOOCZk9BxSys6OPBAU9pKU1KTvo7Ke1h1NmrbkPmOvJw+8ngK8G1rc2xi2k
      1pVdkVFO0K74hnFsJNrpcrKQDtPUNC4DvZNtaz/hQS7eKMwGtO+YynFwEW1tI0KA
      YnEEGXMTUDSFqHdqkbSOy2WA4i/xApG1TLI+UMyfw/+QS6do0NfP0yAma2jJnMee
      qpyvZVjlpwQfzTuco58NA0xoQ5riNATowja5DVkm0tLgesWz5grsx/Vh8cNmJavS
      cwHv+Up+bkepDkL29cU+fJ85hQjryAMJtqelGhPW7NxW5iasQObLX4CUH0p1huT9
      ffsCsmqaRHXEUZxsKp0tqJsHoZLE+rte2Nch2jhQWzztai2KewUeafE182NeNv5X
      Iied1LzoGzG6QrgffO9KFn1o/nA=
      =gM9l
      -----END PGP MESSAGE-----

dhcp_server:
  enabled: true
  lease:
    max: 7200
    renew: 1800
  range:
    start: 10.198.32.100
    end: 10.198.39.254
  nameserver:
    - 10.198.32.1
    - 10.198.8.1
    - 10.198.16.1
    - 10.198.24.1
