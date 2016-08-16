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
  'firmware*':
    - firmware
  'gw*':
    - sysctl.forwarding
    - fastd
