# Skin Care Collection Backup
**Date:** September 11, 2025 - 13:38:25
**Theme:** beaumerch_v1_dev (#180638384500)
**Collection:** skin-care

## Backup Contents

### 1. Theme Files
- **config/**: All theme configuration files including settings_data.json and settings_schema.json
- **templates/**: All template files including collection.json
- **sections/**: All section files including main-collection.liquid
- **blocks/**: All block files including filters.liquid with custom settings
- **snippets/**: All snippet files
- **assets/**: All asset files including CSS and JavaScript
- **locales/**: All localization files
- **layout/**: All layout files

### 2. Key Files for Skin Care Collection

#### Collection Template
- `templates/collection.json` - Main collection template
- `sections/main-collection.liquid` - Collection section logic

#### Filtering and Sorting
- `blocks/filters.liquid` - Contains all filter drawer settings and CSS
- `assets/base.css` - Contains all mobile filter drawer CSS

#### Custom Settings
- Filter Drawer Clear All Button Settings
- Mobile Filter Drawer Settings
- All CSS customizations for mobile filtering

### 3. Backup Structure
```
skin-care-collection-backup-20250911-133825/
├── config/                    # Original backup
├── config-latest/            # Latest from Shopify
├── templates/                # Original backup
├── templates-latest/         # Latest from Shopify
├── sections/                 # Original backup
├── sections-latest/          # Latest from Shopify
├── blocks/                   # Original backup
├── blocks-latest/            # Latest from Shopify
├── snippets/                 # Original backup
├── snippets-latest/          # Latest from Shopify
├── assets/                   # Original backup
├── assets-latest/            # Latest from Shopify
├── locales/                  # Original backup
├── locales-latest/           # Latest from Shopify
├── layout/                   # Original backup
├── layout-latest/            # Latest from Shopify
└── SKIN_CARE_COLLECTION_BACKUP.md
```

### 4. Important Notes

#### Filter Drawer Settings
The backup includes all custom settings for the mobile filter drawer:
- Clear All Button customization
- Mobile-specific styling
- CSS with high specificity
- JavaScript for style enforcement

#### Collection Data
- Collection template uses dynamic content: `{{ closest.collection.title }}`
- Collection description: `{{ closest.collection.description }}`
- All collection-specific settings are stored in settings_data.json

#### CSS Customizations
- Mobile filter drawer styling
- Clear All button styling
- High-specificity CSS selectors
- JavaScript enforcement for style overrides

### 5. Restoration Instructions

To restore this backup:
1. Copy all files from the backup directory to your theme
2. Push to Shopify using: `shopify theme push --theme=THEME_ID`
3. Verify all settings are working in the customizer

### 6. Files Modified for Skin Care Collection

#### Recent Changes
- Added Filter Drawer Clear All Button Settings
- Enhanced CSS specificity for mobile filter drawer
- Added JavaScript for style enforcement
- Mobile-only CSS targeting filter drawer

#### Key CSS Files
- `blocks/filters.liquid` - Contains mobile filter drawer CSS
- `assets/base.css` - Contains backup CSS for consistency

### 7. Verification Checklist

After restoration, verify:
- [ ] Skin Care collection displays correctly
- [ ] Mobile filter drawer works
- [ ] Clear All button styling applies
- [ ] All customizer settings are available
- [ ] CSS changes are visible
- [ ] JavaScript functionality works

### 8. Theme Information
- **Theme Name:** beaumerch_v1_dev
- **Theme ID:** #180638384500
- **Store:** kui7dq-v0.myshopify.com
- **Last Updated:** September 11, 2025

### 9. Contact
If you need to restore this backup or have questions about the skin-care collection setup, refer to this documentation and the backed-up files.
