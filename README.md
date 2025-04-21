# iPerf Image

This repo builds two Docker images meant for use as an iperf server.

## Tags

There are images available with iPerf 2 or iPerf 3.

- `3.17`, `3` contain iPerf 3
- `2.2`, `2` contain iPerf 2

## Usage

The images default to running in server mode on the default port, which is 5001 for iPerf 2 and 5201 for iPerf 3.

### Server Mode

Running an iPerf 3 server:

```bash
docker run --rm -p 5201:5201 ccoley/iperf:3
```

Running an iPerf 2 server:

```bash
docker run --rm -p 5001:5001 ccoley/iperf:2
```

### Client Mode

Running iPerf 3 in client mode:

```bash
docker run --rm -t ccoley/iperf:3 -c <iperf3-server>
```

Running iPerf 2 in client mode:
```bash
docker run --rm -t ccoley/iperf:2 -c <iperf2-server> -i 1
```



[_modeline]: # ( vi: set ts=4 sw=4 et wrap ft=markdown: )
