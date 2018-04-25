include:
  - nginx

install acmetool:
  pkg.installed:
    - sources:
      - acmetool: https://launchpad.net/~hlandau/+archive/ubuntu/rhea/+files/acmetool_0.0.67-1xenial1_amd64.deb
    - allow_updates: true

place acmetool.conf:
  file.managed:
    - name: /etc/nginx/snippets/acmetool.conf
    - source: salt://common/files/snippet_acmetool.conf
    - makedirs: True
    - watch_in:
      - service: acmetool restart nginx

place acme_proxy.conf:
  file.managed:
    - name: /etc/nginx/sites-enabled/acme_proxy.conf
    - source: salt://common/files/nginx_acme_proxy.conf
    - makedirs: True
    - watch_in:
      - service: acmetool restart nginx

acmetool restart nginx:
  service.running:
    - name: nginx
