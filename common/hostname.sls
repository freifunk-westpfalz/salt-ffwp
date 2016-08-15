set-fqdn:
  cmd.run:
    {% if grains["init"] == "systemd" %}
    - name: hostnamectl set-hostname {{ fqdn }}
    {% else %}
    - name: hostname {{ fqdn }}
  host.only:
    - name: 127.0.0.1
    - hostnames: {{ fqdn }}
