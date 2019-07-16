# BigData-18-19-scripts

Bash Script to open tunnels to Unibo BigData cluster to work on exercises.

All scripts can be invoked with a `-h` option to get a description.

## Scripts

### Tunnel

[`tunnel.sh`](./tunnel.sh) is a wrapper around native `ssh` command.
Because other scripts use it, so please keep it in the same directory as the others.

### Jump In

[`jumpIn.sh`](./jumpIn.sh) opens a shell on `isi-vclustX.csr.unibo.it` server using `alfa.csr.unibo.it` as jump server.

Usage:

```bash
./jumpIn.sh uniboEmail clusterUser clusterNumber
```

### Cloudera

[`cloudera.sh`](./cloudera.sh) tunnels the remote Cloudera web GUI on port 7180.

Usage:

```bash
./cloudera.sh uniboEmail [localPort]
```

### SFTP

[`sftp.sh`](./sftp.sh) tunnels remote SFTP port 22 on local host, by default on local port 8022.

Usage:

```bash
./sftp.sh uniboEmail clusterNumber [localPort]
```

### WebHDFS

[`webhdfs.sh`](./webhdfs.sh) tunnels WebHDFS remote ports 50070 and 50075 to local host.

Usage:

```bash
./webhdfs.sh uniboEmail [localPort1] [localPort2]
```

## License
![GitHub](https://img.shields.io/github/license/niccomlt/Big-Data-18-19-VSCode-template.svg)

The template is provided under the license specified in [dedicated file](./LICENSE).