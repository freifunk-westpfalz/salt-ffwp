place gw rc_conf:
  file.managed:
    - name: /etc/rc.conf
    - source: salt://gw/files/rc.conf.j2
    - template: jinja
    - context:
        ffwp: {{ pillar['ffwp'] }}
