# Bambu Lab PLA Colors for macOS 🎨

This repository provides a **macOS color palette** for all Bambu Lab PLA filament colors, including the **PLA Wood series**. Use it in your favorite design tools like Xcode, Sketch, or any app that uses the macOS system color picker.

## 📂 What's Included

- `bambu_clr.m` – Objective-C script that generates the `.clr` file.
- `Bambu Lab PLA Colors.clr` – Precompiled macOS color palette.

## 🎯 Color Coverage

Includes:
- Matte  
- Silk  
- Metal  
- CF (Carbon Fiber)  
- Marble  
- Glow  
- Galaxy  
- Wood Series (Black Walnut, Rosewood, Clay Brown, Classic Birch, White Oak, Ochre Yellow)  

## 🚀 How to Use

### Option 1: Use Precompiled `.clr`

1. Download `Bambu Lab PLA Colors.clr`.
2. Move it to your macOS colors folder:

   ```bash
   ~/Library/Colors/
   ```

3. Open any macOS app that uses the color picker (e.g., TextEdit, Pages).
4. Go to the **Color Palettes** tab, select **Bambu Lab PLA Colors**.

---

### Option 2: Build It Yourself

1. Clone this repo:

   ```bash
   git clone https://github.com/yourusername/bambu-lab-pla-colors.git
   cd bambu-lab-pla-colors
   ```

2. Compile and run:

   ```bash
   clang -framework Foundation -framework AppKit -o bambu_clr bambu_clr.m
   ./bambu_clr
   ```

The palette will be generated at:

```bash
~/Library/Colors/Bambu Lab PLA Colors.clr
```

## 📦 Also Available On

- **MakerWorld** (Coming Soon)

## 🛠️ License

MIT License. Free to use and modify.
