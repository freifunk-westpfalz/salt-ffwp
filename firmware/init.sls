clone gluon:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-gluon/gluon.git
    - target: /home/freifunk/gluon

clone ffwp site:
  git.latest:
    - user: freifunk
    - name: https://github.com/freifunk-westpfalz/site-ffwp.git
    - target: /home/freifunk/gluon/site

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
    - fromrepo: jessie-backports

create log directory:
  file.directory:
    - name: /home/freifunk/.ffwp/fw/log/
    - user: freifunk
    - group: freifunk
    - makedirs: True

crontab gluon:
  cron.present:
    - user: freifunk
    - hour: 1
    - minute: 14
    - name:  (cd /home/freifunk/gluon/site && /home/freifunk/gluon/site/start-build.sh > /home/freifunk/.ffwp/log/nightly_build.log 2>&1)

{% set minionid = grains['id'] %}

copy firmware autobuilder secret key:
  file.managed:
    - name: /home/freifunk/.ffwp/fw/autobuilder.secret
    - makedirs: true
    - user: freifunk
    - group: freifunk
    - mode: 660
    - contents_pillar: firmware:minions:{{ minionid }}:secret_key

copy firmware autobuilder public key:
  file.managed:
    - name: /home/freifunk/.ffwp/fw/autobuilder.pub
    - makedirs: true
    - user: freifunk
    - group: freifunk
    - mode: 660
    - contents_pillar: firmware:minions:{{ minionid }}:public_key
