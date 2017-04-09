api serve dir:
  file.directory:
    - user: www-data
    - group: www-data
    - name: /srv/api/

#TODO: replace only when necessary (ignore lastchange and nodes)
place api file:
  file.managed:
    - name: /srv/api/FreifunkWestpfalz-api.json
    - source: salt://map/files/FreifunkWestpfalz-api.json
    - user: freifunk
    - group: www-data

clone ffapi-updater:
  git.latest:
    - name: https://github.com/freifunk-westpfalz/ffapi-updater
    - target: /home/freifunk/ffapi-updater.git
    - user: freifunk

crontab ffapi-updater:
  cron.present:
    - identifier: ffapi-updater
    - user: freifunk
    - minute: */5
    - name:  (cd /home/freifunk/ffapi-updater.git && /usr/bin/python3 /home/freifunk/ffapi-updater.git/ffapi-updater.py >/home/freifunk/ffapi-updater.git/ffapi-updater.log 2>&1)
