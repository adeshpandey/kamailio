#!/bin/bash

echo "Welcome to kamailio";

envsubst <  /templates/kamctlrc > /etc/kamailio/kamctlrc;
envsubst <  /templates/pgpass > /root/.pgpass;

sleep 10;
kamdbctl create;

kamailio -DD -E "$@"