#!/bin/bash
CONF_FILE=/opt/yanagishima-${VERSION}/conf/yanagishima.properties

declare -A PARAMS
PARAMS=(
  ["PRESTO_COODINATOR_URL"]=${PRESTO_COODINATOR_URL}
  ["CATALOG"]=${CATALOG}
  ["SCHEMA"]=${SCHEMA}
)

for key in "${!PARAMS[@]}"; do
  sed -i -e "s|\${${key}}|${PARAMS[$key]}|g" ${CONF_FILE}
done

bash /opt/yanagishima-${VERSION}/bin/start.sh
