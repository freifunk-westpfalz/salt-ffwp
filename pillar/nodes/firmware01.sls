#!yaml|gpg
hostname: firmware01
fqdn: firmware01.freifunk-westpfalz.de
backports_kernel: true
ssh_port: 22151
git_name: firmware01

network:
  uplink_ifs:
    - eth0
  br_ffwp:
    v4_network: 10.198.0.2/16
    v6_suffix: beef::1/64
    v6_extra: fdc6:c4fe:1de4::c1/64

batman:
  gateway: false
  bandwidth: 96mbit/96mbit
  mac: FE:F8:FF:10:00:00

fastd:
  - name: "1406_01"
    type: client
    mtu: 1406
    mac: FE:F8:FF:10:01:00
    secret: |
      -----BEGIN PGP MESSAGE-----

      hQIMAxD9NgfAXz3WAQ/+LTiSZ9N1Dd/MFueJEEQ8UF8D8CcvWry6P+Vr8u2wO3ka
      qye71qWmrxM18zZ0OxTubDE+9WwW1w8cnOIYpA3TYkpj41m4SXOfaJ4LdIdIP+LH
      4RJwNbi0c6ByVNhfvJJE6ErVbIWthajgGpe60AYPXcz0oES47Bh6MKlJEwlmMnfn
      brvCTsgvr/VGOqN97Wbn9c0vrB8+VPadJuNKfTYe3hrS8xAE3rKPQoS9CMqB9Bps
      E5L35SrGyVDUTmNGYxgD9d17gngsqrkZ+9H5kLdZjS2sruCoiBImSwd1ju1p4hLs
      wXgX1O+27HBmP4hYbFctIpdVhfU6wyWkueysC2qngsI0qc7znX3yzZIJogkrR5K8
      wkyKyJfwXjiLAzGOSz2DTkVa1WzWXJCq6cek7kE7E+IY1No8QLZhy9BUX6SBFW7G
      TjucFOpV5oLYNFHaN8X7ERPSJ81cz7B4Ac3SoSlEDfETfOFjiNOv0hqbeXfYIiLH
      97LJA/hL8V+iTgoGiKO/fSiy0XcX1rW63d1r32/7EakGxIi4NprLOVMIoEqNx+Lv
      UTWOHC++Xq3RzFS8Y9oy75vp8DKUKo3xumzvWJZQmk5RUXcBvKKQXSCN88xWYpJ6
      l4G0Zz7dMbNnDOtXN0FjlBUKFXpocGSQ3Vt5+XDBzy84EWj5xjKviC02IUgu1SbS
      fAF+ArXLxatLvtXvMPKF3Y+ZRTc7ajLPX3ntY/KM+8CUNNBeysBkoKj59GR5kDjg
      BlWArKY06B8yp+gg5yiz5X+UBsjD6SuYOWXOXb4dnCRb/V1pgBV5GDylGc5kKVLf
      QgIJ7L0UNCeLF5+vid20VYKMWxiqCIsD7LMB+NI=
      =bNOS
      -----END PGP MESSAGE-----

firmware:
  crontab_nightly: false
  public_key: 47f2ebfbb7e16a46fccf8514815e0fcd76868e4db6088e4bd65dca972fd93af1
  secret_key: |
    -----BEGIN PGP MESSAGE-----

    hQIMAxD9NgfAXz3WAQ//c7FT76nSBB9znSGXGpBKQu7uUC26+4cGUQ3P6+IejIdv
    BblgaXEppD3VSYCkPcsM0r3qAmQ5aBOCWJNiwKy1cNvF+NeTj9kihIFffcuLXUyt
    a/Xab0UhBw3u2qEzk1KMC9gJFd08JAObcSm5o3U96L3CzlNquFeUy0Va9tNAgcjY
    dtCefJ3MuJZ5EbpDV6moBo4T1P1k+6B0hcoywgpZL+jsl5UutRG5I/nJI1FPEC2V
    NpWOS1h9qYAEYftWwr9bAFsmK6YvhSkNC+3r+xlqlv4QALMXr6P6ZL0koBcSs1aQ
    INjMU/RmX6Lv03mpYp2SyLb/p1yTOwyAvKriFWoJI415zjVL9bQYLkcfv4CK0/zb
    CoUEM+HvRvLuXL1U7VJvuoH2PizxnFfwbg2nJgQBu6o4Bd01rEqZjdBWdByhEMBf
    nKq4tJmmoThNsGOZ7Ewm9WeqiXW1wfFGR4tgaJQsj9Hts+8jv71L1pV2DFZEbAjA
    JR3jBCja0b/XNeIX+/boZDnbQiArKlAy/rHONtJtDC1leDzVQ5rpe3ftquyqXs90
    6xvHRkNn3YBbw1+YFI9NiorT/Hyp6y2M/JYW3uEr5b4k4UkO/5eeyO6GOkrSKbLR
    KXLirpTaSYmmOmOrbp5SYMzplQgK4pOzuOOx3uFwSOL3wa1/X09XDh06nEYq0B3S
    fAGPD2eX5/3XXits7CFMT1px5SzxRII/tkta4BlGQgJymSvmRX+hmbPQc8sW+Mdj
    7DwydF+vRkP6dycEJGfpHX9DibV4i0VZ5RgtFtPGBbArYUxFy2JvZiXc2r62cZnn
    ZLrJ1UMMxkqu+KIzhknmZaH/Twz0dZTUd7lEaG0=
    =b2dm
    -----END PGP MESSAGE-----
