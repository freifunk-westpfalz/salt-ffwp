install influxdb:
  pkg.installed:
    - sources:
      - influxdb: https://dl.influxdata.com/influxdb/releases/influxdb_1.2.2_amd64.deb
    - allow_updates: true

influxdb config:
  file.managed:
    - name: /etc/influxdb/influxdb.conf
    - source: salt://map/files/influxdb.j2
    - template: jinja
    - backup: minion

influxdb service:
  service.running:
    - name: influxdb
    - enable: true
    - watch:
      - file: influxdb config
