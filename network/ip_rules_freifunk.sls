name ip rule tables:
  file.blockreplace:
    - name: /etc/iproute2/rt_tables
    - marker_start: "# START managed zone Freifunk tables -DO-NOT-EDIT-"
    - marker_end: "# END managed zone Freifunk tables --"
    - append_if_not_found: True
    - content:  |
        42   freifunk
        43   interior
