#!/bin/bash
# Customizer Data Only Restoration Script

BACKUP_DIR="$(dirname "$0")"
RESTORE_DIR="."

echo "🔄 Restoring customizer data only from backup: $BACKUP_DIR"

# Restore template customizations
cp -r "$BACKUP_DIR/templates"/* "$RESTORE_DIR/templates/" 2>/dev/null && echo "✅ Template customizations restored"

# Restore settings
cp "$BACKUP_DIR/settings_data.json" "$RESTORE_DIR/" 2>/dev/null && echo "✅ Settings data restored"

echo "✅ CUSTOMIZER DATA RESTORATION FINISHED!"
echo "🚀 You can now push the theme with: shopify theme push"
