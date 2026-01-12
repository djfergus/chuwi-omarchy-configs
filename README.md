# Chuwi Omarchy Hyprland Configuration

This repository contains my Hyprland window manager configuration for my Chuwi device, managed through Omarchy.

## Overview

This configuration includes:

- **Main Hyprland configuration** (`hyprland.conf`)
- **Window bindings and keybindings** (`bindings.conf`)
- **Visual appearance settings** (`looknfeel.conf`)
- **Monitor configuration** (`monitors.conf`)
- **Input device settings** (`input.conf`)
- **Tablet mode management scripts**
- **Idle and lock screen settings**

## Features

### Tablet Mode Support
The configuration includes automatic tablet mode detection and orientation management:

- `scripts/tablet-mode-hook.sh` - Main tablet mode monitor
- `scripts/tablet-mode-on.sh` - Enables auto-rotation when entering tablet mode
- `scripts/tablet-mode-off.sh` - Disables auto-rotation and resets orientation when exiting tablet mode

### Omarchy Integration
This configuration uses Omarchy defaults and extends them with custom settings:

```
# Uses Omarchy defaults
source = ~/.local/share/omarchy/default/hypr/*
source = ~/.config/omarchy/current/theme/hyprland.conf

# Custom overrides
source = ~/.config/hypr/monitors.conf
source = ~/.config/hypr/input.conf
source = ~/.config/hypr/bindings.conf
source = ~/.config/hypr/looknfeel.conf
source = ~/.config/hypr/autostart.conf
```

## Usage

1. **Install Hyprland** and required dependencies
2. **Clone this repository** to `~/.config/hypr/`
3. **Make scripts executable:**
   ```bash
   chmod +x scripts/*.sh
   ```
4. **Start Hyprland** or restart your session

## Customization

To customize this configuration:

1. Edit the configuration files in this directory
2. Add your custom keybindings to `bindings.conf`
3. Modify monitor settings in `monitors.conf`
4. Adjust visual appearance in `looknfeel.conf`

## License

This configuration is provided as-is and is licensed under the MIT License.

## Credits

- Hyprland: https://hyprland.org/
- Omarchy
- Tablet mode scripts inspired by various community contributions

## Support

If you have questions or need help with this configuration, please open an issue on this repository.