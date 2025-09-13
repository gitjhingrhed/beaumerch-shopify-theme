#!/bin/bash
# Restoration script for comprehensive backup

BACKUP_DIR="$(dirname "$0")"
RESTORE_DIR="."

echo "🔄 Restoring from backup: $BACKUP_DIR"

# Restore theme files
cp -r "$BACKUP_DIR/templates"/* "$RESTORE_DIR/templates/" 2>/dev/null
cp -r "$BACKUP_DIR/sections"/* "$RESTORE_DIR/sections/" 2>/dev/null
cp -r "$BACKUP_DIR/snippets"/* "$RESTORE_DIR/snippets/" 2>/dev/null
cp -r "$BACKUP_DIR/assets"/* "$RESTORE_DIR/assets/" 2>/dev/null
cp -r "$BACKUP_DIR/locales"/* "$RESTORE_DIR/locales/" 2>/dev/null
cp -r "$BACKUP_DIR/config"/* "$RESTORE_DIR/config/" 2>/dev/null
cp -r "$BACKUP_DIR/blocks"/* "$RESTORE_DIR/blocks/" 2>/dev/null

# Restore settings
cp "$BACKUP_DIR/settings_schema.json" "$RESTORE_DIR/" 2>/dev/null
cp "$BACKUP_DIR/settings_data.json" "$RESTORE_DIR/" 2>/dev/null

echo "✅ Restoration complete!"
