place interfaces_direct:
  file.managed:
    - name: /etc/network/interfaces.d/interfaces_direct.cfg
    - source: salt://network/files/interfaces_direct.j2
    - template: jinja
    - context:
        network: {{ pillar['network'] }}
