install common packages:
  pkg.latest:
    - pkgs:
      - mtr-tiny
      - htop
      - bash-completion
      - sudo
      - vim
      - gawk
      - wget
      - curl
      - mc
      - htop
      - pastebinit
      - jnettop
      - iotop
      - tcpdump
      - screen
      - tmux
      - strace
      - socat
      - dnsutils
      - host
      - tshark
      - dwdiff
#     - molly-guard
      - git
      - iperf
      - iperf3
      - iptables-persistent
      - mosh
      - conntrack
      - bridge-utils
      - ethtool
      - python-pip
      - python-netaddr
      - ncdu
      - vnstat
      - python3-pip
      - jq

install netaddr from pip:
  pip.installed:
    - name: netaddr

Install latest stable (or backports) Kernel:
  pkg.latest:
{% if grains['osfinger'] == "Debian-8" and salt['pillar.get']('backports_kernel') == true %}
    - fromrepo: {{ grains['oscodename'] }}-backports
{% endif %}
    - pkgs:
      - linux-image-amd64
      - linux-headers-amd64

default_locale:
  locale.system:
    - name: de_DE.UTF-8
