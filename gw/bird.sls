include:
  - apt.bird
  - ferm

install gw bird:
  pkg.installed:
    - name: bird

{% for bird in ['bird','bird6'] %}
place gw {{bird}}.conf:
  file.managed:
    - name: /etc/bird/{{bird}}.conf
    - source: salt://gw/files/{{bird}}.conf.j2
    - template: jinja
    - context:
        network: {{ pillar['network'] }}
        ffwp: {{ pillar['ffwp'] }}
    - check_cmd: {{bird}} -p -c
    -

service {{bird}}:
  service.running:
    - name: {{ bird }}
    - enable: true
    - reload: true
    - watch:
      - file: place gw {{bird}}.conf
{% endfor %}

place  gw /etc/ferm.d/bird.conf:
  file.managed:
    - name: /etc/ferm.d/bird.conf
    - source: salt://gw/files/bird.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
