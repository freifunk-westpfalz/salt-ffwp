# Bei Umzug: rsync -rzEdhP --copy-links /srv/firmware/* root@neurserver:/srv/firmware/

{% if salt['file.directory_exists']('/home/freifunk/gluon') == False %}
inital clone gluon:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-westpfalz/gluon.git
    - target: /home/freifunk/gluon
{% endif %}

clone ffwp site:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-westpfalz/site-ffwp.git
    - target: /home/freifunk/gluon/site

create /srv/gluon-firmware-wizard:
  file.directory:
    - name: /srv/gluon-firmware-wizard
    - user: freifunk
    - group: freifunk
    - makedirs: True

clone FFDA gluon-firmware-wizard for ffwp:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-darmstadt/gluon-firmware-wizard
    - target: /srv/gluon-firmware-wizard

gluon-firmware-wizard ffwp-config:
  file.managed:
    - user: freifunk
    - name: www-data
    - name: /srv/gluon-firmware-wizard/config.js
    - source: salt://firmware/files/config_ffwp.js

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

install gluon dependencies:
  pkg.latest:
    - pkgs:
      - git
      - subversion
      - build-essential
      - gawk
      - unzip
      - libncurses5-dev
      - zlib1g-dev
      - libssl-dev

install ecdsautils:
  pkg.latest:
    - name: ecdsautils

create log directory:
  file.directory:
    - name: /home/freifunk/.ffwp/fw/log/
    - user: freifunk
    - group: freifunk
    - makedirs: True

{% if salt['pillar.get']('firmware:crontab_nightly') == true %}
add crontab gluon:
  cron.present:
    - identifier: nightly_build_cron
    - user: freifunk
    - hour: 22
    - minute: 00
    - name:  (cd /home/freifunk/gluon/site && /home/freifunk/gluon/site/start-build.sh > /home/freifunk/.ffwp/fw/log/nightly_build.log 2>&1)
{% else %}
remove crontab gluon:
  cron.absent:
    - identifier: nightly_build_cron
    - user: freifunk
{% endif %}
copy firmware autobuilder secret key:
  file.managed:
    - name: /home/freifunk/.ffwp/fw/autobuilder.secret
    - makedirs: true
    - user: freifunk
    - group: freifunk
    - mode: 660
    - contents_pillar: firmware:secret_key

copy firmware autobuilder public key:
  file.managed:
    - name: /home/freifunk/.ffwp/fw/autobuilder.pub
    - makedirs: true
    - user: freifunk
    - group: freifunk
    - mode: 660
    - contents_pillar: firmware:public_key

#TODO: Symlinks nach einem Build
symlink nightly:
  file.symlink:
    - name: /srv/firmware/nightly
    - target: /home/freifunk/gluon/output/images
    - makedirs: True

symlink .nightly:
  file.symlink:
    - name: /srv/firmware/.nightly
    - target: /home/freifunk/gluon/output/images
    - makedirs: True

symlink .build.txt:
  file.symlink:
    - name: /srv/firmware/.build.txt
    - target: /home/freifunk/.ffwp/fw/log/build.log

symlink .nightly_build.txt:
  file.symlink:
    - name: /srv/firmware/.nightly_build.txt
    - target: /home/freifunk/.ffwp/fw/log/nightly_build.log

create /srv/firmware_ffka:
  file.directory:
    - name: /srv/firmware_ffka
    - makedirs: True

symlink ffka .nightly:
  file.symlink:
    - name: /srv/firmware_ffka/.nightly
    - target: srv/firmware_ffka/nightly
    - makedirs: True
