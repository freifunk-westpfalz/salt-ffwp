include:
  - common.telegraf

place influxdb_gw_stats.py:
  file.managed:
    - name: /root/influxdb_gw_stats.py
    - source: salt://gw/files/influxdb_gw_stats.py.j2
    - mode: 755
    - template: jinja

install influxdb, six, isc-dhcp-leases from pip:
  pip.installed:
    - names:
      - influxdb
      - six
      - isc-dhcp-leases

crontab influxdb_gw_stats.py:
  cron.present:
    - identifier: influxdb_gw_stats.py
    - minute: '*'
    - name: /usr/bin/python2 /root/influxdb_gw_stats.py > /dev/null
