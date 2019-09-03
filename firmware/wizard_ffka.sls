create /srv/gluon-firmware-wizard_ffka:
  file.directory:
    - name: /srv/gluon-firmware-wizard_ffka
    - user: freifunk
    - group: freifunk
    - makedirs: True

clone FFDA gluon-firmware-wizard for ffka:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-darmstadt/gluon-firmware-wizard
    - target: /srv/gluon-firmware-wizard_ffka

gluon-firmware-wizard ffka-config:
  file.managed:
    - user: freifunk
    - name: www-data
    - name: /srv/gluon-firmware-wizard_ffka/config.js
    - source: salt://firmware/files/config_ffka.js
