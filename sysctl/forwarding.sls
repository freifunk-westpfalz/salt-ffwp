enable IPv4 forwarding:
  sysctl.present:
    - name: net.ipv4.ip_forward
    - value: 1

enable IPv6 forwarding:
  sysctl.present:
    - name: net.ipv6.conf.all.forwarding
    - value: 1
