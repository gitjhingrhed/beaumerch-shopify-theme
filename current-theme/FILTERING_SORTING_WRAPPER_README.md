# Filtering and Sorting Wrapper Feature

## Overview
Added a wrapper div around the filtering and sorting section in collection pages with customizable width and background color settings.

## Features Added

### 1. Wrapper Width Settings
- **Page Width**: Constrains the wrapper to the page width (default)
- **Full Width**: Makes the wrapper span the full viewport width

### 2. Background Color Settings
- **Enable Background Color**: Toggle to enable/disable background color
- **Background Color**: Color picker for the wrapper background (default: #f8f9fa)

### 3. Wrapper Padding Settings
- **Top Padding**: 0-100px range
- **Bottom Padding**: 0-100px range  
- **Left Padding**: 0-100px range
- **Right Padding**: 0-100px range

## Implementation Details

### HTML Structure
```liquid
<div class="filters-sorting-wrapper
  {%- if block_settings.wrapper_width == 'full-width' %} filters-sorting-wrapper--full-width{% endif %}
  {%- if block_settings.enable_wrapper_background %} filters-sorting-wrapper--with-background{% endif %}
">
  <!-- Filtering and sorting content -->
</div>
```

### CSS Classes
- `.filters-sorting-wrapper`: Base wrapper class
- `.filters-sorting-wrapper--full-width`: Full width modifier
- `.filters-sorting-wrapper--with-background`: Background color modifier

### CSS Variables
- `--wrapper-background-color`: Background color value
- `--wrapper-padding`: Padding values (top right bottom left)

## Usage in Shopify Customizer

1. **Navigate to**: Collection page → Filters block
2. **Find**: "Filtering and Sorting Wrapper" section
3. **Configure**:
   - Set wrapper width (Page Width or Full Width)
   - Enable background color if desired
   - Choose background color
   - Adjust padding values as needed

## Files Modified
- `blocks/filters.liquid`: Added wrapper div, CSS styles, and schema settings

## Browser Support
- Full width functionality works on screens 750px and above
- Responsive design maintains page width on mobile devices
- CSS variables provide fallback values for older browsers

## Notes
- The wrapper only appears when filtering, sorting, or grid density controls are enabled
- Full width uses viewport width calculation for proper edge-to-edge display
- Background color and padding are applied via CSS custom properties for dynamic theming
