install telegraf:
  pkg.installed:
    - sources:
      - telegraf: https://dl.influxdata.com/telegraf/releases/telegraf_1.2.1_amd64.deb
    - allow_updates: true

#TODO: abhaenig von Hostname/Grain andere config deployen
telegraf config:
  file.managed:
    - name: /etc/telegraf/telegraf.conf
    - source: salt://common/files/gw_telegraf.conf.j2
    - template: jinja
    - backup: minion
    - context:
        hostname: {{ pillar['hostname'] }}

telegraf service:
  service.running:
    - name: telegraf
    - enable: true
    - watch:
      - file: telegraf config
