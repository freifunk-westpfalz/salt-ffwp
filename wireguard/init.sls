#https://git.maglab.space/mag.lab/saltstack/blob/master/state/wireguard/init.sls
wireguard:
  file.managed:
    - name: /etc/apt/preferences.d/debian-unstable
    - contents: |
        Explanation: Do not install unstable by default
        Package: *
        Pin: release a=unstable
        Pin-Priority: 150
  pkgrepo.managed:
    - humanname: debian-unstable
    - name: deb http://deb.debian.org/debian/ unstable main
    - file: /etc/apt/sources.list.d/debian-unstable.list
    - require:
      - file: wireguard
  pkg.installed:
    - pkgs:
      - linux-headers-{{ grains.osarch }}
      - wireguard-dkms
      - wireguard-tools
    - require:
      - pkgrepo: wireguard


