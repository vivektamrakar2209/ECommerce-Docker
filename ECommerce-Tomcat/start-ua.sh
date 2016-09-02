#!/bin/sh

source /env.sh


# Uncomment to configure Agent using controller-info.xml
#echo "Configuring Agent properties: ${AGENT_CONFIG}"
#sed -i "s/<controller-host>/<controller-host>${CONTROLLER}/g" ${AGENT_CONFIG}
echo " controller_host: ${CONTROLLER}" >> ${UA_CONFIG}
#sed -i "s/<controller-port>/<controller-port>${APPD_PORT}/g" ${AGENT_CONFIG}
echo " controller_port: ${APPD_PORT}" >> ${UA_CONFIG}
#sed -i "s/<account-access-key>/<account-access-key>${ACCESS_KEY}/g" ${AGENT_CONFIG}
echo " account_access_key: ${ACCESS_KEY}" >> ${UA_CONFIG}
#sed -i "s/<application-name>/<application-name>${APP_NAME}/g" ${AGENT_CONFIG}
#echo " application-name: ${APP_NAME}"
#sed -i "s/<tier-name>/<tier-name>${TIER_NAME}/g" ${AGENT_CONFIG}
#echo " tier-name: ${TIER_NAME}"
#sed -i "s/<node-name>/<node-name>${NODE_NAME}/g" ${AGENT_CONFIG}
echo " node-name: ${HOSTNAME}" >> ${UA_CONFIG}
#sed -i "s/<sim-enabled>false/<sim-enabled>true/g" ${AGENT_CONFIG}
echo " sim-enabled: true" >> ${UA_CONFIG}
#sed -i "s/<unique-host-id>/<unique-host-id>${UNIQUE_HOST_ID}/g" ${AGENT_CONFIG}
#echo " unique-host-id: ${UNIQUE_HOST_ID}"
#sed -i "s/<machine-path>/<machine-path>${MACHINE_PATH_1}|${MACHINE_PATH_2}/g" ${UA_CONFIG}
#echo " machine-path: ${MACHINE_PATH_1}|${MACHINE_PATH_2}"

echo "interval: 30"
nohup ${UA_HOME}/ua4.3.0.0/main/unified-agent &
# Uncomment for multi-tenant controllers
# sed -i "s/<account-name>/<account-name>${ACCOUNT_NAME%%_*}/g" ${AGENT_CONFIG}
# echo " account-name: ${ACCOUNT_NAME%%_*}/g"


