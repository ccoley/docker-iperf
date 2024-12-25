FROM alpine:3.21 AS base
LABEL org.opencontainers.image.authors="Chris Coley <chris@codingallnight.com>"

# iPerf 2 image
FROM base AS iperf2
ENV IPERF_VERSION="2.2.0-r0"
RUN apk add --no-cache iperf=${IPERF_VERSION}
ENTRYPOINT ["iperf", "-s"]
EXPOSE 5001/tcp 5001/udp

# iPerf 3 image
FROM base AS iperf3
ENV IPERF_VERSION="3.17.1-r0"
RUN apk add --no-cache iperf3=${IPERF_VERSION}
ENTRYPOINT ["iperf3", "-s"]
EXPOSE 5201/tcp 5201/udp

# vi: set ts=4 sw=4 et ft=dockerfile:
