# Mythic Weapons - with GGC Weapons Pack Integration

## Overview
This resource combines the base Mythic weapon system with the GGC Weapons Pack (25 additional weapons). All weapon data, models, and configurations are centralized here for easy management.

## Contents

### GGC Weapons Pack (25 Weapons)
- **5 Melee**: Katana, Shiv, Sledgehammer, Karambit, Keyboard
- **1 Less Lethal**: Bean Bag Shotgun
- **9 Handguns**: Glock-17, Glock-18C, Glock-22, Desert Eagle, FN FNX45, M1911, Glock-20, Glock-19 Gen 4, Browning Hi-Power
- **2 SMGs**: Beretta PMX, MAC-10
- **8 Rifles**: Mk47 Mutant, LWRC M6IC, SCAR SC, M4A1 Carbine, AK-47, AK-74, AKS-74, OTs-14 Groza

### File Structure

```
mythic-weapons/
├── client/
│   ├── main.lua           - Melee damage application
│   └── weapon_names.lua   - In-game weapon name displays
├── server/
│   └── server.lua         - Melee weapon damage modifiers
├── shared/
│   └── items.lua          - ALL 25 GGC weapon definitions
├── metas/                 - Weapon data files (XML)
│   └── [25 weapon folders]
├── stream/                - Weapon 3D models & textures
│   └── [25 weapon folders]
├── images/                - Inventory icons (26 images)
│   └── weapon_*.png
└── fxmanifest.lua
```

### Weapon Definitions
Edit `shared/items.lua` to customize:
- Price, weight, durability
- Bullet count (magazine capacity)
- Rarity (1-5, affects inventory color)
- License requirements

### Melee Damage
Edit `server/server.lua` to adjust damage multipliers:
```lua
-- Current damage modifiers:
[`WEAPON_KATANA`] = 0.45,
[`WEAPON_SHIV`] = 0.35,
[`WEAPON_SLEDGEHAMMER`] = 0.4,
[`WEAPON_KARAMBIT`] = 0.4,
[`WEAPON_KEYBOARD`] = 0.3,
```

Lower = More damage, Higher = Less damage

## Dependencies

### Required
- **mythic-base** - Core framework
- **mythic-inventory** - Inventory system (loads weapon definitions from here)

### Load Order
This resource MUST start before mythic-inventory:
```cfg
# server.cfg
ensure mythic-base
ensure mythic-weapons    # <-- Must be before inventory
ensure mythic-inventory
```

## Customization Examples

### Change Weapon Price
```lua
-- In shared/items.lua
{
    name = 'WEAPON_AK47',
    price = 20000,  -- Changed from 16000
    -- ...
}
```

### Change Magazine Capacity
```lua
{
    name = 'WEAPON_GLOCK17',
    bulletCount = 20,  -- Changed from 17
    -- ...
}
```

### Change Weapon Rarity
```lua
{
    name = 'WEAPON_DEAGLE',
    rarity = 5,  -- Changed from 4 (now legendary)
    -- ...
}
```

### Adjust Melee Damage
```lua
-- In server/server.lua
[`WEAPON_KATANA`] = 0.30,  -- More damage (was 0.45)
[`WEAPON_KEYBOARD`] = 0.50,  -- Less damage (was 0.3)
```

## License
- GGC Weapons Pack: See original pack license
- Mythic Framework: See framework license
- This integration: Free to use with attribution
