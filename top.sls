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
#    - fastd
  'map.freifunk-westpfalz.de':
    - nginx.map
    - map.grafana
    - map.influxdb
