{% set minionid = grains['id'] %}
replace sshd config:
  file.managed:
    - name: /etc/ssh/sshd_config
    - mode: 644
    - source: salt://ssh/files/sshd_config.j2
    - template: jinja
    - context:
        port: {{ pillar['ssh_port'] }}

openssh service:
   service.running:
      - name: sshd
      - watch:
         - file: /etc/ssh/sshd_config
