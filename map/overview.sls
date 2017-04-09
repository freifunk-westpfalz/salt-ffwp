overview serve dir:
  file.directory:
    - user: freifunk
    - group: www-data
    - name: /srv/overview/

install python-requests:
  pkg.latest:
    - name: python3-requests

clone overview map:
  git.latest:
    - name: https://github.com/freifunk-westpfalz/expansion-map
    - target: /srv/overview/
    - user: freifunk

crontab ffapi-updater:
  cron.present:
    - identifier: overview-map
    - user: freifunk
    - hour: 3
    - minute: 42
    - name:  (cd /srv/overview/ && /usr/bin/python3 /srv/overview/mkpoly -f ffmap https://map.freifunk-westpfalz.de/data/nodes.json > /srv/overview/overview.log 2>&1)
