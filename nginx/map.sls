include:
  - nginx
  - common.acmetool

acme map config:
  file.managed:
    - name: /var/lib/acme/conf/responses
    - source: salt://nginx/files/hosts/map/acme_response-file.yaml
    - makedirs: True


{% if not salt['file.directory_exists' ]('/var/lib/acme/live/map.freifunk-westpfalz.de') %}

request LE certs for map domains:
  cmd.run:
    - name: acmetool quickstart --batch && acmetool --batch want map.freifunk-westpfalz.de tiles.freifunk-westpfalz.de api.freifunk-westpfalz.de stats.freifunk-westpfalz.de

{% endif %}

LE Certs renew:
  cron.present:
    - user: root
    - name: /usr/local/bin/acmetool --batch reconcile
    - identifier: renewLetsencryptCerts
    - special: "@daily"

generate cache dirs:
  file.directory:
    - user: www-data
    - group: www-data
    - makedirs: true
    - names:
      - /var/tmp/nginx/tiles/osm
      - /var/tmp/nginx/map
      - /var/tmp/nginx/stats
    - watch_in:
      - service: nginx-map-service

nginx-map-service:
  service.running:
    - name: nginx
    - enable: True

{% for config in ['map','stats','api','tiles'] %}
place nginx {{ config }} map config:
  file.managed:
    - name: /etc/nginx/sites-enabled/{{ config }}.conf
    - source: salt://nginx/files/hosts/map/{{ config }}.conf
    - watch_in:
      - service: nginx-map-service
{% endfor %}
