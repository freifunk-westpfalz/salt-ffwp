#!yaml|gpg
hostname: gw03
fqdn: gw03.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22100
git_name: gw03

network:
  uplink_ifs:
    - ens18
  br_ffwp:
    v4_network: 10.198.24.1/16
    v6_suffix: cafe::3/64
  interfaces_direct:
    - interface: ens19
      v4_network: 10.198.193.17/31
      v6_network: 2a03:2260:100d:ff08::2/64
      v6_linklocal: fe80::2/64
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

batman:
  gateway: true
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:03:00:00
  hop_penalty: 60

fastd:
  - name: "1406_01"
    type: server
    mtu: 1406
    port: 10000
    peer_limit: 200
    mac:  FE:F8:FF:03:01:00
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMAxD9NgfAXz3WAQ/9GQW8F2vWk0dHFMhsg/oZCa1gOe0g30jqH4TNoiz2lAuI
      Ffi6X/BvchM/Yd30QeJ1DPgU/KdNP4mGB0nOwph4UHkXkDRYHgUAU3oVsAjH+qxN
      YtaNpE6s5NTE0snpQm6+J8KEP8eVO22n1eurEieFSGmBeE+x85yFBdiVmqaBQ/UO
      NN33l+vhH5F57RAB2Vh5Zk190NWqDAfBKy+RnJSAuZnCWz6EO7jvItWoxUyjq3+L
      qzVQGnjhG83dRdCdrbvN0rQnt4QUEi0lkcM0/bGjUSrN9PoATo1Rl710ZZzKaj3j
      JIqUp3JXt++p4LSACc7cjokBfE2wioQUEbIUL0eFWGeltnEdUqhKu1YtRbXJHdS/
      rQlOtsEquMSJziClgQMFnyh8cWp41gcSjsEdM+OnbKA2ja8HmvOnUz0pAw4dJKF7
      wepp7+CZ4bSFaazFwOt5mGP1M9YlchGxBj06VncpZnt+5Rk7XcW6ftqURq8r9ZX5
      6HWLMIegPl2pJQX+vBGsl+4C69+eAcBnexGCsi8VPUKTgbxBlId4g/S9FmmiIcBz
      JxCGzkCalk+3GoGiylxjdvFEzDNh2AeHMYDL4hvhh1q0ZH7YIj926V8AlCvxTduC
      diTSw8+ROjTAZbF6YRemR+p3alB4Eo+R3VFTfaxwVSWeBfHiJJbCdVE+G/JyYuzS
      dAFTSkh/OJqs9AdpMFAlVXPnG7FE9zHI1/7zAIm+XK0eH1o98cb60nPn20C6Hlqp
      5gOUnXtFriFaLeuPl24EY6pnD7nY0DtwEvJgbShDD9CjX3WnK9bnNUwBJuA7Ytif
      xm+v88v+J45WA3XDhjkoo8DdrHZK
      =c4nA
      -----END PGP MESSAGE-----

dhcp_server:
  enabled: true
  lease:
    max: 7200
    renew: 1800
  range:
    start: 10.198.24.100
    end: 10.198.31.254
  nameserver:
    - 10.198.24.1
    - 10.198.32.1
    - 10.198.8.1
    - 10.198.16.1
