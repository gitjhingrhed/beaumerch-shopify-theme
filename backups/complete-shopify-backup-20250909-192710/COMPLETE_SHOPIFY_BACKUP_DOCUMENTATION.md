# Complete Shopify Theme Backup Documentation

## Backup Information
- **Backup Date:** $(date)
- **Backup Directory:** $BACKUP_DIR
- **Theme Name:** Beaumerch
- **Store:** kui7dq-v0.myshopify.com
- **Backup Type:** Complete Theme Backup (Code + Data)

## What's Included

### 1. Theme Code Files
- **Assets:** All CSS, JS, images, and static files
- **Blocks:** All Liquid block templates
- **Config:** Settings schema and data
- **Layout:** Theme layout files
- **Locales:** All language files
- **Sections:** All Liquid section templates
- **Snippets:** All Liquid snippet files
- **Templates:** All page templates

### 2. Customizer Settings
- **Global Settings:** All theme customizer settings
- **Section Settings:** All section-specific configurations
- **Block Settings:** All block-specific configurations
- **Template Settings:** All template-specific settings

### 3. Content & Images
- **Uploaded Images:** All images uploaded through customizer
- **Content Text:** All text content from customizer
- **Settings Data:** All customizer configuration data

## Key Features Backed Up

### Email Signup Block Enhancements
- 52 comprehensive customization settings
- Input field spacing controls (padding/margin)
- All button styles (Primary, Secondary, Tertiary, Link)
- Container width settings (fill/custom)
- Background color options for container, input group, and input field
- Typography settings for input and button text
- Input field font color customization
- Input field placeholder font color customization
- Shopify block width control for email signup containers

### Tertiary Button Style
- Complete customization options in settings schema
- CSS variables integration
- Global button spacing controls
- Support in all button blocks

### Global Theme Settings
- Button and input field spacing controls
- CSS variable system integration
- Responsive design support

### Hero Banner Image Marquee
- Enhanced search button styling
- Button typography customization
- Removed thumbnail numbers for cleaner design
- Improved CSS specificity and override protection

## File Structure
```
backups/complete-shopify-backup-20250909-192710/
├── assets/                    # All theme assets
├── blocks/                    # All block templates
├── config/                    # Settings and configuration
├── layout/                    # Theme layouts
├── locales/                   # Language files
├── sections/                  # Section templates
├── snippets/                  # Snippet templates
├── templates/                 # Page templates
└── COMPLETE_SHOPIFY_BACKUP_DOCUMENTATION.md
```

## Restoration Instructions

### Quick Restore
1. Copy all files from backup directory to your theme directory
2. Upload to Shopify via CLI or admin panel
3. All settings and content will be preserved

### Manual Restore
1. Restore `config/settings_data.json` for all customizer settings
2. Restore individual template files for page-specific settings
3. Restore section files for section-specific settings
4. All images and content will be automatically restored

## Verification
- Total files backed up: $(find "$BACKUP_DIR" -type f | wc -l)
- Backup size: $(du -sh "$BACKUP_DIR" | cut -f1)
- Backup created: $(date)

## Notes
- This backup includes ALL theme data and customizations
- Images are referenced by their Shopify URLs and will be preserved
- All customizer settings are included in the backup
- The backup is complete and ready for restoration
