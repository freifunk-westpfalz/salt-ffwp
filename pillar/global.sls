#!yaml|gpg
ffwp:
  as_number: 65242
  v4_network: 10.198.0.0/16
  #TODO: tatsaechlich genutztes Clientnetz von komplettem /16 trennen
  v6_ula_48: fdc6:c4fe:1de4::/48
  v6_ula_prefix: "fdc6:c4fe:1de4:0000:"
  v6_ffrl_48: 2a03:2260:100d::/48
  v6_ffrl_00_56: 2a03:2260:100d:0000::/56
  v6_ffnw_48: 2a07:59c6:ec01::/48
  v6_ffnw_00_56: 2a07:59c6:ec01:0000::/56
  v6_public_prefix: "2a03:2260:100d:0000:"
  search_domain: ffwp.info

global_host_info:
  gw01.freifunk-westpfalz.de:
    public_v4: 89.163.141.92
    public_v6: 2001:4ba0:fffc:00f4:101::1
    outgoing_interface_v4: 89.163.141.92
  gw02.freifunk-westpfalz.de:
    public_v4: 46.4.148.30
    public_v6: 2a01:4f8:140:81e8:46:4:148:30
    outgoing_interface_v4: 46.4.148.30
  gw03.freifunk-westpfalz.de:
    public_v4: 185.215.214.138
    public_v6: 2a07:59c6:ee02:203::1
    outgoing_interface_v4: 185.215.214.138
  gw04.freifunk-westpfalz.de:
    public_v4: 185.215.214.139
    public_v6: 2a07:59c6:ee02:204::1
    outgoing_interface_v4: 185.215.214.139
  bgp1.freifunk-westpfalz.de:
    public_v4: 89.163.141.89
    public_v6: 2001:4ba0:fffc:00f4:100::1
    internal_v4: 10.198.192.1
    internal_v6: 2a03:2260:100d:0100::1
    outgoing_interface_v4: 89.163.141.89
  bgp2.freifunk-westpfalz.de:
    public_v4: 46.4.148.29
    public_v6: 2a01:4f8:140:81e8:46:4:148:29
    internal_v4: 10.198.192.17
    internal_v6: 2a03:2260:100d:0200::1
    outgoing_interface_v4: 46.4.148.29
  bgp3.freifunk-westpfalz.de:
    public_v4: 185.133.208.203
    public_v6: 2a07:59c6:ee02:201::1
    internal_v4: 10.198.192.33
    internal_v6: 2a03:2260:100d:0300::1
    outgoing_interface_v4: 185.133.208.203
  bgp4.freifunk-westpfalz.de:
    public_v4: 185.133.208.204
    public_v6: 2a07:59c6:ee02:202::1
    internal_v4: 10.198.192.49
    internal_v6: 2a03:2260:100d:0400::1
    outgoing_interface_v4: 185.133.208.204

influxdbuser.telegraf.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WAQ//VgocFZZiNSLXy6y+zd0Uk/n50TdrQaCeCgmXogXkZNWA
  ruORX7Kw4IkmEvnvveuMg6IqMj5U0ETrQPbKHo2Ja/KwNssSk0EibJES92TJncx5
  TzQIHvN4MZSkfd1w/Og8ho3b7vu6lJ1Y40lxGHD6Vrb41CizypJ3bXDdRPnIPa3C
  lKxZhLmeQQc2UXBfEVmOeQ7K6B/Wk17zyPgM3uBpBvNqhlhvXgQBjIInHoRrydhj
  GCdqgfhYRWWWDXxh7NCjjlce/2KQgThngfwzYCyDxA+fpW9ITxt+zbzsNnAAgSLn
  264CVrt+ooUOS8OVl+r3RZQG1Kzq6angr7z7iqHt2eYtngf0RlmqiOFTSpjIEFKm
  OVkdEtAHZj6Oj8IpL7U94OohlIyELUGfNPJLmQ5b1X39HRjy2ZtMQnAjMH1xRkx8
  2kYhVYYA+QUSusbPxRBeReS8GVNiau47OM007EYPADgkffHMWkN/j0LJS3ZRca9x
  gtT1B00OHjvj1WULrYEwIruyJPG39jYLLw2mxiNU2K1CbyrfwZruPMICv7Z3MMW2
  4AqaU8ygc/ZA65RA524kXcIsns5BF26khJrB/y3shafJpXMOdZMkiNphiAUxdPC9
  pmETGnTqYRu66s2kMDhUA7Mk/herI4gm2avZwG+1nLgq9gGuiuY7Sr0TVaexIqTS
  TwHO1WgkmxMzc07FbF8daliD4Yj01Io+d4TH5aPURb0CYC0BeIi/5IfF3C+0ltiW
  4Ns2KUpe7bHP5IxQSEH6jlcLk/PWmMiO9LHCW9hIBRc=
  =M+mT
  -----END PGP MESSAGE-----

influxdbuser.ext_measurement.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WAQ/+NNLELTL3/EqEI/xf7fdocjH5k9XpbkFEQdXU61l+Mjqd
  tSUvQeXnmWKmLX7z9VuDtZBxWe/tsoJ2PDQlB3dPM3mb8OOcgK2K0BtMIJGf3FJ7
  iu7PHRhe44kE6qydZDqy+9TgKK618uY/C0ny7zzJtmfRxDnenbHv+AakKizKBHWh
  28pu3yZUNEsD22FmUQJ/ajRPWpeTXke0N6AhmTIWKCqu1Jv3hFRrAwdsTcvourNs
  5qGtmmgC+5NVr1fcoRSqUDVPC1rv4vJB6mRGfSTM2NMCKdF+JfpqxMtedjiLofB8
  zHnYUhRLeGwBRgHjzqkHV8Hg20jsojJU0c+jdVP+QFThfkpHkSut4VmbNLuGxrkd
  DUen/k7QJvqaCD8D3Uu2YihggJr1hUr2pFMMJPHjsalGJ5SzhU1FWBq3+VuCrjLm
  gBHuacc9uItFxV/MWAusVTAJLxzPy6fssJPJeIjPWvcM2SaZBXG9xozotfVgUBYH
  /hmDDVKS/Y+q1gLFiYebfrfg+vf+9DLzv8iTER8iHa9lrcn87tq3KyyRQNNUp2vV
  Hdkd87xe3tpPpl52vd45VucrNPC7PhCPV5wwTXPN8z7SnJA/SUj0IF53BVVuG0Xr
  vIRG1soq/Z/T8aLl4G5WpF1Fsb/dVOvo45/TXYSvHWgqzl8abi/QwEwu6uv4YEXS
  TwHcgyQGJ/cXZmBYyvdUDZVgOf2efW/a1dHRzoTw/S412Qrxyzr4Q6f4M/IlhIXb
  uh8CSXce2tJT1pG9TH6eALsAz6r7hV+05wes7sueiPE=
  =pisU
  -----END PGP MESSAGE-----
