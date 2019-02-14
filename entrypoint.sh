#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_ACTION}"

sh -c "$*"

echo "#################################################"
echo "Completed ${GITHUB_ACTION}"
