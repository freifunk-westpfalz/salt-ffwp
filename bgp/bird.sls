include:
  - apt.bird
  - ferm

install gw bird:
  pkg.installed:
    - name: bird

{% for bird in ['bird','bird6'] %}
place bgp {{bird}}.conf:
  file.managed:
    - name: /etc/bird/{{bird}}.conf
    - source: salt://bgp/files/{{bird}}.conf.j2
    - template: jinja
    - context:
        network: {{ pillar['network'] }}
        ffwp: {{ pillar['ffwp'] }}
        internal_gre: {{ pillar['internal_gre'] }}
        ffrl_gre: {{ pillar['ffrl_gre'] }}
        ffnw_gre: {{ pillar['ffnw_gre'] }}
#    - check_cmd: {{bird}} -p -c

service {{bird}}:
  service.running:
    - name: {{ bird }}
    - enable: true
    - reload: true
    - watch:
      - file: place bgp {{bird}}.conf
{% endfor %}

place bgp /etc/ferm.d/bird.conf:
  file.managed:
    - name: /etc/ferm.d/bird.conf
    - source: salt://bgp/files/bird.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
