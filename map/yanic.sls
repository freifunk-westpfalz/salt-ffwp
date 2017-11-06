include:
  - common.go

create /var/freifunk/yanic/data:
  file.directory:
    - name: /var/freifunk/yanic/data
    - user: freifunk
    - group: root
    - makedirs: true

create /var/lib/yanic:
  file.directory:
    - name: /var/lib/yanic
    - user: freifunk
    - group: root
    - makedirs: true

install yanic:
  cmd.run:
    - name: /usr/local/go/bin/go get -v -u github.com/FreifunkBremen/yanic/cmd/...
    - creates: /opt/go/bin/yanic
    - env:
      - GOPATH: /opt/go

deploy yanic config:
  file.managed:
    - name: /etc/yanic.conf
    - source: salt://map/files/yanic.j2
    - template: jinja

deploy yanic service file:
  file.managed:
    - name: /etc/systemd/system/yanic.service
    - source: salt://map/files/yanic.service

yanic service:
  service.running:
    - name: yanic
    - enable: true
    - watch:
      - file: deploy yanic config
      - cmd: install yanic
