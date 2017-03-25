#TODO: ggf. check Version (with Salt Mine)// Update go = remove go & reinstall go
install go:
  archive.extracted:
    - name: /usr/local
    - source: https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
    - source_hash: sha256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
    - source_hash_update: true
    - trim_output: 5
    - clean: true

/etc/profile.d/go.sh:
  file.managed:
    - contents:
      - export GOPATH=/opt/go
      - export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
    - mode: 755
