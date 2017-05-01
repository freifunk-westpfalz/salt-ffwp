#!yaml|gpg
hostname: gw01
fqdn: gw01.freifunk-westpfalz.de
backports_kernel: true
ssh_port: 42228
git_name: gw01
network:
  br_ffwp:
    v4_network: 10.198.8.1/16
    v6_suffix: cafe::1/64
  interfaces_direct:
    - interface: eth1
      v4_network: 10.198.120.141/31
      v6_network: 2a03:2260:100d:ff06::2/64
      v6_linklocal: fe80::2/64

batman:
  gateway: false
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:01:00:00

fastd:
  - name: "1406_01"
    type: client
    mtu: 1406
    mac: FE:F8:FF:01:01:00
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMAxD9NgfAXz3WAQ//cn5nvYc72f192hyqHas9WaG5pQYiyUzOXC3sr5Mqaml3
      vsiPD/hUkF/35/bPohsNnsh4zzdKOq0ieCkQl1HrmGN4jkHoWnxlVg9eJZaGrzVQ
      tpUZaaPdw9iFN89GV5JebU2lmUNxEh5vakZYSj1SNRBDrUI0W+wsGsVmy7/HN4yB
      IFrrIRneVXN+VWA4OWfYDHZgdI/fjGA1QHA4g3Y2n7mxYLS2Wf8Iwo601xczNFxd
      PByJkldPeo6fxNwDoS4qlcb/kHMrWC62qkBEGOQgcSv9VMdYhgSJyYhXk7bBOAvb
      GGzszmj1oliRkbRh0rzRONOx8LqYVocLjKLsnaS6lp4AqfcZV2xQA3mzgusvZHRj
      Szs2NFoEkAD50+BGlBKraLSw8Gf2MWUiiua9pDcwCBl4wE7Sy8hk0fZ2PkXn+2fz
      YMGfphM3dDAcF97Y88RYuf9wEZaqL+1Qep6qH6x05MB3biQ+TooKCnLMDEZA3Yd2
      sRfaInZwfgQ2RvOBVjTsIys2vP+daK781zo1BjvHSBZsEvAKxwabHW1zqFvOTYjN
      kh3UfEJs7/wdldV8CvKHJoV6HS9DwCqChrqYz6kkW343YAbErCUT+A3qaxaGyMuH
      8UeDRdOsgOO3/SSYgPoQ9OIjehGuyeI7D+aUe08ctO4EoJKd4X7QNT9L6pwr9hLS
      cwGUswtc9zKe4j2Nb6hr3rIUxSi2RPIBytmrtl7x+1LEEKKaSZZ4Vvh/ybKQHUYy
      keRYzf7APsr/7Xt/TUMMYj8TdgmLemw6TxOEHCtSXYWg22cyWuz/rPb117YIOu3q
      ct9v/XTFMVMfBHJ3kz+u/UtPgxs=
      =DOGx
      -----END PGP MESSAGE-----

dhcp_server:
  enabled: true
  domain: ffwp.info
  lease:
    max: 7200
    renew: 1800
  range:
    start: 10.198.8.10
    end: 10.198.15.254
  nameserver:
    - 10.198.8.1
    - 10.198.16.1
    - 10.198.24.1
    - 10.198.32.1
