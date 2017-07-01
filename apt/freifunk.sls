{% if grains['os'] == 'Debian' %}
add Debian Freifunk repos:
  pkgrepo.managed:
    - names:
{% if grains['oscodename'] == 'jessie' %}
      - deb [arch=amd64] https://debian.draic.info/ wheezy main
      - deb-src https://debian.draic.info/ wheezy main
{% endif %}
      - deb https://repo.universe-factory.net/debian/ sid main:
        - keyserver: pool.sks-keyservers.net
        - keyid: 16EF3F64CB201D9C
    - file: /etc/apt/sources.list.d/freifunk.list

APT Preference universe-factory:
  file.managed:
    - name: /etc/apt/preferences.d/universe-factory
    - source: salt://apt/files/universe-factory.preferences
{% endif %}
