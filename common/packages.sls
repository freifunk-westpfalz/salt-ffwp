install common packages:
  pkg.latest:
    - pkgs:
      - mtr
      - htop
      - bash-completion
      - sudo
      - vim
      - gawk
      - wget
      - curl
      - mc
      - htop
      - vnstat
      - tmux
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
      #    - molly-guard
      - git
      - iperf
      - iperf3
      - iptables-persistent
      - mosh
      - conntrack
      - bridge-utils
      - ethtool

Install latest stable (or backports) Kernel:
  pkg.latest:
{% if grains['osfinger'] == "Debian-8" and salt['pillar.get']('minions:'~grains['id']~':backports_kernel') == true %}
    - fromrepo: jessie-backports
{% endif %}
    - pkgs:
      - linux-image-amd64

default_locale:
  locale.system:
    - name: de_DE.UTF-8
