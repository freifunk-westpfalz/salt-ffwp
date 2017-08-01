include:
  - ferm

/etc/network/interfaces.d/gre_internal.cfg:
  file.managed:
    - source: salt://network/files/interfaces_gre_internal.j2
    - template: jinja

#TODO: Ferm Regeln hier schon generieren und nicht erst wenn Interfaces up
