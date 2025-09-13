#!/bin/bash
# Complete Theme Restoration Script

BACKUP_DIR="$(dirname "$0")"
RESTORE_DIR="."

echo "🔄 Restoring complete theme from backup: $BACKUP_DIR"
echo "⚠️  This will overwrite existing files!"

read -p "Are you sure you want to continue? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Restoration cancelled."
    exit 1
fi

echo "🔄 Starting restoration..."

# Restore all theme files
cp -r "$BACKUP_DIR/templates"/* "$RESTORE_DIR/templates/" 2>/dev/null && echo "✅ Templates restored"
cp -r "$BACKUP_DIR/sections"/* "$RESTORE_DIR/sections/" 2>/dev/null && echo "✅ Sections restored"
cp -r "$BACKUP_DIR/snippets"/* "$RESTORE_DIR/snippets/" 2>/dev/null && echo "✅ Snippets restored"
cp -r "$BACKUP_DIR/assets"/* "$RESTORE_DIR/assets/" 2>/dev/null && echo "✅ Assets restored"
cp -r "$BACKUP_DIR/locales"/* "$RESTORE_DIR/locales/" 2>/dev/null && echo "✅ Locales restored"
cp -r "$BACKUP_DIR/config"/* "$RESTORE_DIR/config/" 2>/dev/null && echo "✅ Config restored"
cp -r "$BACKUP_DIR/blocks"/* "$RESTORE_DIR/blocks/" 2>/dev/null && echo "✅ Blocks restored"
cp -r "$BACKUP_DIR/layout"/* "$RESTORE_DIR/layout/" 2>/dev/null && echo "✅ Layout restored"

# Restore settings
cp "$BACKUP_DIR/settings_schema.json" "$RESTORE_DIR/" 2>/dev/null && echo "✅ Settings schema restored"
cp "$BACKUP_DIR/settings_data.json" "$RESTORE_DIR/" 2>/dev/null && echo "✅ Settings data restored"

echo "✅ COMPLETE THEME RESTORATION FINISHED!"
echo "🚀 You can now push the theme with: shopify theme push"
