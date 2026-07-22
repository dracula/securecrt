# Dracula Palette Reference

SecureCRT's color picker uses the Windows color dialog, which only accepts **decimal RGB (0–255)** under *Define Custom Colors* — there is no hex field. Both hex and decimal are given below.

## Window colors (color scheme)

| Attribute | Hex | R | G | B |
|-----------|-----|---|---|---|
| Normal foreground | `#F8F8F2` | 248 | 248 | 242 |
| Bold foreground | `#FFFFFF` | 255 | 255 | 255 |
| Background (all) | `#282A36` | 40 | 42 | 54 |
| Cursor | `#BD93F9` | 189 | 147 | 249 |

Bold uses pure white per the Dracula convention. Set bold to `#F8F8F2` (248/248/242) instead if you prefer bold to match normal text.

## ANSI 16-color palette

| # | Name | Hex | R | G | B |
|---|------|-----|---|---|---|
| 0 | Black | `#21222C` | 33 | 34 | 44 |
| 1 | Red | `#FF5555` | 255 | 85 | 85 |
| 2 | Green | `#50FA7B` | 80 | 250 | 123 |
| 3 | Yellow | `#F1FA8C` | 241 | 250 | 140 |
| 4 | Blue | `#BD93F9` | 189 | 147 | 249 |
| 5 | Magenta | `#FF79C6` | 255 | 121 | 198 |
| 6 | Cyan | `#8BE9FD` | 139 | 233 | 253 |
| 7 | White | `#F8F8F2` | 248 | 248 | 242 |
| 8 | Bright Black | `#6272A4` | 98 | 114 | 164 |
| 9 | Bright Red | `#FF6E6E` | 255 | 110 | 110 |
| 10 | Bright Green | `#69FF94` | 105 | 255 | 148 |
| 11 | Bright Yellow | `#FFFFA5` | 255 | 255 | 165 |
| 12 | Bright Blue | `#D6ACFF` | 214 | 172 | 255 |
| 13 | Bright Magenta | `#FF92DF` | 255 | 146 | 223 |
| 14 | Bright Cyan | `#A4FFFF` | 164 | 255 | 255 |
| 15 | Bright White | `#FFFFFF` | 255 | 255 | 255 |

## Raw config lines (advanced)

Modern SecureCRT (v7+) stores color schemes and ANSI palettes as `Z:` lists **inside `Global.ini`**, not in `Color Schemes.ini` (that file is legacy and ignored by current builds). If you edit `Global.ini` directly (SecureCRT closed), these are the exact lines — see [INSTALL.md](./INSTALL.md) for placement and the required count bumps.

ANSI palette entry — add under `Z:"ANSI Color Palettes"` (each value is `RRGGBB00`):

```
 Dracula,21222C00,FF555500,50FA7B00,F1FA8C00,BD93F900,FF79C600,8BE9FD00,F8F8F200,6272A400,FF6E6E00,69FF9400,FFFFA500,D6ACFF00,FF92DF00,A4FFFF00,FFFFFF00
```

Color scheme entry — add under `Z:"Color Schemes"` (`010101` flags, 8 foreground + 8 background `RRGGBB00` values, then the ANSI palette name):

```
 Dracula,010101,F8F8F200,FFFFFF00,F8F8F200,FFFFFF00,F8F8F200,FFFFFF00,F8F8F200,FFFFFF00,282A3600,282A3600,282A3600,282A3600,282A3600,282A3600,282A3600,282A3600,Dracula
```
