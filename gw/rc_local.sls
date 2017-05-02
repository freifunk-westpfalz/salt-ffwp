place gw rc_conf:
  file.managed:
    - name: /etc/rc.local
    - source: salt://gw/files/rc.local.j2
    - template: jinja
    - context:
        ffwp: {{ pillar['ffwp'] }}
