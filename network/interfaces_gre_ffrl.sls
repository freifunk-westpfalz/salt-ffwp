include:
  - ferm

/etc/network/interfaces.d/gre_ffrl.cfg:
  file.managed:
    - source: salt://network/files/interfaces_gre_ffrl.j2
    - template: jinja

place /etc/ferm.d/ffrl_gre.conf:
  file.managed:
    - name: /etc/ferm.d/ffrl_gre.conf
    - source: salt://network/files/ffrl_gre.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
