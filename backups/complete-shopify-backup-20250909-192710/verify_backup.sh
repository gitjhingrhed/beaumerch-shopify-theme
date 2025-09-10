#!/bin/bash

BACKUP_DIR="$(dirname "$0")"
echo "Verifying backup in: $BACKUP_DIR"

# Check if all essential directories exist
echo "Checking directory structure..."
for dir in assets blocks config layout locales sections snippets templates; do
    if [ -d "$BACKUP_DIR/$dir" ]; then
        echo "✅ $dir directory exists"
    else
        echo "❌ $dir directory missing"
    fi
done

# Check for essential files
echo "Checking essential files..."
for file in config/settings_data.json config/settings_schema.json templates/index.json; do
    if [ -f "$BACKUP_DIR/$file" ]; then
        echo "✅ $file exists"
    else
        echo "❌ $file missing"
    fi
done

# Count files
TOTAL_FILES=$(find "$BACKUP_DIR" -type f | wc -l)
echo "Total files backed up: $TOTAL_FILES"

# Check backup size
BACKUP_SIZE=$(du -sh "$BACKUP_DIR" | cut -f1)
echo "Backup size: $BACKUP_SIZE"

echo "Backup verification complete!"
