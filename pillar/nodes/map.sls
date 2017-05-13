#!yaml|gpg
hostname: map
fqdn: map.freifunk-westpfalz.de
backports_kernel: true
ssh_port: 22153
git_name: map

network:
  br_ffwp:
    v4_network: 10.198.0.3/16
    v6_suffix: beef::3/64
  firewall:
    input:
      policy: ACCEPT
    output:
      policy: ACCEPT
    forward:
      policy: ACCEPT

grafana:
  admin_user: admin
  admin_password:  |
    -----BEGIN PGP MESSAGE-----

    hQIMAxD9NgfAXz3WARAAspubvEfLF5nNDw03CjKYB78GhG12mmwbweakJZXLOUsy
    GpivLixdT6TETJfo1HR5NWd1KjiWXgd9sPyO8a2IgrbCcOtX6w6y13y0ZNwn2Kby
    mf/8wVfqawfe+CjDupP77dgfaQNfYazBdxbBDiRa6ftzqIQwqA4WLTA9rp6xFBbY
    O4Iv1+gCa1sDcEIyHfysHCl+KgnaMMsCrwRZg/c2pkZEMRrKUUHAPSG8SaqjlmME
    qhgc4JZ9tI0QHGQWxjU/sbPUVlq0zXrWaQ8c8hjJyJZKw7jIjaOm4mP4XfRtKgjU
    +TQ2JJuI9R8OvMEGjlhNyHLZls3tljbtSrK56YdDbLE491GLONLf9cqWdofojp21
    8Qg2usHcaSh1SUm0OjdE3EXY7fYGaamqizEm5yLo9QrR/sg/qbLyDDYCaef3b/Mf
    bkPKqmqJDInvyzh2/g4koJtcdbcodG1PxPaonDw6g1PORAD4woB8tebkNmPH7NYd
    NcoB+2NQsiib6nqNrcAw1ry+scDCrP4cmhpFzpGL160tVbig9CUthS70AU7rDXej
    4MI2twjOyE4QIhMeLB937HtJxmZCevJFzsGHLfetMLMiqUfLPoujs+82ZGGrzV4p
    kXgLe6bMNIiAS4KzyCq3tImv4f6HCSZLyvtYY3ob4UgSK3KWDz9xGxynMKGkT/jS
    QwHKoI/ApqhQGsIiwvyac67I51BR12awTilai/cR95eaMTnB81AaC07UB0gnIRhG
    dOOsxHdVhqtT9yW3ufaDosYsz44=
    =AYlE
    -----END PGP MESSAGE-----

batman:
  gateway: false
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:11:00:00

fastd:
  - name: "1406_01"
    type: client
    mtu: 1406
    mac: FE:F8:FF:11:01:00
#   public: 953c0fc2b749f910964217013fa6b61d0823160443514044b50dbc18a2bd6c18
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMAxD9NgfAXz3WAQ//fAVrsZpH1jpi6QElLjB9NM8xCxjb+iYVmO+NcAEUadSz
      ulzxyjPdklHl15oW8f1v78Vmm71tycNPWkXTXDBVvWl7CMZSPdRNPzc0h2mjCNKf
      9fr5flOJ1KSjVHwHBSknwzdplsm2xXzqrOi0ozelHuc49FL4EaLUGbqiTMPYSVzs
      5oQJe+aV34wpFGxcJl/Xm3Myci5eflObNEhOJL5FTTHop0Wq0gpgWLUSt+AS9RT7
      7l1d09110gX6mfmdr6vJRft1jczK77vQg8I7kToTs9x3GpYvxlYSpwFeYYYnyDsr
      GYpi5vjg6827dIX6vNcsxsrn6dlrAhDPWLlG/tM57mhAO9P93pfKRkWYmABmrok8
      P+i+VMOlWBuMOhHq2zub9QopFuoNIKhpJ0IuApxlx9e914PsZlD6LYPSvqW3FPBb
      3KqCI2q5qsBD5pQvTxKgb3ygggp1qMnhlq1+OdHJtK+tk6aob5mngc0SvIJ8DTqx
      sh3X0rvndiRZLHEd86FoMbUgHsjcdbYQ/5lpra1ekRHvMc+lLZLM5bfHamdUGEvM
      IfIZfHdynDHV/C7TJKJ9Q07Q00fIOGxIRD9WZ/NxZ3KBi6Qjbcx1FRktDol/z2W4
      wgnDvAHiwn9BKd3tw/JJ69vWMU6bJ7FVsCRuMH1QmwUUh+E5rJ5zYyuHzYWMNMXS
      cwFgtumZmD9z4dnVvWbQs9CtN6aocjTQoMT65iRTynhTrR+j23zwwm/diIASZVg4
      l9Qef3HD3vMg4BTAMPOzY0AJz1uNlzDV/WTwCnb66yMKSPsSmTbQW99/ltvXxzqd
      FeuYnD7lUBcsi39LAgh537qxpb0=
      =JHCB
      -----END PGP MESSAGE-----

influxdb.host: localhost
influxdb.port: 8086
influxdb.user: admin
influxdb.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WAQ//ZFofGGkApUAPLr7N8S+qQcQLZ110SUeSL49AG+ZOxhA0
  nkLe5vBDlJzV0ju8B81VNkHRwZAQ5x8/IRCAAhETGBakJ/U9Ecqb4/H+4YKY7utz
  L6qoVEAmNtEIj/AtiMwm14iYfcPIhsloYliAUgruXkBUzStVBFQjesqEOasZXFhD
  306e/A3V7c5vcG+NGO4nVOOhyXaXyhjI1VtyYJpMfFtz5vZMFjk4Fy2yhhAMHV3G
  luzx7GS3XPrcEylRL51bHHXZS1tx2oAABmtNeTFQ5VFD5BbyhaiBgGF+ULd9M3Au
  hOAPDFQ1NB8VLYdEUr1TVifd8m07rCuKPkEg8cAlBwRfODpNs2w0EIIJnNkk9xhN
  uXQF8M2xvuy72FhoRwwM3CoxJDORnaPqu8V+jt3T3MPO7U80f4SLS//C5mAxlWFW
  mLKNwn0KT6AcU7Oq8MbRraJMSnzUijIB0ggtVVKFMhxe0OsbZKlIsxx9M+bjT7F/
  rlbIMDlCF8U2ZtDkFWKVCdj+Yj0nn0CwBfcyaJ4Pyq4Q6K36DziCi/hlBfi8ogAS
  GhCWZbVpaKpPad9gH3TbPTJhxGM6A8v3V+yC0PlQU+RnjFEgs9evRjIjVSV1qsE7
  qHoULBDquOkArvXbAkQ4ZjqpW7xY6yBkQIGQrsKvz2UHYnVP9lRcaKg7G6ZRiz7S
  TwGgM9SR2eBLalK2sUYEEHmoK7RnsPPjilPXIeY476rC+0b6qqmrz2U7vqDrymQN
  zrkR48eSBO5NFAgS5KO3FpQRK6IZcdBbE5e1YEV5isY=
  =n4IR
  -----END PGP MESSAGE-----

influxdbuser.grafana.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WAQ/+LQkX8+zjiIT8AMr4c5fVi2XzDDelZHz8jaMt2uB7Ndm1
  skOPXBoCCbT4gsmTce0oonhvtVC6jiXEBgLe8ZbSv1/O6dVH17D5pKbsjoI5zuH3
  Hs5mXhSVK7/Y5MmwneiGhWWvXmQfRd2Xmnjfiv8QWKTv/PJSypWoYJ2bLzhu5P7W
  g/DB00q6qU+Xx233h0xzGNScMZ1gE94msyNdEFFchALkoNgg90TNey4TO+J99xX9
  Re+pBOVXdbVnA98nqSL48qcBIZhIouHiAfxi11TpUVO+B8ejk1kDH3uEA5Pq71Yo
  DC7b+dtp7+LuzD3KCb0OF91U0aUBwPToDcsY5aizM/vN5rwPn0ezI0OixY4/z1PW
  LvItPODj3XIu+R6lYows9qSQxl/HmbHi4oI1OHg76+nT9b6LFvBeC7iqlcop1/LF
  eWA5/X29LzUtwYOjlaSOD+36lFZ0z/uY2O5coK/psudNQFNCiAEWTQZefQJKilMz
  I6IhoE5bg3J85MFMTTqsCZ9dwTOR3hLENgB99w+woM7B99JoyF0JB9elCpoI68oe
  VbizWzivz6MXvzM2L06qLZt9j51ubbt4+iY8O2wDuLgdxRXb7z/F+HEysG1jMl09
  h7OpIsHTbHyfz1f6rs9maxRwMn6bdxCXPimyFxkG18HlH5eDC1ZtvRAGVV30oXHS
  TwF4LI4iQVYQ2Mrlp1I2yrdqjbsbss6vLK6i+cmafJf3jh/shAgWI9UXgYzo07gz
  ZoomUzqfB8LFPOQT2Z6I1E14PcUgR+SVkLpCW8MjEqw=
  =UYDz
  -----END PGP MESSAGE-----

influxdbuser.yanic.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WAQ/9Hmm9LT7/8oAl/6dI0nKsw3eQzOaTuMMMCub+dKoyuHjr
  cCY9DEAfe2jVYgg6SRUawEBXJf1Twt651ElL5JMdi2qHAzp/go0HeeOku4eqF2Tr
  qU4bjl1HteGGX1aSmh6aezOn51Vy/+IFSeBFdvWEbivk0DMBeWVxzShmazZzQgmM
  vdbbOEs68L6/LlCqFpqSm3H4JRjuE9jaS/XozXHXWZOpBG8FXHSFpsvAVk/tWh9r
  No7YJ2jH7hFNQUlbl+vYopg/TTNQJaI7UzX/TytU/Ibw9tnSbmyf1ZFPtlz7WuK+
  1GMSsLvEn/LYjkVleJ4fKYYMOZsh4EzEyqqoDcVPWvuYEzgsBFUQ8/b5sO1UdEBY
  1oiLCpmnymC8QcSDME5G1B09SSFQgNgh7/n/v3Ki7dpDgZH4KD/tmJir759cc0nh
  0eJS22tk34OrJ544zzWK6REeMy/dWZEK3RKujHMx+GzgDr9ohlhppt/mmPPOM92j
  76kq6tHkhS5pHZlyseLCAGBh/jLKF3P533E3+LRRO6slhCo7Imn2fH7W7NszNwn/
  ko6w64NSv3+gLKxXAUPLYPd6aVf8f0DGe7e63jC6oDOjGFSaOrncC04tS0WfbEcY
  h800yi/vT+ecnFWdUuIwRImJ03ayyeoemr4Bv1aZfiXPXfURvkvF/qsEHVJwQkzS
  TwEri7jABuN+0kBGwfmiiPfAj7uVo/+vvEUmVSZN1yhsJzq0Cc2QA5liRdsQsdh7
  8pss5QTrdE3nQORKl5bsD3P70N7sejZqNffOdVTyo4o=
  =KXE4
  -----END PGP MESSAGE-----

influxdbuser.icinga.password: |
  -----BEGIN PGP MESSAGE-----

  hQIMAxD9NgfAXz3WARAArAt7U/GFpL+2XVr3kREkCqE7Eia2DAJqbGn0THoFUvCB
  LF4saGXSKuemFiRvBjyz+R74edu2F1Jip3SkowSHA0vDPE0xa39unnzNyXGiX0LX
  Nv91ALuFuQGw6SWZTX4rF2ASmJpv/GfjaKqFLhqFI1ZbpW+zIhz/qrZs9aLwCpGE
  355SQjcWL0rqtlHYs+1U9/qpurrnss7pzzYj7QeFTz1O35JeE6k50iZrsDFfcPiW
  1RESNqYBAakYMOFUGsXWcifb6HVUoZCAbEHImOux7TvS+c41LRhA4yHRf97VyrlU
  hW4RyCJxC2oClkp5D9qMIQBI5np6Y/u6B8R0OGtjqZsS04D6wCR06te0+uSi1VTo
  Q0uNCvg0+c1SK2Kfb7MNGetzEXM/B8YUyJ7PllzIOwv3OQ6qC6FIloK5XIPBSO/i
  +rgi8AUxIa0em4WvoQPqml1nvkZMPDVOLj4nlpfCu1t5EsF2eR5OFpUeHt/mym6b
  7BZZbFZPz+vRkVcF5Th+gwNmpmxj+07HeZKbT2xFbqmEjHAHgOrpH//TQDT0s1YT
  gsgkCnKGps/oMeFIeV2VMurebEQCIwW8Ss79jCs8YoYE/Tehi86BmyK3kTQXeIgD
  u8k5exK4IMSqFprHiJdeyn0OvNKetovakS9K61H5ZDqBxfYgH+GvDOtIHo4q3arS
  TwF26UpSicY1Pop8cejbUDjx8+zYKdp8pPQL+SWet2Ll8DzVaagUqs36TeyJDnrP
  yagVc07bDCLYBrUtY553rAg3Yi0RKfzfX0wTMNAry5M=
  =WMvk
  -----END PGP MESSAGE-----
