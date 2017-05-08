include:
  - ferm

place /etc/ferm.d/br_ffwp.conf:
  file.managed:
    - name: /etc/ferm.d/br_ffwp.conf
    - source: salt://network/files/br_ffwp.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm

br_ffwp network interface:
  file.managed:
    - name: /etc/network/interfaces.d/br_ffwp.cfg
    - makedirs: true
    - user: root
    - group: root
    - mode: 660
    - source: salt://network/files/br_ffwp.j2
    - template: jinja
