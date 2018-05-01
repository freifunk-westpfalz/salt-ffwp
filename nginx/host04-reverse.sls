include:
  - nginx
  - common.acmetool

acme host04-reverse config:
  file.managed:
    - name: /var/lib/acme/conf/responses
    - source: salt://nginx/files/hosts/host04-reverse/acme_response-file.yaml
    - makedirs: True

# {% if not salt['file.directory_exists' ]('/var/lib/acme/live/map.freifunk-westpfalz.de') %}
#
# request LE certs for host04-reverse domains:
#   cmd.run:
#     - name: acmetool quickstart --batch && acmetool --batch want map.freifunk-westpfalz.de tiles.freifunk-westpfalz.de seafile.freifunk-westpfalz.de api.freifunk-westpfalz.de stats.freifunk-westpfalz.de download.freifunk-westpfalz.de updates.freifunk-westpfalz.de download.westpfalz.freifunk.net updates.westpfalz.freifunk.net zammad.freifunk-westpfalz.de
#
# {% endif %}

LE Certs renew:
  cron.present:
    - user: root
    - name: /usr/local/bin/acmetool --batch reconcile
    - identifier: renewLetsencryptCerts
    - special: "@daily"


nginx-reverse-service:
  service.running:
    - name: nginx
    - enable: True

{% for config in ['seafile','zammand'] %}
place nginx {{ config }} reverse config:
  file.managed:
    - name: /etc/nginx/sites-enabled/{{ config }}.conf
    - source: salt://nginx/files/hosts/host04-reverse/{{ config }}.conf
    - watch_in:
      - service: nginx-reverse-service
{% endfor %}
