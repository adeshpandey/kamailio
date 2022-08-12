#!/bin/bash

echo "Welcome to kamailio";

envsubst <  /templates/kamctlrc > /etc/kamailio/kamctlrc;

if [ $CREATE_DB == "True" ]
then
    sleep 10;
    kamdbctl create;
fi

kamailio -DD -E "$@"