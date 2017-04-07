include:
  - nginx

install php for index.html creation:
  pkg.latest:
    - names:
      - php5
      - php5-fpm
      - php5-common

nginx-firmware-service:
  service.running:
    - name: nginx
    - enable: True
    - watch:
        - file: /etc/nginx/conf.d/firmware.conf

place nginx firmware config:
  file.managed:
    - name: /etc/nginx/conf.d/firmware.conf
    - source: salt://nginx/files/firmware.conf
