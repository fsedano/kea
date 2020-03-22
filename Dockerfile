FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl apt-transport-https gnupg
RUN curl -1sLf \
  'https://dl.cloudsmith.io/public/isc/kea-1-7/cfg/setup/bash.deb.sh' \
  | bash
RUN apt-get update && apt-get install -y isc-kea-dhcp-ddns-server isc-kea-admin isc-kea-ctrl-agent
RUN mkdir -p /var/run/kea
COPY bootstrap.sh /
CMD ["/bootstrap.sh"]
#CMD ["/bin/bash", "-c", "sleep 99999999"]
