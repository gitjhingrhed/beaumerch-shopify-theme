# Poppins Font Implementation for Beaumerch Theme

## Overview
This theme has been configured to use **Poppins** as the default font for both headings and body text throughout the entire theme.

## Implementation Details

### 1. CSS Override File
- **File**: `assets/poppins-font-override.css`
- **Purpose**: Overrides all font-family declarations to use Poppins
- **Method**: Uses `!important` declarations to ensure Poppins is applied to all elements

### 2. Font Loading
- **Google Fonts**: Poppins is loaded from Google Fonts with multiple weights (300-900)
- **Font Display**: Uses `font-display: swap` for optimal loading performance
- **Fallbacks**: Includes system font fallbacks for better user experience

### 3. Theme Integration
- **Stylesheet Loading**: Added to `snippets/stylesheets.liquid` to ensure it loads on all pages
- **CSS Variables**: Overrides the theme's CSS custom properties for font families
- **Font Weights**: All headings are set to Medium (500) weight for consistency
- **Comprehensive Coverage**: Applies to all text elements including:
  - Body text and paragraphs
  - All heading levels (H1-H6) - Medium weight
  - Product cards and descriptions
  - Navigation and menus
  - Forms and buttons
  - Cart and checkout elements

### 4. Shopify Admin Settings
- **Font Picker**: Updated to use Work Sans as the default (closest available to Poppins)
- **Settings Schema**: Modified `config/settings_schema.json` to reflect new defaults
- **Settings Data**: Updated `config/settings_data.json` to apply new font settings

## Font Weights Available
- 300 (Light)
- 400 (Regular)
- 500 (Medium) - **Default for all headings**
- 600 (SemiBold)
- 700 (Bold)
- 800 (ExtraBold)
- 900 (Black)

## Font Weight Configuration
- **Headings (H1-H6)**: All set to Medium (500) weight for consistency
- **Body Text**: Uses Regular (400) weight
- **Product Titles**: Medium (500) weight
- **Collection Titles**: Medium (500) weight
- **Section Titles**: Medium (500) weight

## Font Size Configuration
- **H1**: 72px (Desktop) / 48px (Tablet) / 36px (Mobile)
- **H2**: 52px (Desktop) / 36px (Tablet) / 28px (Mobile)
- **H3**: 44px (Desktop) / 32px (Tablet) / 24px (Mobile)
- **H4**: 36px (Desktop) / 28px (Tablet) / 22px (Mobile)
- **H5**: 28px (Desktop) / 24px (Tablet) / 20px (Mobile)
- **H6**: 22px (Desktop) / 20px (Tablet) / 18px (Mobile)

## Line Height Configuration
- **H1**: 120% (tight spacing for large headings)
- **H2**: 120% (tight spacing for large headings)
- **H3**: 130% (balanced spacing for medium headings)
- **H4**: 140% (comfortable spacing for smaller headings)
- **H5**: 140% (comfortable spacing for smaller headings)
- **H6**: 150% (loose spacing for smallest headings)

## Files Modified
1. `assets/poppins-font-override.css` - New CSS override file
2. `snippets/stylesheets.liquid` - Added Poppins CSS to stylesheet loading
3. `config/settings_schema.json` - Updated font picker defaults
4. `config/settings_data.json` - Applied new font settings
5. `snippets/theme-styles-variables.liquid` - Added documentation comment

## How It Works
1. The theme loads with Work Sans as the default font (Shopify font picker requirement)
2. The Poppins CSS override file loads after the main theme CSS
3. All font-family declarations are overridden to use Poppins
4. The `!important` declarations ensure Poppins takes precedence over theme defaults

## Benefits
- **Consistent Typography**: All text elements use the same font family
- **Modern Design**: Poppins is a clean, modern font that works well for e-commerce
- **Responsive Typography**: Font sizes automatically adjust for different screen sizes
- **Optimized Line Heights**: Carefully crafted line heights for optimal readability
- **Performance**: Fonts are loaded with optimal display settings
- **Fallbacks**: System fonts provide backup if Poppins fails to load
- **Maintainability**: Centralized font management through CSS overrides

## Notes
- The font picker in Shopify admin will still show Work Sans, but Poppins will be displayed on the frontend
- This approach ensures compatibility with Shopify's font system while achieving the desired typography
- All font weights are available for use in custom CSS if needed
- The implementation is non-destructive and can be easily reverted if needed
