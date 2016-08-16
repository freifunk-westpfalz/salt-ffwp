clone gluon:
  git.present:
    - user: freifunk
    - name: https://github.com/freifunk-gluon/gluon.git
    - target: /home/freifunk/gluon

clone ffwp site:
  git.present:
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
    - name: /home/freifunk/.ffwp/log/
    - user: freifunk
    - group: freifunk
    - makedirs: True

crontab gluon:
  cron.present:
    - user: freifunk
    - hour: 1
    - minute: 14
    - name:  /home/gluon/gluon/site/start-build.sh > /home/freifunk/.ffwp/log/nightly_build.log 2>&1
