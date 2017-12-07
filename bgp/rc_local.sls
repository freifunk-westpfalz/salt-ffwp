place bgp rc_conf:
  file.managed:
    - name: /etc/rc.local
    - source: salt://bgp/files/rc.local.j2
    - template: jinja
    - mode: 775
    - context:
        network: {{ pillar['network'] }}
        ffwp: {{ pillar['ffwp'] }}
