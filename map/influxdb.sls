include:
  - ferm

install influxdb:
  pkg.installed:
    - sources:
      - influxdb: https://dl.influxdata.com/influxdb/releases/influxdb_1.4.3_amd64.deb
    - allow_updates: true

place /etc/ferm.d/influxdb.conf:
  file.managed:
    - name: /etc/ferm.d/influxdb.conf
    - source: salt://map/files/influxdb.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm

install python influxdb:
  pip.installed:
    - name: influxdb
    - upgrade: true
    - bin_env: /usr/bin/pip2

{% if not salt['influxdb.user_exists' ]('admin') %}
influxdb without auth config:
  file.managed:
    - name: /etc/influxdb/influxdb.conf
    - source: salt://map/files/influxdb.j2
    - template: jinja
    - context:
        auth_enabled: 'false'
    - backup: minion

influxdb without auth service:
  service.running:
    - name: influxdb
    - watch:
      - file: influxdb without auth config

create influxdbuser admin:
  influxdb_user.present:
    - name: admin
    - password: {{ pillar['influxdb.password'] }}
    - admin: true
{% endif %}

{% for user in ['grafana','yanic','telegraf','ext_measurement'] %}
create influxdbuser {{ user }}:
  influxdb_user.present:
    - name: {{ user }}
    - password: {{ salt['pillar.get']('influxdbuser.'~user~'.password') }}
{% endfor %}

{% for db in ['ffwp','ffwp_telegraf','ffwp_ext_measurement_ping'] %}
create influxdb {{ db }}:
  influxdb_database.present:
    - name: {{ db }}

set permissions for influxdbuser grafana for db {{ db }}:
  module.run:
    - name: influxdb.grant_privilege
    - database: {{ db }}
    - username: grafana
    - privilege: read
{% endfor %}

set permissions for influxdbuser yanic for db ffwp:
  module.run:
    - name: influxdb.grant_privilege
    - database: ffwp
    - username: yanic
    - privilege: all

set permissions for influxdbuser telegraf for db ffwp_telegraf:
  module.run:
    - name: influxdb.grant_privilege
    - database: ffwp_telegraf
    - username: telegraf
    - privilege: all

set permissions for influxdbuser ext_measurement for db ffwp_ext_measurement_ping:
  module.run:
    - name: influxdb.grant_privilege
    - database: ffwp_ext_measurement_ping
    - username: ext_measurement
    - privilege: all

influxdb with auth config:
  file.managed:
    - name: /etc/influxdb/influxdb.conf
    - source: salt://map/files/influxdb.j2
    - template: jinja
    - context:
        auth_enabled: 'true'
    - backup: minion

influxdb with auth service:
  service.running:
    - name: influxdb
    - enable: true
    - watch:
      - file: influxdb with auth config
