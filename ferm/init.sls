install ferm:
  pkg.installed:
    - name: ferm

/etc/default/ferm:
  file.managed:
    - source: salt://ferm/files/ferm

/etc/systemd/system/ferm.service:
  file.managed:
    - source: salt://ferm/files/ferm.service
    - user: root
    - group: root
    - mode: 644

/etc/ferm.d:
  file.directory:
    - user: root
    - group: root

place stateful ferm.conf:
  file.managed:
    - name: /etc/ferm/ferm.conf
    - source: salt://ferm/files/ferm-stateful.conf.j2
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
    - template: jinja
    - watch_in:
      - service: service ferm

service ferm:
  service.running:
    - name: ferm
    - enable: true
    - require:
      - file: /etc/systemd/system/ferm.service
