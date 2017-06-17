include:
  - apt.debian
  - ferm


{% if grains['os'] == 'Debian' and grains['oscodename'] == 'jessie' %}
install openssl from backports:
  pkg.latest:
    - pkgs:
      - openssl
      - libssl1.0.0
    - fromrepo: jessie-backports
{% endif %}

install nginx:
  pkg.installed:
    - name: nginx
{% if grains['os'] == 'Debian' and grains['oscodename'] == 'jessie' %}
    - fromrepo: jessie-backports
{% endif %}

/etc/nginx/snippets:
  file.directory:
    - user: root
    - group: root
    - require:
      - pkg: install nginx

/etc/nginx/sites-enabled/default:
  file.absent

openssl dhparam -out /etc/nginx/dh4096.pem 4096 && chmod 660 /etc/nginx/dh4096.pem:
  cmd.run:
    - creates: /etc/nginx/dh4096.pem
    - require:
      - pkg: install nginx


{% for file in ['gzip','ssl','ssl-redirect'] %}
/etc/nginx/snippets/{{ file }}.conf:
   file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://nginx/files/snippets/{{ file }}.conf
    - require:
      - file: /etc/nginx/snippets
    - watch_in:
      - service: restart nginx
{% endfor %}

restart nginx:
  service.running:
    - name: nginx
    - enable: true

place /etc/ferm.d/nginx.conf:
  file.managed:
    - name: /etc/ferm.d/nginx.conf
    - source: salt://nginx/files/nginx.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
