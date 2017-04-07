install grafana:
  pkg.installed:
    - sources:
      - grafana: https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_4.2.0_amd64.deb
    - allow_updates: true

grafana config:
  file.managed:
    - name: /etc/grafana/grafana.ini
    - source: salt://map/files/grafana.j2
    - template: jinja
    - backup: minion
    - group: grafana

reload unit files after Grafana install:
  module.wait:
    - name: service.systemctl_reload
    - watch:
      - pkg: install grafana

grafana service:
  service.running:
    - name: grafana-server
    - enable: true
    - watch:
      - file: grafana config
