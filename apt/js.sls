yarn repo:
  pkgrepo.managed:
    - humanname: yarn
    - name: deb https://dl.yarnpkg.com/debian/ stable main
    - key_url: https://dl.yarnpkg.com/debian/pubkey.gpg
    - file: /etc/apt/sources.list.d/yarn.list

nodejs repo:
  pkgrepo.managed:
    - humanname: nodejs
    - name: deb https://deb.nodesource.com/node_7.x jessie main
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
    - file: /etc/apt/sources.list.d/nodejs.list
