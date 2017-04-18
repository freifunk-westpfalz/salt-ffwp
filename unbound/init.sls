unbound:
    pkg.installed: []
    service.running:
        - require:
            - pkg: unbound
        - enable: true

/etc/unbound/unbound.conf:
    file.managed:
        - source: salt://unbound/files/unbound.conf
        - template: jinja
        - require:
            - pkg: unbound
        - watch_in:
          - service: unbound

/etc/unbound/root.hints:
    file.managed:
        - source: https://www.internic.net/domain/named.cache
        - skip_verify: True
        - require:
            - pkg: unbound
        # TODO: Uncomment if "Unable to manage file: 'hsum'" is fixed
        # - watch_in:
        #     - service: unbound


update unbound anchor for DNSSEC:
    cmd.run:
      - name: /usr/sbin/unbound-anchor -a "/var/lib/unbound/root.key"
      - watch_in:
        - service: unbound
