include:
  - common.userfreifunk
  
add Adminteam SSH keys for user root:
  ssh_auth.present:
    - user: root
    - source: salt://ssh/files/adminteam.pub

add Adminteam SSH keys for user freifunk:
  ssh_auth.present:
    - user: freifunk
    - source: salt://ssh/files/adminteam.pub
    - require:
      - user: create user freifunk
