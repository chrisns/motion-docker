FROM debian
RUN apt-get update && \
  apt-get install -qy motion \
  apt-get clean

VOLUME /usr/local/etc/motion
VOLUME /var/lib/motion

CMD [ "motion", "-n" ]
