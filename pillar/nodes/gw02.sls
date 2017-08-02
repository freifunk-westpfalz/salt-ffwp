#!yaml|gpg
hostname: gw02
fqdn: gw02.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
git_name: gw02

respondd:
  location:
    latitude: 52.5051952
    longitude: 13.3257374
  #batman mac
  mac: FE:F8:FF:02:00:00
  node_id: fef8ff020000
  fastd_instance: fastd_1406_01

network:
  br_ffwp:
    v4_network: 10.198.16.1/16
    v6_suffix: cafe::2/64
  firewall:
    input:
      policy: DROP
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT
    prerouting:
      policy: ACCEPT

batman:
  gateway: true
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:02:00:00

fastd:
  - name: "1406_01"
    type: server
    mtu: 1406
    port: 10000
    mac: FE:F8:FF:02:01:00
    secret: |
      -----BEGIN PGP MESSAGE-----
      hQIMAxD9NgfAXz3WAQ/8DEnocoWHbIQGvaczFAjol070NNIRb1IW1/1A4FyyYWjD
      ZxXHbcErvpwqhlffWdA8gtjaC8SAaSV6Dg/iUc4+EMBtwaFhQGsAXU81dQD8HGis
      mKwAzrA4/HGS3maXHfctE4PiLHj9p7PB6+RxdhztyRMbUaIYRvmNCbvD9+SjrbUM
      +pj/iS2fu+tAWI42ZmvAlID8O5KBdSLuy1ZKCjQXcGzJ1/gvVPA3mu1wQ+3pcfIJ
      bEzHzDkSAGa2o2AauhZHfz6/IPM7fZVzrEMDLk5LEwyYJeQDTRL1ir74gkyUYqFD
      N9r0hnKY6TQtC9ho7nP4Ufl1N+IMVT7eBXFj+c08LPU09XDZ+LaW5+DuCgVuNLNu
      VQwVs9Cu2WZFTDjMezDvau1whFRwfYuuneQaGaH0wt78oFTt3Nw4Ll8y953z1bUa
      R6ro3qekWJOsdsUIMaETKvF4nR5I8WLOV+z8ihZXjNEvXsV9g7DY7Xal2OhxXu5T
      J3NUArVeSI9HcPsbYAah9JRJz7b3JppT0FVaKi7YI0F3shF2aB8x0NctMS7yyA7e
      +idiIOa2klgTXfvK5QVjfXB//BFNJoZZpbsHFHAfYeizA2yjgyrXWu+RHfk4lkqY
      plbNRLC5ZZzBJao/NSWIBu/Xg1wXvGox5iYRNYH6q0DAEhFv1n/vFweVae+JeyHS
      cwHdvWTTthKosWOyhQbcbEk0GezszfcwXezv6tjfRabQPErry4ucRNjv6vqJGZSI
      fhRRxnEE+dgk+ZuCw9k9Khm0E40pHDZ/3pOsz4DzfsrQOMmHCjJFBq3BcdfpPmuc
      FYLVEV702IfDUD6bV4+nNOakuGQ=
      =K3kW
      -----END PGP MESSAGE-----

dhcp_server:
  enabled: true
  lease:
    max: 7200
    renew: 1800
  range:
    start: 10.198.16.10
    end: 10.198.23.254
  nameserver:
    - 10.198.16.1
    - 10.198.8.1
    - 10.198.24.1
    - 10.198.32.1

internal_gre:
  - name: int_gw02tobgp2
    gre_target: 'bgp2.freifunk-westpfalz.de'
    v4_local: 10.198.193.15/31
    v4_remote: 10.198.193.14/31
    v6_local: 2a03:2260:100d:ff07::2/64
    v6_linklocal: fe80::2/64
    v6_remote: 2a03:2260:100d:ff07::1/64
    ibgp: false
    ospf: true
