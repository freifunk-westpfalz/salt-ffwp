create user freifunk:
  user.present:
    - name: freifunk
    - shell: /bin/bash

clone FFWP git repos:
  git.latest:
    - user: freifunk
    - names:
      - https://github.com/freifunk-westpfalz/scripts-ffwp.git:
        - target: /home/freifunk/scripts-ffwp
      - https://github.com/freifunk-westpfalz/config-ffwp.git:
        - target: /home/freifunk/config-ffwp

create .ffwp directory:
  file.directory:
    - name: /home/freifunk/.ffwp/
    - user: freifunk
    - group: freifunk
    - makedirs: True

create /var/freifunk:
  file.directory:
    - name: /var/freifunk
    - user: freifunk
    - group: freifunk
    - makedirs: true

set git name for user freifunk:
  git.config_set:
    - name: user.name
    - value: {{ pillar['git_name'] }}
    - user: freifunk
    - global: true
