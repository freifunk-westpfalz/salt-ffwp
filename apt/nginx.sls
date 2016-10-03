{% if grains['os'] == 'Debian' %}
Debian Nginx Repo:
  pkgrepo.managed:
    - names:
      - deb http://nginx.org/packages/debian/ {{ grains['oscodename'] }} nginx
      - deb-src http://nginx.org/packages/debian/ {{ grains['oscodename'] }} nginx
    - key_url: https://nginx.org/keys/nginx_signing.key
    - file: /etc/apt/sources.list.d/nginx.list
{% endif %}
