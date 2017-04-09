include:
  - nginx

nginx-map-service:
  service.running:
    - name: nginx
    - enable: True

{% for config in ['map','stats','api'] %}
place nginx {{ config }} map config:
  file.managed:
    - name: /etc/nginx/conf.d/{{ config }}.conf
    - source: salt://nginx/files/hosts/map/{{ config }}.conf
    - watch_in:
      - service: nginx-map-service
{% endfor %}
