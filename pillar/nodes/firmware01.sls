#!yaml|gpg
hostname: firmware01
fqdn: firmware01.freifunk-westpfalz.de
backports_kernel: false
ssh_port: 22
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
  crontab_nightly: true
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

allowed_migrate_nodes:
 - fdc6:c4fe:1de4::c6e9:84ff:fe33:4ff4 #KL-warmfreibad1
 - fdc6:c4fe:1de4::c6e9:84ff:fe33:42f8 #KL-warmfreibad2
 - fdc6:c4fe:1de4::ee08:6bff:fe61:8c64 #Chaos-inKL
 #- fdc6:c4fe:1de4::c66e:1fff:fe2b:8c08 #Migration1
 #- fdc6:c4fe:1de4::c6e9:84ff:fed2:c82c #Migration2
 #- fdc6:c4fe:1de4::c6e9:84ff:fed2:c6bd #Migration3
 #- fdc6:c4fe:1de4::f6f2:6dff:fe44:bd17 #Migration4
 - fdc6:c4fe:1de4::c6e9:84ff:fed2:bc07 #Migration5
 #- fdc6:c4fe:1de4::f6f2:6dff:fe44:be28 #Migration6
 - fdc6:c4fe:1de4::eade:27ff:fefd:e88 #KL-Freibeuter-4
 - fdc6:c4fe:1de4::c66e:1fff:fee8:4fa6 #wp-Otterberg-Geissbergring
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1c88 #KL-Stadtteilbuero
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:a3f8 #KL-Copacabana
 - fdc6:c4fe:1de4::32b5:c2ff:fe3e:85da #KL-Gerds-Comicladen
 - fdc6:c4fe:1de4::20e:cff:feb8:2e33 #TuS-Dansenberg-Offloader
 - fdc6:c4fe:1de4::62e3:27ff:fe59:fff8 #KL-Storchenturm
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:811e #wp-BomtoCraftBeer
 - fdc6:c4fe:1de4::32b5:c2ff:fe3e:85da #KL-Gerds-Comicladen
 - fdc6:c4fe:1de4::62e3:27ff:fe9a:a296 #Marias-Bistro
 - fdc6:c4fe:1de4::9ade:d0ff:fe91:dd2e #wp-Nicola-Kslt
 - fdc6:c4fe:1de4::ea94:f6ff:fecd:3b68 #wp-am-web-end
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1c88 #KL-Stadtteilbuero
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:a418 #wp-DAV-Kletterzentrum-Barbarossahalle
 - fdc6:c4fe:1de4::32b5:c2ff:fe87:859c #Der-Donnersbaecker-Alsenborn
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e2aa #wp-Obere-Turnerstrasse-01
 - fdc6:c4fe:1de4::52c7:bfff:fe79:3c1e #KL-FeWo-AmBuchenwald 
 - fdc6:c4fe:1de4::62e3:27ff:feb8:c88 #KL-FeWo3o
 - fdc6:c4fe:1de4::62e3:27ff:fec7:533c #KL-TKL-Red-Barn
 - fdc6:c4fe:1de4::32b5:c2ff:fe23:1264 #kiwi
 - fdc6:c4fe:1de4::16cc:20ff:fee3:f9dc #kurt34
 - fdc6:c4fe:1de4::6666:b3ff:fe8e:cedc #davenpoirot
 - fdc6:c4fe:1de4::16cc:20ff:fe98:34c #xia
 - fdc6:c4fe:1de4::32b5:c2ff:fe6e:abea #abea
 - fdc6:c4fe:1de4::92f6:52ff:fef2:8696 # HDL-Gast
 - fdc6:c4fe:1de4::c66e:1fff:fefe:c914 #Rainbow
 - fdc6:c4fe:1de4::f6f2:6dff:fe54:f0d4 #parkstrasse
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1cf2 #parkstraße
 - fdc6:c4fe:1de4::1ad6:c7ff:fe51:b8da #Hilgardring
 - fdc6:c4fe:1de4::ea94:f6ff:febf:4700 #Distel
 - fdc6:c4fe:1de4::ea94:f6ff:fed4:4a08 #Benzinoring65
 - fdc6:c4fe:1de4::32b5:c2ff:fecf:a0de #Gargleblaster
 - fdc6:c4fe:1de4::c66e:1fff:fe63:11c0 #Weissenburg
 - fdc6:c4fe:1de4::52c7:bfff:fe18:5ea6 #KL-JugendberatungP20
 - fdc6:c4fe:1de4::c66e:1fff:fe7e:9d30 #wp-Stadtgaertner
 - fdc6:c4fe:1de4::8616:f9ff:fe9b:c816 #Aral IO
 - fdc6:c4fe:1de4::62e3:27ff:feed:adba #KUS-Altenglan12
 - fdc6:c4fe:1de4::a2f3:c1ff:fedf:a86b #KUS-Koenigsland
 - fdc6:c4fe:1de4::62e3:27ff:fe60:61a6 #Westpfalzhalle-Niederkirchen
 - fdc6:c4fe:1de4::f6f2:6dff:fe3f:ae06 #leppla-niederkirchen
 - fdc6:c4fe:1de4::c66e:1fff:fe6b:c3b4 #gehrweiler lutz
 - fdc6:c4fe:1de4::62e3:27ff:fe81:8892 #autostoll gerweiler
 - fdc6:c4fe:1de4::c6e9:84ff:fef0:9c4a #rodenbach waldstr1
 - fdc6:c4fe:1de4::c66e:1fff:fe2d:ec46 #Kamanet
 - fdc6:c4fe:1de4::16cc:20ff:fe31:632  #67686-01
 - fdc6:c4fe:1de4::6666:b3ff:fefa:8a32 #RS_Dazwischen
 - fdc6:c4fe:1de4::32b5:c2ff:fe80:f91a #Trafo Nanzdietschweiler
 - fdc6:c4fe:1de4::56e6:fcff:fef1:2a26 #NDW-SVN
 - fdc6:c4fe:1de4::c66e:1fff:fe97:769c #NDW Kurpfalzhalle
 - fdc6:c4fe:1de4::62e3:27ff:feb7:a084 #Avalonorden
 - fdc6:c4fe:1de4::62e3:27ff:feed:8314 #DEDHN-CAFE
 - fdc6:c4fe:1de4::f6f2:6dff:fe3e:c800 #Florenberg
 - fdc6:c4fe:1de4::9ade:d0ff:fe4b:ab92 #98dad8EI72
 - fdc6:c4fe:1de4::c66e:1fff:fe7e:9e46 #KL-horst
 - fdc6:c4fe:1de4::6666:b3ff:fed4:493a #KL-hering
 - fdc6:c4fe:1de4::56e6:fcff:feac:d6e4 #erlman2
 - fdc6:c4fe:1de4::16cc:20ff:feb3:c1e2 #mandler
 - fdc6:c4fe:1de4::724f:57ff:feaf:2038 #weierhof gemeindehaus
 - fdc6:c4fe:1de4::62e3:27ff:fe76:def4 #Villawernz
 - fdc6:c4fe:1de4::a62b:b0ff:feca:82e0 #Pariserhof
 - fdc6:c4fe:1de4::32b5:c2ff:fe80:ec62 #DGH Katzweiler
 - fdc6:c4fe:1de4::32b5:c2ff:fec7:73a #Wilking Katzweiler
 - fdc6:c4fe:1de4::ea94:f6ff:fe52:1c42 #otterbach micha
 - fdc6:c4fe:1de4::16cc:20ff:feb2:4fb6 #bogyo otterbach
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:5f38 #ott feuerwehr
 - fdc6:c4fe:1de4::62e3:27ff:fe36:9fd0 #ott gartenstr1
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:914c #Medifit Stadtpark
 - fdc6:c4fe:1de4::ee08:6bff:fe7c:e012 #StFranziskus
 - fdc6:c4fe:1de4::32b5:c2ff:feb3:8e94 #Benzinoring56SLV
 - fdc6:c4fe:1de4::16cc:20ff:fe6e:2d74 #Benzinoring56CPE
 - fdc6:c4fe:1de4::32b5:c2ff:feee:3ee #KL-Benderhof
 - fdc6:c4fe:1de4::16cc:20ff:feb3:65bc #wp-Cardinale-2-KL
 - fdc6:c4fe:1de4::32b5:c2ff:feab:f3b2 #wurst-kuech-2
 - fdc6:c4fe:1de4::ea94:f6ff:fe51:9cd2 #BIR
 - fdc6:c4fe:1de4::62e3:27ff:fee7:1eae #IMMOBILIENMAKLER-UNION-KL
 - fdc6:c4fe:1de4::c66e:1fff:fee8:3e0c #wp-ASZ_Stadtteilwerkstatt
 - fdc6:c4fe:1de4::c66e:1fff:fe7e:9d78 #wp-ASZ_Unterrichtsraum
 - fdc6:c4fe:1de4::32b5:c2ff:feee:3ee #Benderhof
 - fdc6:c4fe:1de4::62e3:27ff:fee7:1eae #IMMOBILIENMAKLER-UNION-KL
 - fdc6:c4fe:1de4::c66e:1fff:fefe:4b6c #KUS-SK-Rathaus
 - fdc6:c4fe:1de4::c66e:1fff:fefe:451e #KUS-SK-Jugendzentrum
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:8164 #KUS-SK-FeWo-Just
 - fdc6:c4fe:1de4::1ad6:c7ff:fe51:7bde #SK-Moarbaer 2
 - fdc6:c4fe:1de4::223:cdff:fe20:c7c2 #KUS-schmittweiler-psc1
 - fdc6:c4fe:1de4::12fe:edff:fecd:63a4 #wp-stbag1
 - fdc6:c4fe:1de4::6670:2ff:fecb:9526 #Ols-Feuerwehr
 - fdc6:c4fe:1de4::c66e:1fff:fe7e:9e44 #wp-ASZ_Deja_vu
 - fdc6:c4fe:1de4::c66e:1fff:fee8:5046 # wp-wurst-kuech auf wp-wurst-kuech-2
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:a410 # wp-LaNuovaMamma auf KL-Benderhof 
 - fdc6:c4fe:1de4::1aa6:f7ff:fee5:88d4 #BIK04-Caritas-Kaiserslautern
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:81ae #KL-Mehrgenerationenhaus-2
 - fdc6:c4fe:1de4::62e3:27ff:fe5a:1ec #Glockencafe
 - fdc6:c4fe:1de4::16cc:20ff:fec0:172c #KL-MEG-Kaiserslautern
 - fdc6:c4fe:1de4::ee08:6bff:fe78:7c8c #KL-Apostelkirche-Buero auf BIK04-Caritas-Kaiserslautern
 - fdc6:c4fe:1de4::32b5:c2ff:fe3e:9e44 #KL-Mehrgenerationenhaus auf BIK04-Cariatas-KL und KL- Mehrgenerationenhaus-2
 - fdc6:c4fe:1de4::f6f2:6dff:fe3f:9c6e #wp-Cardinale-KL auf wp-Cardinale-2-KL
 - fdc6:c4fe:1de4::32b5:c2ff:fec6:fa5e  #KL-Friseur_Christine_Wolf
 - fdc6:c4fe:1de4::c66e:1fff:fee8:5022 #KL-TwilightSparkle
 - fdc6:c4fe:1de4::32b5:c2ff:fe6e:abea #wp-30b5c26eabea
 - fdc6:c4fe:1de4::a62b:b0ff:feca:82ea #kl-humboldt8
 - fdc6:c4fe:1de4::32b5:c2ff:fe86:3d26 #Freibeuter-Outdoor
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1ca6 #Gitarrenschule Otterberg
 - fdc6:c4fe:1de4::62e3:27ff:fe60:6456 #Eimerbau Otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:feda:18da #FotoWeicherOtterberg
 - fdc6:c4fe:1de4::32b5:c2ff:fe80:eb5c #Jugentreff Otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:fe80:eb5c #RiederKG
 - fdc6:c4fe:1de4::f6f2:6dff:fe3f:c2d6 #Gitarrenshop
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:a3ec #Otterberg24
 - fdc6:c4fe:1de4::62e3:27ff:fe60:4c0a #Ballonfabrik 
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1a9c #LadyVit
 - fdc6:c4fe:1de4::32b5:c2ff:fe7e:6150 #ibrom
 - fdc6:c4fe:1de4::1ad6:c7ff:fecc:b9ac #Rothdell1
 - fdc6:c4fe:1de4::9ade:d0ff:feb9:6ca4 #patersberg
 - fdc6:c4fe:1de4::62e3:27ff:fe76:dfa4 #rok-ander-kaufhaus
 - fdc6:c4fe:1de4::ee08:6bff:fe2b:32b9 #rok-morbacher
 - fdc6:c4fe:1de4::ee08:6bff:fe69:1bd2 #ROK-Kaiserslauterer-Str-10B #check
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:48f2 #ROK Do 3 # check
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8eda #ROK DO 2 #ALARM
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8ed8 #ROK DO 1 #check
 - fdc6:c4fe:1de4::62e3:27ff:fe60:1ff4 #islam Kultuverein
 #- fdc6:c4fe:1de4::62e3:27ff:febd:9ee4 #colosseum eg vorne
 #- fdc6:c4fe:1de4::ea94:f6ff:fe97:3766 #colosseum eg hinten
 #- fdc6:c4fe:1de4::f6f2:6dff:fe3e:70fc #colosseum og vorne
 #- fdc6:c4fe:1de4::32b5:c2ff:fec2:80b4 #colosseum og hinten
 #- fdc6:c4fe:1de4::f6f2:6dff:fe3e:6b5e #colosseum schulungsraum
 - fdc6:c4fe:1de4::ee08:6bff:feab:2006 #ROK-Kaiserslauterer-Str
 - fdc6:c4fe:1de4::c66e:1fff:fee8:4f3e #wp-buchfinchfunch
 - fdc6:c4fe:1de4::c66e:1fff:fec7:f2a #zweiohrknoten auf buchfinch
 - fdc6:c4fe:1de4::c6e9:84ff:fe28:fada # Jaenisch-02
 - fdc6:c4fe:1de4::a62b:b0ff:feca:82f0 #KL-HotelZepp-01 #check
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:1202 #KL-HotelZepp-02 # chekc
 - fdc6:c4fe:1de4::62e3:27ff:feed:9b7a #KL-HotelZepp-03 #check
 - fdc6:c4fe:1de4::9ade:d0ff:fe92:3df2 #zw-98ded0923df2
 - fdc6:c4fe:1de4::6a72:51ff:fe2e:8596 #HORNBACH-Womo-Stellplatz-2
 - fdc6:c4fe:1de4::16cc:20ff:fe4d:1458 #Jänisch01 warten auf 02
 - fdc6:c4fe:1de4::822a:a8ff:fea6:46b8 #Zweibrücken-THW2
 - fdc6:c4fe:1de4::6a72:51ff:fe2e:8584 #Zweibruecken-THW
 - fdc6:c4fe:1de4::2e0:7dff:fe92:51c6  #KL-VillaJaenisch-Offloader warten auf 01
 - fdc6:c4fe:1de4::20a:cdff:fe25:163d #HotelZepp Offloader auf die 3 andern warten
 - fdc6:c4fe:1de4::6a72:51ff:fe2e:81b0 #HORNBACH-Womo-Stellplatz auf 02 warten
 - fdc6:c4fe:1de4::32b5:c2ff:fe86:3d26 #Freibeuter auf StFranziskus
 - fdc6:c4fe:1de4::a2f3:c1ff:fea5:f93e #Freibeuter auf BIR
 - fdc6:c4fe:1de4::52c7:bfff:febc:7d10 #Freibeuter-OL
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:9ea0 #wp-injoy- OK
 - fdc6:c4fe:1de4::12fe:edff:feaf:4762 #wp-kib-Autodienst-Glashauser OK
 - fdc6:c4fe:1de4::62e3:27ff:fece:bd84 #kib-einselthum-00 OK
 - fdc6:c4fe:1de4::a62b:b0ff:fef0:3100 #ffwp-eisnelthum-hdv scheinbar ganz neu OK
 - fdc6:c4fe:1de4::1aa6:f7ff:feab:d1fc #ffwp-einselthum-dgh ok
 - fdc6:c4fe:1de4::c24a:ff:fe40:af0c #kib-zauberhaftes-zellertal_puder OK
 - fdc6:c4fe:1de4::62e3:27ff:fe59:fb7e #kib-dreisen-lessingstr OK  
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1ba8 #ErsterTennisclubOtterberg OK
 - fdc6:c4fe:1de4::8616:f9ff:fee8:c160 #PS-KarlTheodorOben OK
 - fdc6:c4fe:1de4::16cc:20ff:fe85:a07e #wp-ps-johannesstrasse17 ok
 - fdc6:c4fe:1de4::1ad6:c7ff:fe51:61ba #ZW-Hengstbach02 ok
 - fdc6:c4fe:1de4::c66e:1fff:fefe:648a #KUS-HEN-FFW ok
 - fdc6:c4fe:1de4::c66e:1fff:fefe:5248 #KUS-HEN-DGH ok
 - fdc6:c4fe:1de4::32b5:c2ff:feb6:d0d2 #MVZ Donnersberg
 - fdc6:c4fe:1de4::52c7:bfff:fec0:f18c #KIB Rettungsleitstelle
 - fdc6:c4fe:1de4::32b5:c2ff:feb9:1678 #ls-rh
 - fdc6:c4fe:1de4::c66e:1fff:fe97:73c2 #feg-kibo-01
 - fdc6:c4fe:1de4::16cc:20ff:fe4d:532c #morschheim
 - fdc6:c4fe:1de4::a62b:b0ff:fed8:6db2 #stetten1
 - fdc6:c4fe:1de4::a62b:b0ff:fec8:92d4 #stetten2
 - fdc6:c4fe:1de4::62e3:27ff:fe76:d1b8 #ffw-stetten
 - fdc6:c4fe:1de4::16cc:20ff:fe63:7fb2 #gesund-lebe-kh 
 - fdc6:c4fe:1de4::c24a:ff:fe6d:d12 #Treffe Freunde .44Mag.
 - fdc6:c4fe:1de4::16cc:20ff:fee3:ed84 #Matty Mobile, (danach Ravenhub_01)
 - fdc6:c4fe:1de4::92f6:52ff:fe78:ed4c #ZW-Hengstbach1
 - fdc6:c4fe:1de4::1aa6:f7ff:fe61:4e56 #18a6 danach Gastzugang
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e5e6 #kh abtweiler
 - fdc6:c4fe:1de4::16cc:20ff:fec2:a384 #KiB-biedesheim-glockenturm danach pradella
 - fdc6:c4fe:1de4::16cc:20ff:fec2:a384 #kib-willi
 - fdc6:c4fe:1de4::62e3:27ff:fec6:f59e #Eulentalstr KL
 - fdc6:c4fe:1de4::52c7:bfff:febc:7d10 #Freibeuter
 - fdc6:c4fe:1de4::62e3:27ff:fece:fccc #Freifüralle
 - fdc6:c4fe:1de4::f6f2:6dff:feff:54fe #KUS-EisL1
 - fdc6:c4fe:1de4::32b5:c2ff:fe3e:8706 #KUS-Schalander
 - fdc6:c4fe:1de4::219:99ff:fef6:4710 #ps-schaenzel9-ol
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e5da #rok-events2
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e5da #rok-vg-futro-0a
 - fdc6:c4fe:1de4::32b5:c2ff:fece:f0db #rok-wifi, danach rok-friedhof
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:731e #Schalander
 - fdc6:c4fe:1de4::c24a:ff:feee:3728 #c04a00
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:f174 #cl-tst
 - fdc6:c4fe:1de4::16cc:20ff:fe9a:a624 #wp-gfg
 - fdc6:c4fe:1de4::16cc:20ff:fe63:b6f4 #wp-hotspot-kibo
 - fdc6:c4fe:1de4::250:56ff:fe91:feac #otter-parkplatz-ideal
 - fdc6:c4fe:1de4::9ade:d0ff:fe91:f218 #ZW98dedx218
 - fdc6:c4fe:1de4::92f6:52ff:fe78:ed4c #Hengstbach1
 - fdc6:c4fe:1de4::92f6:52ff:fe78:ed4c #kib-buechner
 - fdc6:c4fe:1de4::62e3:27ff:fece:bd84 #kib-einselthum-00
 - fdc6:c4fe:1de4::1aa6:f7ff:fed9:645e #wp-KIB-Zell-Weingut-Wick
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:393a #ffwp-zellertal-harxheim-gsz
 - fdc6:c4fe:1de4::62e3:27ff:fe76:e072 #agwg-sauna
 - fdc6:c4fe:1de4::62e3:27ff:fe76:e0ae #agwg-rathaus
 - fdc6:c4fe:1de4::c66e:1fff:fed6:6f38 #agwg-scheu
 - fdc6:c4fe:1de4::32b5:c2ff:fe80:e584 #agwg-jasmin
 - fdc6:c4fe:1de4::62e3:27ff:fe76:df3e #agwg-landmaschinen
 - fdc6:c4fe:1de4::c66e:1fff:fee8:5064 #KL-Medifit
 - fdc6:c4fe:1de4::a62b:b0ff:feca:84e2 #buchenloch
 - fdc6:c4fe:1de4::c66e:1fff:fee7:8380 #buchenloich
 - fdc6:c4fe:1de4:0:c6e9:84ff:feb0:ca80 #buchenloch
 - fdc6:c4fe:1de4::6666:b3ff:fef6:138c #ottbg-hangstr. 
 - fdc6:c4fe:1de4::32b5:c2ff:fe25:7994 #rieder-kg-otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:a41c #Wallonenapotheke
 - fdc6:c4fe:1de4::32b5:c2ff:fe7e:ca #Touri Otterberg
 - fdc6:c4fe:1de4::f6f2:6dff:fe6a:8f38 #Moelschbach Denkmal danach TKL
 - fdc6:c4fe:1de4::16cc:20ff:fee3:ee16 #ebernburg
 - fdc6:c4fe:1de4::6ef0:49ff:fe52:1cf7 #dw-buergerhaus
 - fdc6:c4fe:1de4::62e3:27ff:fe76:2c30 #Stahlberg-Ring-29
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8e6a #Dohalle 4
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:365e #Dohalle5
 - fdc6:c4fe:1de4::c66e:1fff:fe97:73c2 #feg-kibo-01
 - fdc6:c4fe:1de4::32b5:c2ff:fe38:39b9 #wp-Donnersberg-Apotheke2
 - fdc6:c4fe:1de4::62e3:27ff:fe76:df5a #kib-am-staffelstein-5
 - fdc6:c4fe:1de4::724f:57ff:fe45:8072 #KIB-SG
 - fdc6:c4fe:1de4::c6e9:84ff:feb0:b15c #kib-FWG-01
 - fdc6:c4fe:1de4::32b5:c2ff:febd:2576 #Kib-nielsen vw 2
 - fdc6:c4fe:1de4::62e3:27ff:fe59:fdbe #ASV Winnweiler
 - fdc6:c4fe:1de4::32b5:c2ff:fe3e:8afe #Winnweiler Inkasso
 - fdc6:c4fe:1de4::32b5:c2ff:fec6:ba5c #Winnweiler Schlossplatz
 - fdc6:c4fe:1de4::ee08:6bff:fe35:1370 #Grimm Heiligenmoschel
 - fdc6:c4fe:1de4::32b5:c2ff:fec7:616 #wp-kll-hlm-kirchgasse
 - fdc6:c4fe:1de4::1ad6:c7ff:fe78:a80e #Sportplatz-Heiligenmoschel
 - fdc6:c4fe:1de4::1aa6:f7ff:fe6e:c21c #MZH-Heiligenmoschel
 - fdc6:c4fe:1de4::c66e:1fff:feb2:c856 #Ruppertsecken
 - fdc6:c4fe:1de4::16cc:20ff:fe6e:8d14 #KIB-Ruppertsecken-2a
 - fdc6:c4fe:1de4::c6e9:84ff:fe96:e086 #eisenberg01
 - fdc6:c4fe:1de4::52c7:bfff:fe36:d48a #efe 1 kerzenheim
 - fdc6:c4fe:1de4::52c7:bfff:fe36:a256 #efe2
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:916 #haus der familie
 - fdc6:c4fe:1de4::52c7:bfff:fec0:f740 #walhalla
 - fdc6:c4fe:1de4::62e3:27ff:fe59:e2ec #breitstr. 51
 - fdc6:c4fe:1de4::c66e:1fff:fee8:5064 #Medifit warten auf Medifit-stadtpark
 - fdc6:c4fe:1de4::32b5:c2ff:feab:df14 #wp-Little_bird
 - fdc6:c4fe:1de4::c66e:1fff:fee8:5064 #Medifit warten auf Medifit-stadtpark
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:365e #rok-donnersberghalle-5 warten auf 2
 - fdc6:c4fe:1de4::62e3:27ff:fee7:8e44 #immobilien-koelsch
 - fdc6:c4fe:1de4::ee08:6bff:fe61:2816 #Postshop
 - fdc6:c4fe:1de4::c66e:1fff:fe31:71cc #wp-Jammin warten auf wp-Little_Bird
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8e6a #rok-donnersberghalle-4 warten auf 5
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:2c0e #rok-luitpol26
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:3918 #rok-museum-pachen
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:32b4 #rok-turmuhrenmuseum-1
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:38ea #rok-turmuhrenmuseum
 - fdc6:c4fe:1de4::62e3:27ff:fe5f:fa58 #rok-Bistro-Clochard
 - fdc6:c4fe:1de4::8616:f9ff:fee5:20a #ROK-MVZ
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:f26e #rok-buchhandlung-lotto-frey
 - fdc6:c4fe:1de4::62e3:27ff:fe76:59c6 #rok-rocco-sportsbar
 - fdc6:c4fe:1de4::32b5:c2ff:feb6:d0cb #ROK-Umwelttechnik-Schueckler
 - fdc6:c4fe:1de4::62e3:27ff:fe76:bd7c #rok-ringstr-16
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:dbe6 #rok-aktivzirkel1
 - fdc6:c4fe:1de4::32b5:c2ff:fe87:9fd4 #rok-Pascha
 - fdc6:c4fe:1de4::62e3:27ff:fe76:8480 #KIB-Ruppertsecken-3a
 - fdc6:c4fe:1de4::62e3:27ff:fe24:4fa4 #kib-biedesheim-pradella
 - fdc6:c4fe:1de4::c66e:1fff:feaa:c70e #Ravenhub_01
 - fdc6:c4fe:1de4::62e3:27ff:febe:1c3a #Gastzugang
 - fdc6:c4fe:1de4::f6f2:6dff:fe40:7e5e #rok-friedhof
 - fdc6:c4fe:1de4::62e3:27ff:fe24:51a0 #KL-TKL-Richtung-Nord danach TKL
 - fdc6:c4fe:1de4::32b5:c2ff:fe7e:7ab8 #Stoertz-Otterberg
 - fdc6:c4fe:1de4::c6e9:84ff:fe28:baba #wp-Blaues-Haus-Otterberg
 - fdc6:c4fe:1de4::9ade:d0ff:fed5:d2f8 #Ruppertsecken 4T
 - fdc6:c4fe:1de4::62e3:27ff:feb2:d4b0 #KL-TKL-richtung_SH
 - fdc6:c4fe:1de4::62e3:27ff:feb2:d79e #KL-TKL-Richtung-Sportplatz
 - fdc6:c4fe:1de4::12fe:edff:fef6:4dc1 #rok-Schoenborn-ortsstr
 - fdc6:c4fe:1de4::62e3:27ff:fe76:8010 #rok-schoenborn-ortsstr-28
 - fdc6:c4fe:1de4::1ad6:c7ff:fe51:873a #freifunk
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:a778 #Casa-Flora-Otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:feda:1530 #BC-Otterberg
 - fdc6:c4fe:1de4::16cc:20ff:feb3:65ca #Zur-Krone-Otterberg
 - fdc6:c4fe:1de4::62e3:27ff:fee7:71b4 #rok-Liutpoldstr-25
 - fdc6:c4fe:1de4::ea94:f6ff:fe42:d77e #rok-luitpodt-27
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8cd0 #rok-eiscafe-messina-01
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:8f1a #ROK-Stoeckl
 - fdc6:c4fe:1de4::c6e9:84ff:fef3:449c #rok-museum-pachen-1
 - fdc6:c4fe:1de4::ea94:f6ff:fea5:e77a #rok-big-daddy, danach Raumausstattung Neubrech
 - fdc6:c4fe:1de4::32b5:c2ff:fe87:8d62 #wp-franz
 - fdc6:c4fe:1de4::16cc:20ff:fe63:7fb2 #gesund-lebe-kh
 - fdc6:c4fe:1de4::16cc:20ff:fec2:a384 #kib-willi
 - fdc6:c4fe:1de4::52c7:bfff:febc:7d10 #Freibeuter
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e5da #rok-vg-futro-0a
 - fdc6:c4fe:1de4::92f6:52ff:fe78:ed4c #kib-buechner
 - fdc6:c4fe:1de4:0:c6e9:84ff:feb0:ca80 #buchenloch
 - fdc6:c4fe:1de4::6ef0:49ff:fe52:1cf7 #dw-buergerhaus
 - fdc6:c4fe:1de4::1aa6:f7ff:fe6e:c21c #MZH-Heiligenmoschel
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e74e #ROK-Raumausstattung-Neubrech
 - fdc6:c4fe:1de4::9ade:d0ff:fe24:611a #ROK-Waldbergstr
 - fdc6:c4fe:1de4::c66e:1fff:fec5:5310 #ROK-Speyerstr-3a
 - fdc6:c4fe:1de4::ea94:f6ff:fe2a:a4d2 #rok-Luitpoltstr-35
 - fdc6:c4fe:1de4::ea94:f6ff:fe52:1e2c #rok-Luitpoldstr-23
 - fdc6:c4fe:1de4::c6e9:84ff:feb5:e76c #ROK-Fahrrad-Dietz
 - fdc6:c4fe:1de4::32b5:c2ff:fed9:8b42 #Otbg-Engel-Otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:9cbc #Otbg-Geissberg danach warpspace
 - fdc6:c4fe:1de4::62e3:27ff:febd:9b38 #KL-TKL-Heim
 - fdc6:c4fe:1de4::1aa6:f7ff:fe7a:26d2 #LB_Autozentrum_Vogt
 - fdc6:c4fe:1de4::c6e9:84ff:feb0:b4f8 #kib-buechner
 - fdc6:c4fe:1de4::c66e:1fff:feb9:f9c #wp-kib-fes18a-003
 - fdc6:c4fe:1de4::32b5:c2ff:feed:7f4a #wp-kib-fes18a-002
 - fdc6:c4fe:1de4::32b5:c2ff:feed:71ac #wp-kib-fes18a-001
 - fdc6:c4fe:1de4::fa1a:67ff:fef0:84b4 #wp-kib-eb15-002
 - fdc6:c4fe:1de4:0:32b5:c2ff:feee:8716 #kib-erzberger-9
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:a0d0 #wp-manfred
 - fdc6:c4fe:1de4::16cc:20ff:fe63:923a #wp-BanThai 
 - fdc6:c4fe:1de4::32b5:c2ff:fe87:8d80 #wp-pneuhage-kibo
 - fdc6:c4fe:1de4::fa1a:67ff:fe31:288c #kib-ads-07
 - fdc6:c4fe:1de4::fa1a:67ff:fe8c:a348 #kib-ads-03
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:418 #wp-kib-ads-001
 - fdc6:c4fe:1de4::16cc:20ff:feb3:43d8 #wp-kib-ads-006
 - fdc6:c4fe:1de4::c6e9:84ff:feb0:d4bc #KIB-Dr.Mayr-Outdoor danach Dr Mayr
 - fdc6:c4fe:1de4::fa1a:67ff:feec:c89b #kib-umminger
 - fdc6:c4fe:1de4::16cc:20ff:fe6e:c582 #wp-bosporus_kebap
 - fdc6:c4fe:1de4::c66e:1fff:feb9:f9c #wp-kib-fes18a-003
 - fdc6:c4fe:1de4::32b5:c2ff:feed:7f4a #wp-kib-fes18a-002
 - fdc6:c4fe:1de4::32b5:c2ff:feed:71ac #wp-kib-fes18a-001
 - fdc6:c4fe:1de4::fa1a:67ff:fef0:84b4 #wp-kib-eb15-002
 - fdc6:c4fe:1de4:0:32b5:c2ff:feee:8716 #kib-erzberger-9
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:a0d0 #wp-manfred
 - fdc6:c4fe:1de4::16cc:20ff:fe63:923a #wp-BanThai 
 - fdc6:c4fe:1de4::32b5:c2ff:fe87:8d80 #wp-pneuhage-kibo
 - fdc6:c4fe:1de4::fa1a:67ff:fe31:288c #kib-ads-07
 - fdc6:c4fe:1de4::fa1a:67ff:fe8c:a348 #kib-ads-03
 - fdc6:c4fe:1de4::32b5:c2ff:fe81:418 #wp-kib-ads-001
 - fdc6:c4fe:1de4::16cc:20ff:feb3:43d8 #wp-kib-ads-006
 - fdc6:c4fe:1de4::c6e9:84ff:feb0:d4bc #KIB-Dr.Mayr-Outdoor danach Dr Mayr
 - fdc6:c4fe:1de4::fa1a:67ff:feec:c89b #kib-umminger
 - fdc6:c4fe:1de4::16cc:20ff:fe6e:c582 #wp-bosporus_kebap
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:883e #ROK-Luidtpolt-20
 - fdc6:c4fe:1de4::62e3:27ff:fec7:82a8 #Drehentalerhof02
 - fdc6:c4fe:1de4::62e3:27ff:fec7:9156 #DrehentalerhofOV
 - fdc6:c4fe:1de4::32b5:c2ff:fecf:a064 #Alte-Apotheke-Otterberg
 - fdc6:c4fe:1de4::32b5:c2ff:fec7:6e2 #Ev-Pfarrei-Katzweiler
 - fdc6:c4fe:1de4::62e3:27ff:fec7:8d3e #Ev-PfarrBuero_Katzweiler
 - fdc6:c4fe:1de4::c24a:ff:fe62:e570 #Imsweiler Flugplatz02
 - fdc6:c4fe:1de4::62e3:27ff:fe53:12fa #Imsweiler.Flugplatz
 - fdc6:c4fe:1de4::16cc:20ff:fec4:21e2 #Weingut-Buhrmann-Becher-1 danach Weingut-Buhrmann-Becher
 - fdc6:c4fe:1de4::16cc:20ff:fe30:cadc #wp-weilerbacher-de danach wp-weilerbacher-01 
 - fdc6:c4fe:1de4::9ade:d0ff:fe88:84a8 #KL-CM-Dach danach fdc6:c4fe:1de4::62e3:27ff:fec7:52ea 
 - fdc6:c4fe:1de4::32b5:c2ff:fe22:5622 #kib-Marsenger-02 danach kib-Marsenger-01
 - fdc6:c4fe:1de4::62e3:27ff:fe5f:cafc #KIB-AGwG-Edeka-01 danach 02
 - fdc6:c4fe:1de4::62e3:27ff:fe60:8d6 #KIB-AGwG-Edeka-03 danach 02
 - fdc6:c4fe:1de4::16cc:20ff:fe3f:9319 #kib-ilbesheim-alte-schule danach kib-weingut-roos2 danach wp-weingutroos-ilbesheim
 - fdc6:c4fe:1de4::32b5:c2ff:fecf:436c #kl-tubular-2 danach Ommadawn
 - fdc6:c4fe:1de4::1ad6:c7ff:fe51:b8a2 #BIR-Leitzweiler-DGH-Innen danach Außen danach 01/02
 - fdc6:c4fe:1de4::16cc:20ff:fec8:1006 #KIB-DONNERSBERGER-02 danach 01
 - fdc6:c4fe:1de4::ee08:6bff:fe6f:6d2c #ffwp-Feuerwehr-Goellheim2
 - fdc6:c4fe:1de4::62e3:27ff:fe81:87f8 #ffwp-Feuerwehr-Goellheim
 - fdc6:c4fe:1de4::1aa6:f7ff:fe7a:20ec #Der-Donnersbaecker-Goellheim
 - fdc6:c4fe:1de4::62e3:27ff:feb2:d8f2 #ffwp-altepostGiebel-Goellheim02 danach 01
 - fdc6:c4fe:1de4::62e3:27ff:feb2:d8ca #ffwp-uhlscheshausNord-Goellheim01
 - fdc6:c4fe:1de4::52c7:bfff:febc:542a #KIB-VG-Marktplatz-PS danach VG Marktplatz +2 
 - fdc6:c4fe:1de4::c66e:1fff:fed0:517c #KIB-Der-Donnersbaecker-Eisenberg
 - fdc6:c4fe:1de4::a00:27ff:fea2:2079 #KUS-Ulmet-TestVM
 - fdc6:c4fe:1de4::ea94:f6ff:fe61:91bc #KUS-Ulmet-3
 - fdc6:c4fe:1de4::ea94:f6ff:fe61:91ac #ulmet 2
 - fdc6:c4fe:1de4::12fe:edff:feb7:4c46 #ulmet 4 dann 5 dann 1
 - fdc6:c4fe:1de4::6666:b3ff:fe42:bb62 #Ben-mobil
 - fdc6:c4fe:1de4::219:99ff:fe67:8cc4 #KL-TKL-Futro_2
 - fdc6:c4fe:1de4::c24a:ff:febe:78fc #KUS-Ulmet-5
 - fdc6:c4fe:1de4::6670:2ff:fe3d:7e32 #KUS-Ulmet-1
 - fdc6:c4fe:1de4::eade:27ff:fefc:fafe #kib-ads-02
 - fdc6:c4fe:1de4::62e3:27ff:fe5a:508 #Ev-Gemeindesaal_Katzweiler
 - fdc6:c4fe:1de4::62e3:27ff:fe60:d5e #KIB-AGwG-Edeka-02
 - fdc6:c4fe:1de4::c66e:1fff:fe31:6170 #Warpspace-Otterberg
 - fdc6:c4fe:1de4::eade:27ff:fec0:2a3a #KIB-Dr.Mayr
 - fdc6:c4fe:1de4::62e3:27ff:fe59:fb6c #kib-emmel-fachmarkt
 - fdc6:c4fe:1de4::62e3:27ff:feb7:e3e4 #Weingut-Buhrmann-Becher
 - fdc6:c4fe:1de4::12fe:edff:feaf:774a #wp-weilerbacher_01-de
 - fdc6:c4fe:1de4::62e3:27ff:fec7:52ea #KL-TKL-CM
 - fdc6:c4fe:1de4::16cc:20ff:feb3:1f8c #kib-weingut-roos2 danach wp-weingutroos-ilbesheim
 - fdc6:c4fe:1de4::e695:6eff:fe43:8430 #BIR-Leitzweiler-02
 - fdc6:c4fe:1de4::d66e:eff:fe32:50de #BIR-Leitzweiler-DGH-Aussen danach 01
 - fdc6:c4fe:1de4::9ade:d0ff:fe88:712e #KIB-VG-Marktplatz
 - fdc6:c4fe:1de4::1aa6:f7ff:feca:8972 #KIB-VG-Marktplatz2
 - fdc6:c4fe:1de4::32b5:c2ff:fec2:aa5c #DerBunteHund-Otterberg
 - fdc6:c4fe:1de4::c66e:1fff:fefe:3f74 #KUS-FBG-Uplink
 - fdc6:c4fe:1de4::16cc:20ff:fec8:fe8 #KIB-DONNERSBERGER-01
