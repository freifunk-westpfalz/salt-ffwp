include:
  - nginx

nginx-map-service:
  service.running:
    - name: nginx
    - enable: True

{% for config in ['map','stats','api','overview'] %}
place nginx {{ config }} map config:
  file.managed:
    - name: /etc/nginx/sites-enabled/{{ config }}.conf
    - source: salt://nginx/files/hosts/map/{{ config }}.conf
    - watch_in:
      - service: nginx-map-service
{% endfor %}
