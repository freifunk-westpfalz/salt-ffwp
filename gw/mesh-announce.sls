include:
  - ferm

https://github.com/freifunk-darmstadt/mesh-announce.git:
  git.latest:
    - target: /opt/mesh-announce

/etc/systemd/system/mesh-announce@.service:
  file.managed:
    - source: salt://gw/files/mesh-announce@.service
    - user: root
    - group: root
    - mode: 644

mesh-announce_deps:
  pkg.installed:
     - pkgs:
       - ethtool
       - lsb-release
       - python3-netifaces

/etc/mesh-announce:
  file.directory


/etc/mesh-announce/ffwp:
  file.managed:
    - source: salt://gw/files/mesh-announce.conf.j2
    - template: jinja
    - user: root
    - group: root

mesh-announce@ffwp:
  service.running:
    - enable: True
    - require:
      - git: https://github.com/freifunk-darmstadt/mesh-announce.git
      - file: /etc/systemd/system/mesh-announce@.service
      - file: /etc/mesh-announce/ffwp
      - pkg: mesh-announce_deps
    - watch:
      - git: https://github.com/freifunk-darmstadt/mesh-announce.git
      - file: /etc/systemd/system/mesh-announce@.service
      - file: /etc/mesh-announce/ffwp

place /etc/ferm.d/mesh-announce.conf:
  file.managed:
    - name: /etc/ferm.d/mesh-announce.conf
    - source: salt://gw/files/mesh-announce.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
