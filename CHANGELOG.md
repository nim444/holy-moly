# Changelog

One section per release, newest first. The release workflow uses the section whose heading matches the tag.

## Unreleased

- Heal buttons: a grid with a button for each party or raid member, the missing health in red, faint while they
  are fine and with a red border under 30% health (set in the options). Left click casts Flash Heal on them, right click a bigger heal,
  middle click Renew,
  Shift + left click Power Word: Shield, also in combat. Drag the grid by its title.
- What each click on a heal button casts can be changed in the settings (any Priest heal you know, the biggest
  heal, or targeting). Until Flash Heal is learned (level 20) it casts Lesser Heal; any other spell not learned yet casts the
  biggest heal.
- `/holy check`: prints what each heal-button click is set to and, for a minute, the spell and rank each click
  really casts.
- Minimap button with the Holy Moly logo: a click shows or hides the box, a right-click opens the settings; drag it
  around the minimap. It can be turned off in the settings.
- The settings page is grouped into sections: box, reports, heal buttons, timers and buffs, mana.
- Buff check: the button also shows when a buff has under 5 minutes left, so you can rebuff before it drops; the
  tooltip lists who is running out and how long they have.

## 0.4.0

- Settings page in Options > AddOns > Holy Moly (also `/holy config`, or right-click Holy Moly in the minimap's
  addon menu): lock and size the box, where the speaker button reports (yell, say or group chat), the "kept up"
  line, and on/off switches for timers, dispels, buff check, low-mana warning and fight history.
- Dispel alerts: debuffs you can remove show first in the timers panel, with a red border.
- Low-mana warning: the mana bar glows red below a threshold (20% by default), also in combat.
- Overheal per spell in the box's tooltip, when Blizzard's meter reports it.
- Recent fights in the tooltip: the last five fights with healing, shields and length, and how the last one
  compares to the one before.
- The trash button asks before resetting.

## 0.3.0

- Renamed to Holy Moly, with its own logo in the AddOn List.
- HoT and shield timers: your Renews, shields, other HoTs and Weakened Soul on each group member, with the
  game's own cooldown sweep.
- Healing per spell, with icons and shares, in the box's tooltip.
- New look: Blizzard's dark dialog background with the gold border, the Priest icon and a gold title.

## 0.2.0

- Dispels and group deaths in the box.
- Mana bar, mana used per fight and mana per minute, and a drink button that asks the group to wait.
- Buff check: out-of-combat buttons for missing Priest buffs.
- The speaker button yells one of several Priest lines and names the three others you kept up.

## 0.1.0

- First version: healing and absorb totals from Blizzard's damage meter, who you healed, and a button to
  announce your totals.
