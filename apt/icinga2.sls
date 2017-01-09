{% if grains['os'] == 'Debian' %}
add Debian Icinga2 repos:
  pkgrepo.managed:
    - name: deb http://debmon.org/debmon debmon-jessie main:
    - key_url: http://debmon.org/debmon/repo.key
    - file: /etc/apt/sources.list.d/debmon.list
{% endif %}
