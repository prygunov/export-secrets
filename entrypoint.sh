#!/bin/bash
set -e

IFS=',' read -ra VARS <<< "$1"
OUTPUT_FILE="$2"

echo "Exporting secrets to $OUTPUT_FILE..."

> "$OUTPUT_FILE"

for VAR in "${VARS[@]}"; do
  VALUE="${!VAR}"
  if [ -n "$VALUE" ]; then
    echo "$VAR=$VALUE" >> "$OUTPUT_FILE"
  else
    echo "Warning: $VAR is empty or not defined"
  fi
done
