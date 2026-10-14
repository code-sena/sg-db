#!/usr/bin/env bash
#
# Phase 1/3 - Schema bootstrap: schemas, types, tables and indexes.
#
# Creates every schema's objects without any cross-schema foreign key, so the
# services can be created in any order. Cross-schema foreign keys are added in
# phase 2 (bootstrap/02-constraints.sh) once every table exists.
#
# Runs inside the liquibase container with the database repo mounted at /db.
set -euo pipefail

SERVICES=(
  ms-geographic-db
  ms-gps-db
  ms-school-db
  ms-user-management-db
  ms-iam-db
  ms-fleet-db
  ms-route-db
  ms-notification-db
)

LABELS="01-schema,02-types,03-tables,09-indexes"

for svc in "${SERVICES[@]}"; do
  echo ">>> [tables] ${svc}"
  liquibase \
    --searchPath="/db/${svc}" \
    --changeLogFile=changelog/changelog-master.yaml \
    --labels="${LABELS}" \
    update
done

echo ">>> [tables] done"
