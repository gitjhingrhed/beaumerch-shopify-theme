# Quick Restore Guide
**Backup Date:** September 9, 2025 - 02:11:25

## 🚀 Quick Restore Instructions

### **Option 1: Complete Theme Restore**
```bash
# Navigate to your theme directory
cd /path/to/your/theme

# Copy all files from backup
cp -r backups/complete-shopify-backup-20250909-021125/* ./

# Upload to Shopify
shopify theme push
```

### **Option 2: Selective Restore**

#### **Restore Email Signup Block:**
```bash
cp backups/complete-shopify-backup-20250909-021125/blocks/email-signup.liquid blocks/
```

#### **Restore Hero Banner:**
```bash
cp backups/complete-shopify-backup-20250909-021125/sections/hero-banner-image-marquee.liquid sections/
```

#### **Restore Settings:**
```bash
cp backups/complete-shopify-backup-20250909-021125/config/settings_data.json config/
cp backups/complete-shopify-backup-20250909-021125/config/settings_schema.json config/
```

#### **Restore Templates:**
```bash
cp backups/complete-shopify-backup-20250909-021125/templates/index.json templates/
```

## ✅ Verification Steps

1. **Check Email Signup Block:**
   - Go to Shopify Customizer
   - Add Email Signup block
   - Verify all 52 settings are available

2. **Check Hero Banner:**
   - Verify search button styling
   - Check button typography settings
   - Confirm no thumbnail numbers

3. **Check Global Settings:**
   - Verify button spacing settings
   - Check input field spacing settings
   - Confirm tertiary button style

## 🎯 Key Files to Restore

| File | Purpose |
|------|---------|
| `blocks/email-signup.liquid` | Email signup block with all customizations |
| `sections/hero-banner-image-marquee.liquid` | Hero banner with all features |
| `config/settings_schema.json` | All customizer settings |
| `config/settings_data.json` | Current customizer values |
| `templates/index.json` | Homepage configuration |

## 📞 Need Help?

If you encounter any issues during restoration:
1. Check file permissions
2. Verify Shopify CLI is authenticated
3. Test in development theme first
4. Check browser console for errors

---

**Backup Ready:** ✅ Complete theme backup available  
**Restore Ready:** ✅ Ready for immediate restoration
