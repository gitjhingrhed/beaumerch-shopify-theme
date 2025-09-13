#!/bin/bash

# Customizer Data Backup Script
# This script specifically backs up all customizer settings, content, and configurations

CUSTOMIZER_BACKUP_DIR="backups/customizer-data-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$CUSTOMIZER_BACKUP_DIR"

echo "🎨 Starting Customizer Data Backup..."
echo "📁 Backup Directory: $CUSTOMIZER_BACKUP_DIR"

# 1. Backup all template customizations
echo "📄 Backing up template customizations..."
mkdir -p "$CUSTOMIZER_BACKUP_DIR/templates"
cp -r templates/*.json "$CUSTOMIZER_BACKUP_DIR/templates/" 2>/dev/null

# 2. Backup settings files
echo "⚙️  Backing up theme settings..."
cp settings_schema.json "$CUSTOMIZER_BACKUP_DIR/" 2>/dev/null
cp settings_data.json "$CUSTOMIZER_BACKUP_DIR/" 2>/dev/null

# 3. Backup section customizations
echo "🧩 Backing up section customizations..."
mkdir -p "$CUSTOMIZER_BACKUP_DIR/sections"
find sections/ -name "*.liquid" -exec cp {} "$CUSTOMIZER_BACKUP_DIR/sections/" \; 2>/dev/null

# 4. Backup assets (images, CSS, JS)
echo "🖼️  Backing up assets..."
mkdir -p "$CUSTOMIZER_BACKUP_DIR/assets"
cp -r assets/* "$CUSTOMIZER_BACKUP_DIR/assets/" 2>/dev/null

# 5. Create a detailed customizer manifest
cat > "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt" << EOF
SHOPIFY CUSTOMIZER DATA BACKUP
==============================
Backup Date: $(date)
Backup Directory: $CUSTOMIZER_BACKUP_DIR
Theme ID: 180638384500

CUSTOMIZER DATA INCLUDED:
- All template customizations (.json files)
- Theme settings (settings_schema.json, settings_data.json)
- Section customizations (.liquid files)
- All assets (images, CSS, JS files)
- Customizer configurations

TEMPLATE CUSTOMIZATIONS BACKED UP:
EOF

# List all template files
find "$CUSTOMIZER_BACKUP_DIR/templates" -name "*.json" -exec basename {} \; >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt" 2>/dev/null

echo "" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"
echo "SECTION CUSTOMIZATIONS:" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"
find "$CUSTOMIZER_BACKUP_DIR/sections" -name "*.liquid" -exec basename {} \; >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt" 2>/dev/null

echo "" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"
echo "ASSETS BACKED UP:" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"
find "$CUSTOMIZER_BACKUP_DIR/assets" -type f -exec basename {} \; >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt" 2>/dev/null

echo "" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"
echo "TOTAL FILES BACKED UP: $(find "$CUSTOMIZER_BACKUP_DIR" -type f | wc -l)" >> "$CUSTOMIZER_BACKUP_DIR/CUSTOMIZER_MANIFEST.txt"

# 6. Create customizer restoration script
cat > "$CUSTOMIZER_BACKUP_DIR/RESTORE_CUSTOMIZER.sh" << 'EOF'
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
EOF

chmod +x "$CUSTOMIZER_BACKUP_DIR/RESTORE_CUSTOMIZER.sh"

# 7. Create compressed archive
echo "📦 Creating compressed customizer archive..."
cd backups
tar -czf "$(basename "$CUSTOMIZER_BACKUP_DIR").tar.gz" "$(basename "$CUSTOMIZER_BACKUP_DIR")"
cd ..

echo "✅ CUSTOMIZER DATA BACKUP COMPLETE!"
echo "📁 Backup location: $CUSTOMIZER_BACKUP_DIR"
echo "📦 Compressed archive: backups/$(basename "$CUSTOMIZER_BACKUP_DIR").tar.gz"
echo "📊 Total files backed up: $(find "$CUSTOMIZER_BACKUP_DIR" -type f | wc -l)"
echo ""
echo "🔄 To restore customizer data: cd $CUSTOMIZER_BACKUP_DIR && ./RESTORE_CUSTOMIZER.sh"
echo "📋 See CUSTOMIZER_MANIFEST.txt for detailed information"
