include:
  - nginx
  - common.acmetool

acme config:
  file.managed:
    - name: /var/lib/acme/conf/responses
    - source: salt://nginx/files/hosts/firmware/acme_response-file.yaml
    - makedirs: True

{% if not salt['file.directory_exists' ]('/var/lib/acme/live/download.freifunk-westpfalz.de/') %}

request LE certs for firmware domains:
  cmd.run:
    - name: acmetool quickstart --batch && acmetool --batch want download.freifunk-westpfalz.de updates.freifunk-westpfalz.de download.premium.freifunk-westpfalz.de

{% endif %}

LE Certs renew:
  cron.present:
    - user: root
    - name: /usr/local/bin/acmetool --batch reconcile
    - identifier: renewLetsencryptCerts
    - special: "@daily"


nginx-firmware-service:
  service.running:
    - name: nginx
    - enable: True
    - reload: True
    - watch:
        - file: place nginx firmware ffwp config
        - file: place nginx firmware ffka config

place nginx firmware ffwp config:
  file.managed:
    - name: /etc/nginx/sites-enabled/firmware_ffwp.conf
    - source: salt://nginx/files/hosts/firmware/firmware_ffwp.conf.j2
    - template: jinja
    
place nginx firmware ffka config:
  file.managed:
    - name: /etc/nginx/sites-enabled/firmware_ffka.conf
    - source: salt://nginx/files/hosts/firmware/firmware_ffka.conf.j2
    - template: jinja