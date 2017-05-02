include:
  - apt.bird

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


# #todo: check bird.conf before restart bird!!!
# - name: configure bird.conf
#   template: src=bird.conf.j2 dest=/etc/bird/bird.conf
#   notify:
#     - restart bird
#
# - name: configure bird6.conf
#   template: src=bird6.conf.j2 dest=/etc/bird/bird6.conf
#   notify:
#    - restart bird6
#
# - name: bird aktivieren und starten
#   service: name=bird state=started enabled=yes
#
# - name: bird aktivieren (Workaround weil enable=yes nicht tut)
#   command: systemctl enable bird
#   when: ansible_distribution == 'Debian' and ansible_distribution_release == 'jessie'
#
#
# - name: bird6 aktivieren und starten
#   service: name=bird6 state=started enabled=yes
#
# - name: bird6 aktivieren (Workaround weil enable=yes nicht tut)
#   command: systemctl enable bird6
#   when: ansible_distribution == 'Debian' and ansible_distribution_release == 'jessie'
