# Hero Banner Image Marquee Section

## Overview

This is a new Shopify theme section that creates a hero banner with a vertical image marquee animation. The section is designed to match the design shown in the reference image, featuring:

- Left side: Title, description, and two call-to-action buttons
- Right side: A 2x3 grid of images that continuously scroll vertically in a marquee effect
- Fully customizable through Shopify's theme customizer
- Responsive design for all device sizes
- Accessibility features including reduced motion support

## Files Created

1. **`sections/hero-banner-image-marquee.liquid`** - The main section file
2. **`assets/hero-banner-image-marquee.css`** - Dedicated CSS file for styling
3. **`templates/index-demo.json`** - Demo home page template showing usage
4. **`HERO_BANNER_README.md`** - This documentation file

## Features

### Content Customization
- **Title**: Main heading text (default: "Celebrate Your Unique Beauty")
- **Description**: Rich text description below the title
- **Primary Button**: Main call-to-action button (default: "Shop")
- **Secondary Button**: Secondary call-to-action button (default: "Search")

### Image Management
- **16 Image Slots**: Configured in a 2x8 grid layout
- **Image Groups**: Organized into two logical columns for easier management
  - **Left Column**: Images 1-8 (Group 1)
  - **Right Column**: Images 9-16 (Group 2)
- **Default Placeholders**: Beautiful placeholder images using theme's built-in placeholders when no custom images are uploaded
- **Automatic Marquee**: Images automatically scroll vertically in a continuous loop with alternating directions
  - **Left Column**: Scrolls from top to bottom (downward motion)
  - **Right Column**: Scrolls from bottom to top (upward motion)
- **Seamless Looping**: JavaScript-powered animation ensures perfect seamless transitions with no jumping or glitches
- **Edge-to-Edge Design**: Marquee container extends fully to the top and bottom edges with no padding
- **Responsive Images**: Optimized for different screen sizes
- **Image Ratio**: 8:9 aspect ratio for consistent thumbnail sizing
- **Recommended Size**: 300x338px or larger images with 8:9 ratio for best results

### Layout Controls
- **Section Height**: Set to 55vh for optimal viewing experience
- **Image Gap**: Control spacing between images (8px to 24px)
- **Animation Speed**: Adjust marquee speed (10s to 30s)

### Color Customization
- **Background Color**: Main section background (default: #8B4513 - dark brown)
- **Text Color**: Text and heading colors (default: #FFFFFF - white)
- **Primary Button Color**: Main button background (default: #FF6B9D - pink)
- **Secondary Button Color**: Secondary button background (default: #A0522D - lighter brown)
- **Color Scheme**: Integrates with theme's existing color schemes

## Installation

1. **Upload the section file** to your theme's `sections/` directory
2. **Upload the CSS file** to your theme's `assets/` directory
3. **Update the stylesheets snippet** to include the new CSS file
4. **Add the section** to your desired template through the theme customizer

## Usage in Shopify Admin

### Adding the Section
1. Go to **Online Store > Themes**
2. Click **Customize** on your active theme
3. Navigate to the page where you want to add the section
4. Click **Add section**
5. Select **Hero Banner Image Marquee** from the list

### Configuring Settings

#### Content Tab
- **Title**: Enter your main heading
- **Description**: Add your descriptive text (supports rich text)
- **Primary Button**: Configure text, link, and behavior
- **Secondary Button**: Configure text, link, and behavior

#### Images Tab
- **Image 1-6**: Upload images for each position in the grid
- Images are arranged as:
  - Top Left | Top Right
  - Middle Left | Middle Right  
  - Bottom Left | Bottom Right

#### Layout Tab
- **Section Height**: Adjust overall section height
- **Image Gap**: Control spacing between images
- **Animation Speed**: Set marquee scrolling speed

#### Colors Tab
- **Color Scheme**: Choose from theme's predefined color schemes
- **Background Color**: Set main background color
- **Text Color**: Set text and heading colors
- **Button Colors**: Customize primary and secondary button colors

## Customization Examples

### Beauty/Skincare Theme
- Background: Soft pink (#FFE4E1)
- Primary Button: Vibrant pink (#FF69B4)
- Secondary Button: Light purple (#DDA0DD)

### Professional/Business Theme
- Background: Deep blue (#1E3A8A)
- Primary Button: Bright blue (#3B82F6)
- Secondary Button: Light gray (#9CA3AF)

### Nature/Wellness Theme
- Background: Forest green (#166534)
- Primary Button: Sage green (#84CC16)
- Secondary Button: Earth brown (#A16207)

## Technical Details

### CSS Architecture
- Uses CSS custom properties (variables) for dynamic theming
- BEM methodology for class naming
- Responsive design with mobile-first approach
- CSS Grid for image layout
- CSS animations for marquee effect

### Performance Features
- Optimized image loading with `fetchpriority`
- Reduced motion support for accessibility
- **GSAP-powered smooth animations** for professional-grade performance
- Responsive images with appropriate sizing
- **Seamless looping** with no gaps between images

### Accessibility
- Semantic HTML structure
- Proper heading hierarchy
- Reduced motion support
- High contrast color options
- Screen reader friendly

## Browser Support

- **Modern Browsers**: Full support (Chrome, Firefox, Safari, Edge)
- **CSS Grid**: IE11+ with fallbacks
- **CSS Custom Properties**: IE11+ with fallbacks
- **CSS Animations**: IE10+ with fallbacks

## Troubleshooting

### Images Not Displaying
- Ensure images are uploaded to the correct image picker fields
- Check that image files are valid and not corrupted
- Verify image dimensions are appropriate (recommended: 300x300px minimum)

### Animation Not Working
- Check if user has reduced motion preferences enabled
- Verify CSS file is properly loaded
- Ensure no JavaScript errors in browser console

### Layout Issues
- Check if theme's CSS is conflicting with section styles
- Verify responsive breakpoints are working correctly
- Test on different screen sizes

## Integration with Existing Theme

This section is designed to integrate seamlessly with the existing Shopify theme:

- **Color Schemes**: Uses theme's existing color scheme system
- **Typography**: Inherits theme's font settings and sizing
- **Spacing**: Follows theme's spacing conventions
- **Responsive**: Works with theme's existing responsive framework
- **Performance**: Follows theme's performance optimization patterns

## Future Enhancements

Potential improvements for future versions:

- **Horizontal Marquee Option**: Add horizontal scrolling as an alternative
- **Multiple Animation Patterns**: Different animation styles
- **Image Hover Effects**: Enhanced interactive elements
- **Video Support**: Option to include video content
- **Advanced Layouts**: More grid configuration options

## Support

For questions or issues with this section:

1. Check the troubleshooting section above
2. Verify all files are properly uploaded
3. Test in a development environment first
4. Check browser console for JavaScript errors
5. Ensure theme compatibility

---

**Note**: This section is designed for Shopify themes and requires proper theme structure to function correctly. Always test in a development environment before deploying to production.
