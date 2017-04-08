include:
  - nginx

nginx-map-service:
  service.running:
    - name: nginx
    - enable: True
    - watch:
        - file: /etc/nginx/conf.d/map.conf

place nginx map config:
  file.managed:
    - name: /etc/nginx/conf.d/map.conf
    - source: salt://nginx/files/hosts/map/map.conf
