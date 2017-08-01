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
  'firmware01.freifunk-westpfalz.de':
    - firmware
    - network.ip_rules_freifunk
    - nginx.firmware
    - network.br_ffwp
    - batman
    - fastd
    - ntpd
  'gw*':
    - gw
    - ntpd
  'bgp*':
    - bgp
  'map.freifunk-westpfalz.de':
    - sysctl.hightraffic
    - batman
    - fastd
    - network.ip_rules_freifunk
    - network.br_ffwp
    - nginx.map
    - map
    - ntpd
  'web00.freifunk-westpfalz.de':
    - nginx.host04-reverse
