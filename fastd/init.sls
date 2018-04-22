include:
  - apt.freifunk
  - apt.debian
  - ferm

install fastd:
  pkg.latest:
    - name: fastd
    - fromrepo: {{ grains['oscodename'] }}-backports

{% for instance in pillar['fastd'] %}

#TODO: only execute once
{% if instance.type == "server" %}
copy Fastd Blacklist:
  file.managed:
    - name: /etc/fastd/fastd-blacklist.sh
    - mode: 700
    - source: salt://fastd/files/fastd-blacklist.sh
{% endif %}

Fastd template instance {{ instance.name }}:
  file.managed:
    - name: /etc/fastd/{{ instance.name }}/fastd.conf
    - makedirs: true
    - user: root
    - group: root
    - mode: 660
    {% if instance.type == "server" %}
    - source: salt://fastd/files/server.j2
    {% endif %}
    {% if instance.type == "client" %}
    - source: salt://fastd/files/client.j2
    {% endif %}
    - template: jinja
    - context:
        name: "{{ instance.name }}"
        mtu: {{ instance.mtu }}
        mac: {{ instance.mac }}
        secret: {{ instance.secret }}
        {% if instance.type == "server"%}
        port: {{ instance.port }}
        {% if instance.peer_limit is defined %}
        peer_limit: {{ instance.peer_limit }}
        {% endif %}
        {% endif %}

enable/run systemd instance {{ instance.name }}:
  service.running:
    - name: fastd@{{ instance.name }}
    - enable: true
    - watch:
      - file: /etc/fastd/{{ instance.name }}/fastd.conf
{% endfor %}

#TODO: nur wenn es mindestens einen Fastd Server gibt
place /etc/ferm.d/fastd.conf:
  file.managed:
    - name: /etc/ferm.d/fastd.conf
    - source: salt://fastd/files/fastd.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
        ffwp: {{ pillar['ffwp'] }}
    - watch_in:
      - service: service ferm
