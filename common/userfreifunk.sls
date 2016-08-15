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
