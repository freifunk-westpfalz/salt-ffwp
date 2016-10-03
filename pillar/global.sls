minions:
  salt.freifunk-westpfalz.de:
    backports_kernel: false
    ssh_port: 22102
    git_name: saltmaster

  firmware01.freifunk-westpfalz.de:
    backports_kernel: true
    ssh_port: 22151
    git_name: firmware01

  web00.freifunk-westpfalz.de:
    backports_kernel: false
    ssh_port: 22200
    git_name: web00-fr01

ffwp:
  as_number: 65242
  v4_network: 10.198.0.0/16
  v6_ula_48: fdc6:c4fe:1de4::/48
  v6_ula_prefix: "fdc6:c4fe:1de4:0000:"
  v6_ffrl_48: 2a03:2260:100d::/48
  v6_ffrl_00_56: 2a03:2260:100d:0000::/56
  v6_public_prefix: "2a03:2260:100d:0000:"
