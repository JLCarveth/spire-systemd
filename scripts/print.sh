#!/bin/bash
TARGET_DIR="/opt/spinv-backend/inbound"

for file in "$TARGET_DIR"/*.pdf; do
	lp -o fit-to-page $file
	mv $file $TARGET_DIR/archive
done
