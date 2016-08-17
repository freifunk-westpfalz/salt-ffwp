include:
  - apt.freifunk

install fastd:
  pkg.latest:
    - name: fastd
    - require:
      - pkgrepo: add Debian Freifunk repos

copy Fastd Blacklist:
  file.managed:
    - name: /etc/fastd/fastd-blacklist.sh
    - mode: 700
    - source: salt://fastd/files/fastd-blacklist.sh

{% set minionid = grains['id'] %}
{% for instance in pillar['fastd']['minions'][minionid]  %}

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
        {% if instance.type == "server"%}
        port: {{ instance.port }}
        {% if instance.peer_limit is defined %}
        peer_limit: {{ instance.peer_limit }}
        {% endif %}
        {% endif %}
{% endfor %}
