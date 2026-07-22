# Dracula for [SecureCRT](https://www.vandyke.com/products/securecrt/)

> A dark theme for [SecureCRT](https://www.vandyke.com/products/securecrt/).

![Screenshot](./screenshot.png)

Applies the full [Dracula](https://draculatheme.com/) palette to SecureCRT — the terminal **window colors** (background, foreground, bold) *and* the complete **16‑color ANSI palette**, so `ls --color`, `grep`, syntax highlighting, and powerline prompts all render in true Dracula. Includes an optional purple cursor.

## Install

Full step‑by‑step instructions are in [INSTALL.md](./INSTALL.md), and every hex/decimal value is in [PALETTE.md](./PALETTE.md).

**Requirement:** set the session's terminal emulation to **Xterm** with **ANSI Color** enabled (*Session Options → Terminal → Emulation*), or ANSI colors won't display.

> **Heads‑up:** modern SecureCRT (v7+) stores color schemes and ANSI palettes as `Z:` lists inside `Global.ini`. The old `Color Schemes.ini` file is legacy and ignored — creating or editing it does nothing. Use one of the two methods below.

### GUI method (works on every version)

1. **Options → Global Options → Terminal → Appearance.** Under **Color Schemes**, click **New**, name it `Dracula`.
2. Set **Normal** foreground `248, 248, 242` / background `40, 42, 54`, and **Bold** foreground `255, 255, 255` / background `40, 42, 54`. (The picker takes **decimal RGB**, not hex.)
3. Create a **Dracula** ANSI palette and enter colors 0–15 from [PALETTE.md](./PALETTE.md).
4. Apply to a session: **Terminal → Appearance → Color Scheme = Dracula**, **ANSI Color Palette = Dracula**, and set the **Cursor** to `189, 147, 249`.

### Config‑file method (v7+)

> Close SecureCRT first — it rewrites `Global.ini` on exit. Back up the file.

Add the ready‑made ANSI‑palette and color‑scheme lines to the `Z:"ANSI Color Palettes"` and `Z:"Color Schemes"` blocks in `Global.ini` (incrementing each block's count). The exact lines are in [PALETTE.md](./PALETTE.md#raw-config-lines-advanced); placement is in [INSTALL.md](./INSTALL.md#method-b--config-file-securecrt-v7).

## Palette

| Role | Hex |
|------|-----|
| Background | `#282A36` |
| Foreground | `#F8F8F2` |
| Selection | `#44475A` |
| Comment | `#6272A4` |
| Cyan | `#8BE9FD` |
| Green | `#50FA7B` |
| Orange | `#FFB86C` |
| Pink | `#FF79C6` |
| Purple | `#BD93F9` |
| Red | `#FF5555` |
| Yellow | `#F1FA8C` |

Full 16‑color ANSI mapping (hex + decimal) is in [PALETTE.md](./PALETTE.md).

## Show off the colors

Run [`colors.sh`](./colors.sh) in a Dracula session to print all 16 colors, bold variants, a mock prompt, and a 256‑color bar — good for a screenshot:

```
bash colors.sh
```

## Team

This theme is maintained by the following person(s) and a bunch of [awesome contributors](https://github.com/ender84/dracula-SecureCRT/graphs/contributors).

| [![Zach Mitchell](https://github.com/ender84.png?size=100)](https://github.com/ender84) |
| --------------------------------------------------------------------------------------- |
| [Zach Mitchell](https://github.com/ender84)                                             |

## Community

- [Twitter](https://twitter.com/draculatheme) - Best for getting updates about themes and new stuff.
- [GitHub](https://github.com/dracula/dracula-theme/discussions) - Best for asking questions and discussing issues.
- [Discord](https://draculatheme.com/discord-invite) - Best for hanging out with the community.

## License

[MIT License](./LICENSE)
