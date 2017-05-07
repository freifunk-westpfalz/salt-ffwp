base:
  '*':
    - apt
    - apt.debian
    - apt.freifunk
    - apt.icinga2
    - common.packages
    - common.unwanted
    - common.userfreifunk
    - ssh.keys
    - ssh.config
    - network.ip_rules
    - ntpd
  'firmware01.freifunk-westpfalz.de':
    - firmware
    - nginx.firmware
    - network.br_ffwp
    - batman
    - fastd
  'gw*':
    - gw
  'bgp*':
    - common.telegraf
  'map.freifunk-westpfalz.de':
    - sysctl.hightraffic
    - batman
    - fastd
    - network.br_ffwp
    - nginx.map
    - map
  'web00.freifunk-westpfalz.de':
    - nginx.host04-reverse
