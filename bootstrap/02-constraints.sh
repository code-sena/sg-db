#!/usr/bin/env bash
#
# Phase 2/3 - Constraints: cross-schema foreign keys and remaining DDL.
#
# Runs only after phase 1 created every table, so any cross-schema foreign key
# (iam <-> school, iam <-> user-management, fleet/route/notification -> ...) can
# be added safely. Order matters only for same-schema dependencies that live in
# different services, so we keep a dependency-friendly order.
#
# Runs inside the liquibase container with the database repo mounted at /db.
set -euo pipefail

SERVICES=(
  ms-geographic-db
  ms-gps-db
  ms-school-db
  ms-iam-db
  ms-user-management-db
  ms-fleet-db
  ms-route-db
  ms-notification-db
)

LABELS="04-alter,05-view,06-functions,07-procedure,08-triggers"

for svc in "${SERVICES[@]}"; do
  echo ">>> [constraints] ${svc}"
  liquibase \
    --searchPath="/db/${svc}" \
    --changeLogFile=changelog/changelog-master.yaml \
    --labels="${LABELS}" \
    update
done

echo ">>> [constraints] done"
