FROM debian
RUN apt-get update && \
  apt-get install -qy motion=4.1.1-1.1+b2 && \
  apt-get clean

VOLUME /usr/local/etc/motion
VOLUME /var/lib/motion

CMD [ "motion", "-n" ]
