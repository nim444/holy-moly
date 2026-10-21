# CurseForge listing

What goes into each field of CurseForge's Create Project form (Create > Start a Project, game World of Warcraft,
class Addons). Checked against the form on 20 Oct 2026.

**Status (21 Oct 2026):** project ID 1756266 (author nim4), approved and unlisted, at
https://www.curseforge.com/wow/addons/holy-moly; manage it at https://authors.curseforge.com/#/projects/1756266.
File "Holy Moly 0.4.0" (Alpha, WoW Forever 1.60.1) is approved and waits to be published by hand; it predates the
heal buttons, so release 0.5.0 before publishing. The description below is live (updated 21 Oct). Media: the tooltip
after a fight, buff check, "Heal buttons in a raid", "Heal buttons in a party" and the chat report; images must be
under 2 MB (upload large ones as JPEG). Editing an image's title can fail with a server error (500) and leave a
duplicate behind; there are duplicate copies of sc1.png and heal-buttons-party.png to delete. The create form's
logo upload failed when tried before the name was filled (`/_api/projects/null/upload-avatar`, 400).

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

**The Priest's companion for WoW Forever.** One small box that shows what your healing did, heal buttons for your
party or raid that light up when someone drops low, your HoTs and shields in view, who needs a dispel, and which
buffs need a refresh. Built for Forever's addon rules: it works in combat without the combat log.

## Features

- **Heal buttons:** one button per party or raid member with name and health bar, the missing health in red. Faint
  while they are fine, a red border under 30% health (you set the threshold). Click to heal, also in combat: left
  click Flash Heal (Lesser Heal until you learn it), right click your biggest heal, middle click Renew, Shift + left
  click Power Word: Shield. Every click can be changed in the settings.
- **The box:** your healing, absorbs, dispels and group deaths, a mana bar that glows red when mana runs low, and
  the mana each fight cost, with mana per minute.
- **Hover the box after a fight:** healing per spell with icons and shares, who you healed and how often, and your
  recent fights compared to the one before.
- **HoT, shield and dispel timers:** a panel with debuffs you can dispel (red border) and your Renews, shields and
  other heals over time on each group member, with the game's own countdown.
- **Buff check:** out of combat, one-click buttons for Fortitude, Divine Spirit, Shadow Protection, Inner Fire and
  Fear Ward when someone is missing them or has under 5 minutes left.
- **Reports:** one click yells your totals with a Priest line and names the three people you kept up. Choose yell,
  say or group chat.
- **Drink button:** asks the group to wait while you drink, with your mana percent.
- **Minimap button:** click to show or hide the box, right-click for the settings, drag it around the minimap.

## Commands

- `/holy config` opens the settings (also Options > AddOns > Holy Moly, or right-click the minimap button).
- `/holy show`, `/holy hide`, `/holy reset`.
- `/holy check` shows what each heal-button click casts and, for a minute, prints each cast with its rank.

## Good to know

- Forever only. It does not load on Retail or Classic.
- Forever hides everyone's health from addons, so the heal buttons can't sort or list only the people who are low;
  the game itself lights up each button below the threshold.
- The numbers come from Blizzard's built-in damage meter. During a fight Blizzard hides most details from addons,
  so the tooltip fills in when the fight ends.
- Reports can only be sent out of combat.

## Support

Holy Moly is free. If it keeps your group alive and you want to say thanks: [paypal.me/nim4k](https://paypal.me/nim4k)
```
