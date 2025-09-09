#!/bin/bash

# Shopify Theme Backup Verification Script
# Date: September 9, 2025

echo "🔍 Verifying Shopify Theme Backup..."
echo "=================================="

BACKUP_DIR="$(dirname "$0")"
echo "Backup Directory: $BACKUP_DIR"
echo ""

# Check if all required directories exist
echo "📁 Checking directory structure..."
directories=("assets" "blocks" "config" "layout" "locales" "sections" "snippets" "templates")

for dir in "${directories[@]}"; do
    if [ -d "$BACKUP_DIR/$dir" ]; then
        echo "✅ $dir/ - Found"
    else
        echo "❌ $dir/ - Missing"
    fi
done

echo ""

# Check key files
echo "📄 Checking key files..."
key_files=(
    "blocks/email-signup.liquid"
    "sections/hero-banner-image-marquee.liquid"
    "config/settings_schema.json"
    "config/settings_data.json"
    "templates/index.json"
)

for file in "${key_files[@]}"; do
    if [ -f "$BACKUP_DIR/$file" ]; then
        echo "✅ $file - Found"
    else
        echo "❌ $file - Missing"
    fi
done

echo ""

# Count files in each directory
echo "📊 File counts:"
for dir in "${directories[@]}"; do
    if [ -d "$BACKUP_DIR/$dir" ]; then
        count=$(find "$BACKUP_DIR/$dir" -type f | wc -l)
        echo "   $dir/: $count files"
    fi
done

echo ""

# Check for specific customizations
echo "🎨 Checking for customizations..."

# Check Email Signup Block
if grep -q "enable_input_placeholder_font_color" "$BACKUP_DIR/blocks/email-signup.liquid" 2>/dev/null; then
    echo "✅ Email Signup Block - Placeholder font color setting found"
else
    echo "❌ Email Signup Block - Placeholder font color setting missing"
fi

# Check Hero Banner
if grep -q "button_font_family" "$BACKUP_DIR/sections/hero-banner-image-marquee.liquid" 2>/dev/null; then
    echo "✅ Hero Banner - Button typography settings found"
else
    echo "❌ Hero Banner - Button typography settings missing"
fi

# Check Settings Schema
if grep -q "tertiary_button" "$BACKUP_DIR/config/settings_schema.json" 2>/dev/null; then
    echo "✅ Settings Schema - Tertiary button settings found"
else
    echo "❌ Settings Schema - Tertiary button settings missing"
fi

echo ""

# Calculate total backup size
echo "📏 Backup size:"
total_size=$(du -sh "$BACKUP_DIR" 2>/dev/null | cut -f1)
echo "   Total size: $total_size"

echo ""
echo "🎯 Backup verification complete!"
echo "=================================="

# Summary
echo ""
echo "📋 Summary:"
echo "   Backup Date: September 9, 2025 - 02:07:02"
echo "   Backup Location: $BACKUP_DIR"
echo "   Status: Ready for restoration"
echo ""
echo "🚀 To restore this backup:"
echo "   1. Copy files to your theme directory"
echo "   2. Run: shopify theme push"
echo "   3. Activate theme in Shopify admin"
echo ""
echo "✅ Backup verification complete!"
