#!/usr/bin/env bash
#
# Phase 3/3 - Seed data.
#
# Runs after every table and foreign key exists. The order below follows the
# real row-level dependencies of the seed data:
#
#   1. geographic / gps / school      -> schools need cities, campuses need schools
#   2. user-management (00-inserts)   -> persons (identities only)
#   3. iam                            -> profiles + school admins (need persons,
#                                        roles and school campuses)
#   4. user-management (05-relations) -> families / members / licences (need profiles)
#   5. fleet / route / notification   -> buses need campuses + gps devices;
#                                        routes need campuses + buses + profiles;
#                                        alerts/boardings need routes + profiles
#
# The user-management seeds are split on purpose (00-inserts vs 05-relations):
# Iam.Profile references UserManagement.Person, while FamilyMember/DriverLicense
# reference Iam.Profile, so the two halves must run on opposite sides of IAM.
#
# Runs inside the liquibase container with the database repo mounted at /db.
set -euo pipefail

ALL_DATA_LABELS="00-inserts,01-updates,02-deletes,03-upserts,04-patches"

run() {
  local svc="$1"
  local labels="$2"
  echo ">>> [data] ${svc} (${labels})"
  liquibase \
    --searchPath="/db/${svc}" \
    --changeLogFile=changelog/changelog-master.yaml \
    --labels="${labels}" \
    update
}

run ms-geographic-db    "${ALL_DATA_LABELS}"
run ms-gps-db           "${ALL_DATA_LABELS}"
run ms-school-db        "${ALL_DATA_LABELS}"

# Identities first, so Iam.Profile can reference them.
run ms-user-management-db "00-inserts"

# Roles, profiles (reference persons + campuses) and school admins.
run ms-iam-db           "${ALL_DATA_LABELS}"

# Relations (reference Iam.Profile).
run ms-user-management-db "05-relations"

run ms-fleet-db         "${ALL_DATA_LABELS}"
run ms-route-db         "${ALL_DATA_LABELS}"
run ms-notification-db  "${ALL_DATA_LABELS}"

echo ">>> [data] done"
