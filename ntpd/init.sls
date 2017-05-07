include:
  - ferm

install ntp:
  pkg.installed:
    - name: ntp

service ntp:
  service.running:
    - name: ntp
    - enable: True
    - reload: True
    - require:
      - file: /etc/ntp.conf

place /etc/ntp.conf:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://ntpd/files/ntp.conf
    - user: root
    - group: root
    - mode: 644

place /etc/ferm.d/ntp.conf:
  file.managed:
    - name: /etc/ferm.d/ntp.conf
    - source: salt://ntpd/files/ferm.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
