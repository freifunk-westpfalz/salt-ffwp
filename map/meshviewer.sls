include:
  - apt.js

install yarn:
  pkg.installed:
    - name: yarn

install nodejs:
  pkg.installed:
    - name: nodejs

#https://git.darmstadt.ccc.de/ffda/salt/blob/master/meshviewer/init.sls

clone ffrgb meshviewer:
  git.latest:
    - name: https://github.com/ffrgb/meshviewer.git
    - target: /home/freifunk/meshviewer.git
    - user: freifunk
    - force_fetch: True
    - force_reset: True

meshviewer_remove_build:
  cmd.run:
    - onchanges:
      - git: clone ffrgb meshviewer
      - pkg: install nodejs
    - watch:
      - git: clone ffrgb meshviewer
      - pkg: install nodejs
    - cwd: /home/freifunk/meshviewer.git
    - name: rm -rf build

meshviewer_yarn_install:
  cmd.run:
    - onchanges:
      - cmd: meshviewer_remove_build
    - require:
      - pkg: install yarn
      - cmd: meshviewer_remove_build
    - cwd: /home/freifunk/meshviewer.git
    - user: freifunk
    - name: yarn && yarn add gulp-cli

meshviewer_install_config:
  file.managed:
    - name: /home/freifunk/meshviewer.git/config.js
    - user: www-data
    - group: www-data
    - source: salt://map/files/config.js.j2
    - template: jinja
    - require:
      - git: clone ffrgb meshviewer
    - watch:
      - git: clone ffrgb meshviewer

meshviewer_gulp:
  cmd.run:
    - onchanges:
      - cmd: meshviewer_yarn_install
      - file: meshviewer_install_config
    - require:
       - cmd: meshviewer_yarn_install
       - git: clone ffrgb meshviewer
    - cwd: /home/freifunk/meshviewer.git
    - user: freifunk
    - name: ./node_modules/.bin/gulp

meshviewer_empty_srv_www:
  file.absent:
    - name: /srv/meshviewer/
    - require:
       - cmd: meshviewer_gulp
    - watch:
       - cmd: meshviewer_gulp

meshviewer_create_srv_www:
  file.directory:
    - user: www-data
    - group: www-data
    - name: /srv/meshviewer/
    - require:
       - file: meshviewer_empty_srv_www
    - watch:
       - file: meshviewer_empty_srv_www

meshviewer_copy_to_srv_www:
  cmd.run:
    - name: cp -ar /home/freifunk/meshviewer.git/build/* /srv/meshviewer/. && chown www-data:www-data -R /srv/meshviewer/
    - require:
       - file: meshviewer_create_srv_www
    - onchanges:
       - file: meshviewer_create_srv_www
