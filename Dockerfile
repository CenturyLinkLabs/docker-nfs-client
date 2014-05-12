FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y nfs-common nfs-kernel-server portmap inotify-tools -qq
ADD nfs-client.sh /usr/local/bin/nfs-client
RUN ["/usr/local/bin/nfs-client"]

