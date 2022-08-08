FROM kamailio/kamailio:5.4.6-stretch
RUN apt update
RUN apt install -y gettext-base kamailio-websocket-modules kamailio-tls-modules kamailio-postgres-modules
COPY ./kamctlrc /templates/kamctlrc
COPY ./kamailio.cfg /etc/kamailio/kamailio.cfg
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]