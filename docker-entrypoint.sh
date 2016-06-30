#!/bin/bash
CONF_PATH=/yanagishima-1.0/conf/yanagishima.properties
sed -i -e "s/\${PRESTO_COODINATOR_URL}/${PRESTO_COODINATOR_URL}/g" ${CONF_PATH}
sed -i -e "s/\${CATALOG}/${CATALOG}/g" ${CONF_PATH}
sed -i -e "s/\${SCHEMA}/${SCHEMA}/g" ${CONF_PATH}

sh /yanagishima-1.0/bin/start.sh
