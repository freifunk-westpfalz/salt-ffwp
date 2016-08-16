minions:
  salt.freifunk-westpfalz.de:
    backports_kernel: false
    ssh_port: 22102
    git_name: saltmaster

  firmware01.freifunk-westpfalz.de:
    backports_kernel: true
    ssh_port: 22151
    git_name: firmware01
