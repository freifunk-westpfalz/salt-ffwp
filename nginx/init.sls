include:
  - apt.debian

install openssl from backports:
  pkg.latest:
    - pkgs:
      - openssl
      - libssl1.0.0
    - fromrepo: jessie-backports

install nginx:
  pkg.installed:
    - name: nginx
    - fromrepo: jessie-backports

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
