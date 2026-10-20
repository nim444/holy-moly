# CurseForge listing

What goes into each field of CurseForge's Create Project form (Create > Start a Project, game World of Warcraft,
class Addons). Checked against the form on 20 Oct 2026.

| Field | Value |
|---|---|
| Project name | Holy Moly |
| Logo | `docs/brand/logo-512.png` (the form needs a PNG of at least 400x400; built by `tools/make_icons.py`) |
| Summary | Healing, shield, dispel and mana tracking for Priests in WoW Forever, with HoT timers, a buff check and fight reports. |
| Main category | Healer |
| Additional categories | Priest, Buffs & Debuffs, Chat & Communication |
| Allow comments | On |
| Unlisted | Off (on only for a private test) |
| Social links | GitHub, once the repo is public |
| License | MIT |
| Donation link (project settings, after creation) | https://paypal.me/nim4k |

Files come after the project exists: upload `HolyMoly-<version>.zip` from the GitHub release (or `tools/package.sh`)
in the Files tab and pick the WoW Forever game version. The project goes live once moderation approves the first
file.

## Description (Markdown)

```markdown
# Holy Moly

**The Priest's companion for WoW Forever.** One small box that shows what your healing did, keeps your HoTs and
shields in view, tells you who needs a dispel and reminds you of missing buffs. Built for Forever's addon rules:
it works in combat without the combat log.

## Features

- **The box:** your healing, absorbs, dispels and group deaths, a mana bar that glows red when mana runs low, and
  the mana each fight cost, with mana per minute.
- **Hover the box after a fight:** healing per spell with icons and shares, who you healed and how often, and your
  recent fights compared to the one before.
- **HoT, shield and dispel timers:** a panel with debuffs you can dispel (red border) and your Renews, shields and
  other heals over time on each group member, with the game's own countdown.
- **Buff check:** out of combat, one-click buttons for Fortitude, Divine Spirit, Shadow Protection, Inner Fire and
  Fear Ward when someone is missing them.
- **Reports:** one click yells your totals with a Priest line and names the three people you kept up. Choose yell,
  say or group chat.
- **Drink button:** asks the group to wait while you drink, with your mana percent.

## Commands

- `/holy config` opens the settings (also Options > AddOns > Holy Moly, or right-click Holy Moly in the minimap's
  addon menu).
- `/holy show`, `/holy hide`, `/holy reset`.

## Good to know

- Forever only. It does not load on Retail or Classic.
- The numbers come from Blizzard's built-in damage meter. During a fight Blizzard hides most details from addons,
  so the tooltip fills in when the fight ends.
- Reports can only be sent out of combat.

## Support

Holy Moly is free. If it keeps your group alive and you want to say thanks: [paypal.me/nim4k](https://paypal.me/nim4k)
```
