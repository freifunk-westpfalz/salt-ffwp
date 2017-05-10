include:
  - ferm

/srv/respondd:
  file.directory

ffho-respondd:
  pkg.installed:
    - pkgs:
      - git
      - lsb-release
      - ethtool
      - python3
      - python3-netifaces
  git.latest:
   - name: https://github.com/FreifunkHochstift/ffho-respondd.git
   - target: /srv/respondd
   - require:
     - file: /srv/respondd

/srv/respondd/config.json:
  file.managed:
    - source: salt://gw/files/respondd.conf.j2
    - template: jinja

/etc/systemd/system/respondd.service:
  file.managed:
    - source: salt://gw/files/respondd.service
    - require:
      - git: ffho-respondd

respondd:
  service.running:
    - enable: True
    - require:
      - file: /srv/respondd/config.json
      - file: /etc/systemd/system/respondd.service
    - watch:
      - file: /srv/respondd/config.json
      - git: ffho-respondd

place /etc/ferm.d/respondd.conf:
  file.managed:
    - name: /etc/ferm.d/respondd.conf
    - source: salt://gw/files/respondd.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
