base:
  '*':
    - apt
    - apt.debian
    - apt.freifunk
    - apt.bird
    - apt.icinga2
    - common.packages
    - common.unwanted
    - common.userfreifunk
    - ssh.keys
    - ssh.config
    - network.ip_rules
  'firmware01.freifunk-westpfalz.de':
    - firmware
    - nginx.firmware
    - network.br_ffwp
    - batman
    - fastd
  'gw*':
    - sysctl.forwarding
    - sysctl.hightraffic
    - common.telegraf
#    - fastd
  'map.freifunk-westpfalz.de':
    - sysctl.hightraffic
    - batman
    - fastd
    - network.br_ffwp
    - nginx.map
    - map
  'web00.freifunk-westpfalz.de':
    - nginx.host04-reverse
