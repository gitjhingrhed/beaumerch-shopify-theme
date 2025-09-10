# Quick Restore Guide

## Method 1: Complete Theme Restore
1. Copy all files from this backup directory to your theme directory
2. Use Shopify CLI: `shopify theme push --theme=YOUR_THEME_NAME`
3. All settings and content will be automatically restored

## Method 2: Selective Restore
### Restore Customizer Settings Only
```bash
cp config/settings_data.json /path/to/your/theme/config/
```

### Restore Specific Sections
```bash
cp sections/hero-banner-image-marquee.liquid /path/to/your/theme/sections/
cp blocks/email-signup.liquid /path/to/your/theme/blocks/
```

### Restore Templates
```bash
cp templates/index.json /path/to/your/theme/templates/
```

## Method 3: Shopify Admin Panel
1. Go to Online Store > Themes
2. Upload theme files as a ZIP
3. All customizations will be preserved

## Important Notes
- Images are stored on Shopify's CDN and will be automatically restored
- All customizer settings are included in the backup
- The backup is complete and ready for immediate use
- No additional configuration is required

## Backup Details
- **Created:** $(date)
- **Files:** 429 total
- **Size:** 4.9M
- **Type:** Complete theme backup
