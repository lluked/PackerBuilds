#cloud-config
autoinstall:
    version: 1
    identity:
        hostname: ubuntu-server
        password: '$6$iCc.WH.j$EuCSsvXtnIX2UnrunKZHApB3uvKuxplkAL1UBtBkab047y/jyn9WnpVAkc57jtqSv.hsLGje.milvneydC.Cw/'
        username: vagrant
    keyboard:
        layout: gb
    locale: en_GB
    network:
        version: 2
        ethernets:
            ${interface}:
                dhcp4: true
                dhcp-identifier: mac
    ssh:
        install-server: yes
        allow-pw: yes
    storage:
        layout:
            name: lvm
    late-commands:
        - 'echo "vagrant    ALL=(ALL)    NOPASSWD: ALL" > /target/etc/sudoers.d/vagrant'
        - chmod 440 /target/etc/sudoers.d/vagrant
