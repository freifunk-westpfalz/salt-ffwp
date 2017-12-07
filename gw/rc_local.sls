place gw rc_conf:
  file.managed:
    - name: /etc/rc.local
    - source: salt://gw/files/rc.local.j2
    - template: jinja
    - mode: 775
    - context:
        ffwp: {{ pillar['ffwp'] }}
