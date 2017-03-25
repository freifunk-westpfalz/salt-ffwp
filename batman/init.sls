install batman-adv-dkms and batctl:
  pkg.installed:
    - pkgs:
      - batman-adv-dkms
      - batctl: 2013.4.0-1


# install batadv-vis:
#   pkg.installed:
#     - pkgs:
#       - batadv-vis: 2014.3.0-11

# The ff_fix_batman script ensures that the preferred (currently older) version
# of the batman_adv kernel module is compiled via DKMS and installed into the
# system.
place /usr/local/sbin/ff_fix_batman:
  file.managed:
    - name: /usr/local/sbin/ff_fix_batman
    - source: salt://batman/files/ff_fix_batman
    - user: root
    - group: root
    - mode: 744

ff_fix_batman:
  cmd.wait:
    - name: /usr/local/sbin/ff_fix_batman
    - watch:
      - pkg: install batman-adv-dkms and batctl

# Install and enable a ff-fix-batman service which runs at boot time
# to fix the kernel module after a kernel upgrade + reboot if neccessary.
place /lib/systemd/system/ff-fix-batman.service:
  file.managed:
    - name: /lib/systemd/system/ff-fix-batman.service
    - source: salt://batman/files/ff_fix_batman.service
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /usr/local/sbin/ff_fix_batman

enable-ff-fix-batman-service:
  service.enabled:
    - name: ff-fix-batman

# Make sure the batman_adv module is loaded at boot time
place /etc/modules-load.d/batman-adv.conf:
  file.managed:
      - name: /etc/modules-load.d/batman-adv.conf
      - source: salt://batman/files/batman-adv.module.conf

batman network interface:
  file.managed:
    - name: /etc/network/interfaces.d/batman.cfg
    - makedirs: true
    - user: root
    - group: root
    - mode: 660
    - source: salt://batman/files/batman.j2
    - template: jinja
