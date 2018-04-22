include:
  - ferm

place bgp /etc/ferm.d/bgp_vm.conf:
  file.managed:
    - name: /etc/ferm.d/bgp_vm.conf
    - source: salt://bgp/files/bgp_vm.ferm.j2
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
        network: {{ pillar['network'] }}
        ffwp: {{ pillar['ffwp'] }}
        ffrl_gre: {{ pillar['ffrl_gre'] }}
        ffnw_gre: {{ pillar['ffnw_gre'] }}

    - watch_in:
      - service: service ferm
