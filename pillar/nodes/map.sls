#!yaml|gpg
backports_kernel: true
ssh_port: 22153
git_name: map

network:
  br_ffwp:
    v4_network: 10.198.0.3/16
    v6_suffix: beef::3/64

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
