include:
  - nginx

nginx-firmware-service:
  service.running:
    - name: nginx
    - enable: True
    - watch:
        - file: place nginx firmware config

place nginx firmware config:
  file.managed:
    - name: /etc/nginx/sites-enabled/firmware.conf
    - source: salt://nginx/files/hosts/firmware/firmware.conf
