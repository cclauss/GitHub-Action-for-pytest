#!/bin/bash
set -e

echo "#################################################"
echo "Starting GitHub Action for Flake8"

sh -c "$*"

echo "#################################################"
echo "Completed GitHub Action for Flake8"
