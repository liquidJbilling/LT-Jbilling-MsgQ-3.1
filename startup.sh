#!/bin/bash
#
# Startup script for jBilling under Cruise Control. This script sets the
# server port on the running jBilling instance so that multiple jBilling 
# projects can be tested under the same Cruise Control build loop.
#
# see also 'cc-build.properties'


# load properties if file exists, otherwise use port 8080
if [ -f cc-build.properties ]; then
    . cc-build.properties
else
    server_port=8080
fi

# grails runtime options
export GRAILS_OPTS="-server -Xmx1024M -Xms256M -XX:MaxPermSize=256m"

# start jbilling and record process id
nohup grails -Ddisable.auto.recompile=true -Dserver.port=${server_port} run-app &
echo $!> jbilling.pid

echo "Started jBilling on port ${server_port}."

exit 0;
