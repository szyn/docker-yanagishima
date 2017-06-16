#!/bin/bash
CONF_PATH=/yanagishima-${VERSION}/conf/yanagishima.properties
sed -i -e "s/\${PRESTO_COODINATOR_URL}/${PRESTO_COODINATOR_URL}/g" ${CONF_PATH}
sed -i -e "s/\${CATALOG}/${CATALOG}/g" ${CONF_PATH}
sed -i -e "s/\${SCHEMA}/${SCHEMA}/g" ${CONF_PATH}

sh /yanagishima-${VERSION}/bin/start.sh
