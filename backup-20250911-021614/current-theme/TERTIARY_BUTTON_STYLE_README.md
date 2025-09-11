# Tertiary Button Style - Shopify Customizer

## 📅 **Date:** December 20, 2024
## 🎯 **Purpose:** Added new "Tertiary" button style to Shopify customizer with full customization options

---

## ✅ **NEW TERTIARY BUTTON STYLE ADDED**

### **🎨 Available Customizations:**

#### **🎨 Colors:**
- **Background Color:** Default light gray (#f8f9fa)
- **Text Color:** Default gray (#6c757d)
- **Border Color:** Default light border (#dee2e6)
- **Hover Background:** Default darker gray (#e9ecef)
- **Hover Text:** Default darker text (#495057)
- **Hover Border:** Default darker border (#adb5bd)

#### **🔲 Border Settings:**
- **Border Width:** 0-4px (default: 1px)
- **Border Radius:** 0-100px (default: 8px)

#### **✍️ Typography:**
- **Font Family:** Body font or Heading font
- **Font Weight:** Light (300) to Extra Bold (800) (default: Medium 500)
- **Text Case:** None, Uppercase, Lowercase, Capitalize (default: None)

#### **📏 Spacing:**
- **Padding Top:** 8-32px (default: 12px)
- **Padding Bottom:** 8-32px (default: 12px)
- **Padding Left:** 16-48px (default: 24px)
- **Padding Right:** 16-48px (default: 24px)
- **Margin Top:** 0-24px (default: 0px)
- **Margin Bottom:** 0-24px (default: 0px)
- **Margin Left:** 0-24px (default: 0px)
- **Margin Right:** 0-24px (default: 0px)

---

## 🔧 **How to Use Tertiary Button Style:**

### **In Liquid Templates:**
```liquid
<!-- Basic tertiary button -->
<a href="/collections/all" class="button--tertiary">Shop Now</a>

<!-- Tertiary button with additional classes -->
<button class="button button--tertiary">Add to Cart</button>

<!-- Tertiary button in forms -->
<input type="submit" class="button--tertiary" value="Submit">
```

### **In Section Settings:**
When creating buttons in sections, you can now choose:
- Primary Button (existing)
- Secondary Button (existing)
- **Tertiary Button (NEW)**

---

## 📍 **Location in Shopify Customizer:**

1. **Go to:** Shopify Admin → Online Store → Themes → Customize
2. **Navigate to:** Theme Settings → Buttons
3. **Find:** "Tertiary Button" section
4. **Customize:** All color, typography, spacing, and border options

---

## 🎨 **Default Tertiary Button Appearance:**

- **Background:** Light gray (#f8f9fa)
- **Text:** Medium gray (#6c757d)
- **Border:** Light gray border (1px)
- **Border Radius:** 8px (slightly rounded)
- **Padding:** 12px top/bottom, 24px left/right
- **Font:** Body font, Medium weight (500)
- **Hover:** Darker gray background and text

---

## 📱 **Responsive Behavior:**

- **Desktop:** Full padding and spacing as set
- **Tablet (≤768px):** 90% of original padding
- **Mobile (≤480px):** 80% of original padding

---

## 🔄 **CSS Classes Available:**

### **Primary Classes:**
- `.button--tertiary`
- `.button.button--tertiary`
- `a.button--tertiary`
- `button.button--tertiary`
- `input[type="submit"].button--tertiary`
- `input[type="button"].button--tertiary`

### **State Classes:**
- `:hover` - Hover state styling
- `:focus` - Focus state with outline
- `:active` - Active/pressed state
- `:disabled` - Disabled state (60% opacity)

---

## ⚙️ **Technical Implementation:**

### **Files Modified:**
1. **`config/settings_schema.json`** - Added all tertiary button settings
2. **`snippets/tertiary-button-styles.liquid`** - Created CSS for tertiary buttons
3. **`snippets/stylesheets.liquid`** - Included tertiary button styles

### **CSS Variables Used:**
- `--tertiary-button-background`
- `--tertiary-button-text`
- `--tertiary-button-border`
- `--tertiary-button-hover-background`
- `--tertiary-button-hover-text`
- `--tertiary-button-hover-border`
- `--tertiary-button-border-width`
- `--tertiary-button-border-radius`
- `--tertiary-button-font-family`
- `--tertiary-button-font-weight`
- `--tertiary-button-text-case`
- `--tertiary-button-padding-*`
- `--tertiary-button-margin-*`

---

## 🎯 **Use Cases for Tertiary Button:**

1. **Secondary Actions:** Less prominent than primary/secondary buttons
2. **Cancel/Close:** Dismissal actions
3. **Learn More:** Information links
4. **Additional Options:** Extra choices in forms
5. **Subtle CTAs:** Soft call-to-action buttons
6. **Navigation:** Menu items or breadcrumbs

---

## 🔧 **Customization Examples:**

### **Minimal Tertiary Button:**
- Border Width: 0px
- Border Radius: 4px
- Padding: 8px all sides
- Background: Transparent
- Text: Primary color

### **Bold Tertiary Button:**
- Border Width: 2px
- Border Radius: 20px
- Padding: 16px all sides
- Font Weight: Bold (700)
- Text Case: Uppercase

### **Subtle Tertiary Button:**
- Border Width: 1px
- Border Radius: 0px (square)
- Padding: 10px all sides
- Font Weight: Light (300)
- Colors: Very light gray

---

## ✅ **Features Included:**

- ✅ **Full Color Control:** Background, text, border, hover states
- ✅ **Typography Options:** Font family, weight, text case
- ✅ **Spacing Control:** Padding and margin for all sides
- ✅ **Border Customization:** Width and radius
- ✅ **Responsive Design:** Mobile-optimized spacing
- ✅ **Accessibility:** Focus states and proper contrast
- ✅ **Hover Effects:** Smooth transitions
- ✅ **Disabled States:** Proper disabled styling
- ✅ **Multiple Selectors:** Works with various button elements

---

## 🚀 **Ready to Use:**

The Tertiary button style is now fully integrated into your Shopify theme and ready to use in the customizer! You can customize all aspects of the button appearance and use the `.button--tertiary` class in your templates.

---

**🎉 Your theme now has three complete button styles: Primary, Secondary, and Tertiary!**
