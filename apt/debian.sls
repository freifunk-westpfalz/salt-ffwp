{% if grains['os'] == 'Debian' %}
Debian Repos:
  pkgrepo.managed:
    - names:
      - deb http://ftp2.de.debian.org/debian/ {{ grains['oscodename'] }} main
      - deb http://ftp2.de.debian.org/debian/ {{ grains['oscodename'] }}-updates main
      - deb http://security.debian.org/ {{ grains['oscodename'] }}/updates main

jessie-backports:
  pkgrepo.managed:
    - name: deb http://ftp.debian.org/debian {{ grains['oscodename'] }}-backports main
    - comments:
      - "Backports"
    - file: /etc/apt/sources.list.d/backports.list
{% endif %}
