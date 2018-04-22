include:
  - ferm

/etc/network/interfaces.d/gre_exit.cfg:
  file.managed:
    - source: salt://network/files/interfaces_gre_exit.j2
    - template: jinja

place /etc/ferm.d/exit_gre.conf:
  file.managed:
    - name: /etc/ferm.d/exit_gre.conf
    - source: salt://network/files/exit_gre.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
