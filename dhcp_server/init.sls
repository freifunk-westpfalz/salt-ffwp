include:
  - ferm

install isc-dhcp-server:
  pkg.installed:
    - name: isc-dhcp-server

place dhcpd.conf:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://dhcp_server/files/dhcpd.conf.j2
    - template: jinja

place static.conf:
  file.managed:
    - name: /etc/dhcp/static.conf
    - source: salt://dhcp_server/files/static.conf

service isc-dhcp-server:
  service.running:
    - name: isc-dhcp-server
    - enable: true
    - watch:
      - file: place static.conf
      - file: place dhcpd.conf
      - pkg: install isc-dhcp-server

place /etc/ferm.d/dhcp_server.conf:
  file.managed:
    - name: /etc/ferm.d/dhcp_server.conf
    - source: salt://dhcp_server/files/dhcp_server.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: service ferm
