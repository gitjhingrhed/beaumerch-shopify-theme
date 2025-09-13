#!/bin/bash
# Customizer Data Restoration Script

BACKUP_DIR="$(dirname "$0")"
RESTORE_DIR="."

echo "🔄 Restoring customizer data from: $BACKUP_DIR"

# Restore template customizations
cp -r "$BACKUP_DIR/templates"/* "$RESTORE_DIR/templates/" 2>/dev/null

# Restore settings
cp "$BACKUP_DIR/settings_schema.json" "$RESTORE_DIR/" 2>/dev/null
cp "$BACKUP_DIR/settings_data.json" "$RESTORE_DIR/" 2>/dev/null

# Restore section customizations
cp -r "$BACKUP_DIR/sections"/* "$RESTORE_DIR/sections/" 2>/dev/null

# Restore assets
cp -r "$BACKUP_DIR/assets"/* "$RESTORE_DIR/assets/" 2>/dev/null

echo "✅ Customizer data restoration complete!"
echo "🚀 You can now push the theme with: shopify theme push"
