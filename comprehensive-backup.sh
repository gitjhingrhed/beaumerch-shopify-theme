#!/bin/bash

# Comprehensive Shopify Theme Backup Script
# This script creates a complete backup of all theme data, customizer settings, and content

BACKUP_DIR="backups/comprehensive-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "🚀 Starting Comprehensive Shopify Theme Backup..."
echo "📁 Backup Directory: $BACKUP_DIR"

# 1. Create directory structure
mkdir -p "$BACKUP_DIR"/{templates,sections,snippets,assets,locales,config,blocks}

# 2. Backup all theme files
echo "📋 Backing up theme files..."
cp -r templates/* "$BACKUP_DIR/templates/" 2>/dev/null || echo "⚠️  No templates directory"
cp -r sections/* "$BACKUP_DIR/sections/" 2>/dev/null || echo "⚠️  No sections directory"
cp -r snippets/* "$BACKUP_DIR/snippets/" 2>/dev/null || echo "⚠️  No snippets directory"
cp -r assets/* "$BACKUP_DIR/assets/" 2>/dev/null || echo "⚠️  No assets directory"
cp -r locales/* "$BACKUP_DIR/locales/" 2>/dev/null || echo "⚠️  No locales directory"
cp -r config/* "$BACKUP_DIR/config/" 2>/dev/null || echo "⚠️  No config directory"
cp -r blocks/* "$BACKUP_DIR/blocks/" 2>/dev/null || echo "⚠️  No blocks directory"

# 3. Backup theme settings and configuration
echo "⚙️  Backing up theme settings..."
cp settings_schema.json "$BACKUP_DIR/" 2>/dev/null || echo "⚠️  No settings_schema.json"
cp settings_data.json "$BACKUP_DIR/" 2>/dev/null || echo "⚠️  No settings_data.json"
cp layout/*.liquid "$BACKUP_DIR/" 2>/dev/null || echo "⚠️  No layout files"

# 4. Create a live theme pull for comparison
echo "🌐 Pulling live theme data for comparison..."
shopify theme pull --theme=180638384500 --path="$BACKUP_DIR/live-theme-data" --force 2>/dev/null || echo "⚠️  Could not pull live theme"

# 5. Export customizer data
echo "🎨 Exporting customizer data..."
mkdir -p "$BACKUP_DIR/customizer-data"

# Get all templates with customizations
for template in templates/*.json; do
    if [ -f "$template" ]; then
        echo "📄 Backing up template: $(basename "$template")"
        cp "$template" "$BACKUP_DIR/customizer-data/"
    fi
done

# 6. Create a manifest file with backup information
cat > "$BACKUP_DIR/BACKUP_MANIFEST.txt" << EOF
COMPREHENSIVE SHOPIFY THEME BACKUP
===================================
Backup Date: $(date)
Backup Directory: $BACKUP_DIR
Theme ID: 180638384500

BACKUP CONTENTS:
- All template files (.liquid, .json)
- All section files
- All snippet files  
- All asset files (images, CSS, JS)
- All locale files
- All configuration files
- All block files
- Theme settings (settings_schema.json, settings_data.json)
- Layout files
- Live theme data pull
- Customizer template data

FILES BACKED UP:
EOF

# Count files in each directory
echo "📊 Counting backed up files..."
find "$BACKUP_DIR" -type f | wc -l >> "$BACKUP_DIR/BACKUP_MANIFEST.txt"
echo "Total files backed up: $(find "$BACKUP_DIR" -type f | wc -l)" >> "$BACKUP_DIR/BACKUP_MANIFEST.txt"

echo "" >> "$BACKUP_DIR/BACKUP_MANIFEST.txt"
echo "DIRECTORY STRUCTURE:" >> "$BACKUP_DIR/BACKUP_MANIFEST.txt"
tree "$BACKUP_DIR" >> "$BACKUP_DIR/BACKUP_MANIFEST.txt" 2>/dev/null || find "$BACKUP_DIR" -type d | sort >> "$BACKUP_DIR/BACKUP_MANIFEST.txt"

# 7. Create a restoration script
cat > "$BACKUP_DIR/RESTORE_BACKUP.sh" << 'EOF'
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
EOF

chmod +x "$BACKUP_DIR/RESTORE_BACKUP.sh"

# 8. Create a compressed archive
echo "📦 Creating compressed archive..."
cd backups
tar -czf "$(basename "$BACKUP_DIR").tar.gz" "$(basename "$BACKUP_DIR")"
cd ..

echo "✅ COMPREHENSIVE BACKUP COMPLETE!"
echo "📁 Backup location: $BACKUP_DIR"
echo "📦 Compressed archive: backups/$(basename "$BACKUP_DIR").tar.gz"
echo "📊 Total files backed up: $(find "$BACKUP_DIR" -type f | wc -l)"
echo ""
echo "🔄 To restore: cd $BACKUP_DIR && ./RESTORE_BACKUP.sh"
echo "📋 See BACKUP_MANIFEST.txt for detailed information"
