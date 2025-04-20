# iPerf 2 image
FROM alpine:3.21 AS iperf2
RUN apk add --no-cache iperf=~2.2
ENTRYPOINT ["iperf"]
CMD ["-s"]
EXPOSE 5001/tcp 5001/udp


# iPerf 3 image
FROM alpine:3.21 AS iperf3
RUN apk add --no-cache iperf3=~3.17
ENTRYPOINT ["iperf3"]
CMD ["-s"]
EXPOSE 5201/tcp 5201/udp

# vi: set ts=4 sw=4 et ft=dockerfile:
