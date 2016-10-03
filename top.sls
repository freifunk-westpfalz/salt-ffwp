base:
  '*':
    - apt
    - apt.debian
    - apt.freifunk
    - apt.bird
    - common.packages
    - common.unwanted
    - common.userfreifunk
    - ssh.keys
    - ssh.config
    - network.ip_rules
  'firmware*':
    - firmware
    - nginx.firmware
    - network.br_ffwp
    - batman
    - fastd
  'gw*':
    - sysctl.forwarding
    - fastd
