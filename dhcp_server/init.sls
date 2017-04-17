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
    - enabled: true
    - watch:
      - file: place static.conf
      - file: place dhcpd.conf
      - pkg: install isc-dhcp-server
