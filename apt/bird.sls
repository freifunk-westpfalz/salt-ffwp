{% if grains['os'] == 'Debian' %}
Debian Bird Repo:
  pkgrepo.managed:
    - name: deb http://bird.network.cz/debian/ {{ grains['oscodename'] }} main
    - key_url: http://bird.network.cz/debian/apt.key
    - file: /etc/apt/sources.list.d/bird.list
{% endif %}
