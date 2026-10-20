# Priest addon landscape and feature backlog for WoW: Forever

Researched 20 Oct 2026 (25-minute time box). Forever runs the Midnight addon rules, so the addons that matter are the ones rebuilt for 12.x: they still draw health, shields, incoming heals, range and dispel colours on frames, but they can no longer read or reason about combat data. There is no combat log, and almost every unit, aura, cooldown and damage-meter value turns secret in combat. What stays fully open is your own casting (`UNIT_SPELLCAST_*` on the player), proc glows (`SPELL_ACTIVATION_OVERLAY_GLOW_SHOW`), and everything out of combat, including Blizzard's damage meter with a per-spell breakdown. The Forever Priest kit is talent-tree based (Inner Fire, Divine Spirit, Fear Ward, Prayer of Mending as the 31-point Holy talent, Penance as the 21-point Discipline talent, mana-based Shadowform), so retail-only trackers for Atonement or Insanity probably have nothing to track. The most promising features for Holy Moly are a post-fight per-spell breakdown, a quieter report, mana spent per fight, an out-of-combat buff check, proc alerts and an own-cooldown strip.

## Ground rules used to judge feasibility

These come from the local references (`reference/api/secret-values.md`, `reference/wiki/Secret_Values.wiki`, `reference/wiki/Patch_1.60.1_API_changes_notes.wiki`):

- `COMBAT_LOG_EVENT_UNFILTERED` errors on register (Patch 12.0.0 notes), so there is no overheal, no "who cast what on whom" for other players, and no party-cooldown tracking from the log.
- "Restricted" means combat, encounter, Mythic+ or PvP-match restrictions are in effect. Aura, cooldown and damage-meter APIs return secrets then. Individual spells can be flagged as never secret (`C_Secrets.ShouldSpellAuraBeSecret`, `GetSpellAuraSecrecy`, `GetSpellCooldownSecrecy`), and that flag wins over the restriction.
- Secrets can still be displayed. `StatusBar:SetValue` and `FontString:SetText` take them, `StatusBar:SetTimerDuration` and `Cooldown:SetCooldownFromDurationObject` take Duration objects, `SetAlphaFromBoolean` and `SetVertexColorFromBoolean` take secret booleans, and `C_CurveUtil.CreateColorCurve` maps a secret percentage to a colour.
- Spell-cast events are secret only for units other than the player and pet (`SecretWhenUnitSpellCastRestricted`), so your own casts stay readable.
- `UnitHealthMax` is secret only for non-player-controlled units, so group members' max health is readable.
- `SendChatMessage` with SAY, YELL or EMOTE needs a hardware event (a click) outside instances (Forever Beta 4 notes).
- The 12.1.0 `AuraContainer` / `AuraButton` frames also come to Forever (Blizzard, "An Update On Secrets In WoW: Forever").

## Addons

### Healing Forever (Forever only)

A healer frame addon written for Forever: party and raid frames up to 40 with Blizzard-style textures, built-in click-casting with Shift, Ctrl and Alt modifiers plus the mouse wheel, incoming heals, damage and heal absorbs, low-health and aggro borders, range fade, resurrection status, dispel-type borders (optionally dispellable only), four fixed HoT slots with their own icon and timer, a defensive-cooldown icon, and a group buff check for missing Fortitude, Intellect or Mark of the Wild. For a Priest it covers Renew and Power Word: Shield in the HoT slots and the Fortitude check. Forever status: game version 1.60.1, file 1.4.16, updated 18 Oct 2026. It is the closest existing competitor to anything we build on the frame side. Source: CurseForge "Healing Forever".

### ForeverClick, SimpleClick, RankClick (Forever click-casting)

ForeverClick adds secure click-casting to Blizzard's compact party and raid frames (left, right, middle and buttons 4 and 5 with modifiers, `/fc` panel); changes made in combat wait until combat ends. SimpleClick is its own compact party frame with click-casting, three buff slots, debuffs, dispellable highlight and role icons; it says out-of-range party casts fail instead of falling back on you. RankClick is a click-to-cast-by-rank tool that refuses to run alongside ForeverClick, PartyClick or Clique. All three list Forever (SimpleClick: 1.60.1 and TBC 2.5.6, updated 13 Oct 2026). These show click-casting works on current Forever builds; the reported failure on beta build 69913 could not be confirmed (see below). Sources: CurseForge pages for each (ForeverClick and RankClick only from search snippets).

### Harrek's Advanced Raid Frames (HARF)

The main Midnight answer to "I can't track my HoTs any more". It adds healer buff tracking on top of other frames (the default frames, Grid2, DandersFrames) as icons, coloured squares, progress bars, borders or health-bar recolouring, with import and export of setups and a "Spotlight" group that pulls chosen units into a separate block. Covers every healer spec plus Augmentation Evoker. The page does not say which Priest spells it tracks or how it identifies them; most likely it relies on Blizzard's never-secret healer spell list (unverified). Forever status: lists Forever 1.60.1 next to retail 12.0 to 12.1; updated 26 Sep 2026. Source: CurseForge HARF.

### DandersFrames

The most popular Midnight raid frame replacement (second in CurseForge's Addon Trials vote). Built-in click-casting, automatic raid layouts, two "pinned" frame groups for chosen players (for example tanks), range checking, and an "Aura Designer" with eight indicator types (icon, square, bar, border, health-bar colour, name colour, health-text colour, frame alpha) and curated per-spec healer aura lists; the Aura Designer needs HARF installed. Forever status: retail 12.1.0 (v5.3.1, Aug 2026); no Forever build found. Sources: CurseForge DandersFrames, Icy Veins "Players Have Spoken".

### Cell, VuhDo, Grid2, HealBot Continued

The classic healer frames. Cell announced a stripped-down Midnight version; secondary sources say Cell and VuhDo lost features such as AoE heal prediction and VuhDo's overheal text provider (unverified, guide sites only). Grid2 keeps its indicator model (icon, icons, square, text, bar, multibar); no Midnight-specific notes found. HealBot Continued is maintained for 12.0.7 (26.07.31, July 2026) with click-casting and 50+ skins; one forum user says it heals fine in combat but no longer shows spells on the bars in combat (unverified). Signature UI across this family: a compact grid of health bars, coloured corner squares for HoTs, a centre icon for the worst debuff, and one click per spell. Forever status: no Forever builds found for any of them. Sources: Icy Veins Cell article (403 on fetch, summary from search), WoWInterface HealBot, WoWAce Grid2, nexttier.pro, buyboost.

### BetterRaidFrames, BG Frames, MidnightSimpleUnitFrames (MSUF)

Lighter Midnight options. BetterRaidFrames extends Blizzard's frames with friendly absorb and heal-absorb overlays. BG Frames shows only your own heals and shields (Atonement and Power Word: Shield listed for Priests), dispellable debuffs bordered by type, and healer mana bars; it works with Clique, Clicked and mouseover macros. MSUF has a spell-ID allow and block list and a healer buff tracker. Forever status: retail only (BG Frames 12.1.x, Oct 2026). Sources: CurseForge BetterRaidFrames and BG Frames, WoWInterface MSUF.

### Clique

The reference click-casting addon. Updated for Midnight (v5.0.3, June 2026, 12.0.5 to 12.1.0). Blizzard changes broke unit-frame click handling early on; Clique now requires you to bind "Target unit" and "Show unit menu" explicitly. No Forever build found. Source: CurseForge Clique.

### Decursive

The classic dispel helper: a grid of small squares, click one to dispel. In Midnight (2.8.0, March 2026) it lost debuff timers and specific-debuff detection and relies on what the game reports as dispellable; 2.8.2 (Aug 2026) does not run on 12.1 at all. It shows how little an addon can do beyond the game's own "dispellable" flag. No Forever build found. Source: CurseForge Decursive file pages.

### Discipline trackers: Atonements-Tracker, AtonementAlert, AtonementAssist, Power Word: Toolbox

Atonements-Tracker shows how many Atonements are up and when the first expires; it was patched for "secret number" crashes in 12.x. AtonementAlert is a countdown on your own Atonement that goes white, yellow, then flashing red. AtonementAssist marks Atonement or Renew on Blizzard raid frames. Power Word: Toolbox bundles an Atonement counter with soonest-expiry timer, a Power Infusion helper that watches whispers in combat and highlights the asker's frame, Radiance charge bars, and a "Void Shield deck" that models the proc chance and detects procs by watching the Power Word: Shield action-button icon, because the buff itself is secret. Forever status: retail only (Toolbox 12.1.0, Aug 2026). Atonement does not appear in Blizzard's Forever Priest preview, so these may not apply at all (unverified). Sources: CurseForge pages for each (Atonements-Tracker returned 404 on fetch; summary from search).

### Shadow: rotation helpers, DoT and resource trackers

Hekili ended with the Midnight pre-patch (20 Jan 2026), per its README. MaxDps's Midnight status could not be confirmed. Their Midnight successors wrap Blizzard's own Assisted Combat suggestion (`C_AssistedCombat.GetNextCastSpell`, present in the Forever API): NextGCD, Wow Target, Simple Assisted Combat Icon. Dedicated Shadow DoT timers and Insanity bars found on CurseForge (InsanityBar, ShadowPriestDoTTimer, "ShadowPriest" for TBC Anniversary) are abandoned or for other game versions. Forever Shadow is mana-based (Shadowform halves Shadow spell mana cost; Devouring Plague baseline at level 20; Shadow Weaving now self-only); Vampiric Touch, Shadowfiend and Insanity are not mentioned in the Forever previews (unverified whether they exist). Sources: GitHub Hekili, CurseForge NextGCD and Wow Target, Blizzard and Warcraft Tavern Forever Priest previews, Icy Veins Shadow addons page (403 on fetch).

### WeakAuras and its Midnight replacements

WeakAuras dropped Midnight support (announced Oct 2025) because conditions, actions, multiple triggers and cloning can't work on secret values; it still supports Classic. Replacements are narrower: ArcUI (cooldowns and resources), Cooldown Manager Tweaks and Cooldown Manager Centered (skins for Blizzard's built-in Cooldown Manager, `C_CooldownViewer` in the Forever API), PopAuras (buff, debuff and event cues built around the Cooldown Manager), and standalone ports of single famous auras (for example the M+ timer). For Forever, "Musca Auras" claims to be WeakAuras 5.22.0 ported to client 1.60.1 that keeps the last state when a value turns secret (vendor claim, unverified). Sources: Icy Veins and Warcraft Tavern WeakAuras news, PCGamesHardware replacement round-up, CurseForge PopAuras and Musca Auras.

### Other names that come up

OmniCD (party cooldowns), Plater (nameplates), DBM or BigWigs and ElvUI are recommended for Forever by a general setup guide, which does not confirm any of them run there. Party-cooldown tracking in OmniCD's old form needs the combat log, so expect a reduced version at best. Source: Gfinity Forever UI guide.

## Feature catalogue

| Feature | Healing or Shadow | Seen in | Feasible in Forever | Why |
|---|---|---|---|---|
| Group health bars | Healing | All frame addons | Yes | `UnitHealth`: SecretReturns, but `StatusBar:SetValue` accepts it; `UnitHealthMax` is readable for player-controlled units |
| Health colour by percent, low-health border | Healing | Healing Forever, Cell, VuhDo | Partly | `UnitHealthPercent` + `C_CurveUtil.CreateColorCurve` colours the bar; can't branch on "below 30%" to sort, sound or announce |
| Incoming heal prediction | Healing | All frame addons | Partly | `UnitGetIncomingHeals`: SecretReturns; `UnitHealPredictionCalculator` draws it, can't compare or compute overheal |
| Damage absorb overlay (PW:S, Divine Aegis) | Healing | BetterRaidFrames, Healing Forever | Partly | `UnitGetTotalAbsorbs`: SecretReturns, shows in a bar; can't tell whose shield it is |
| Heal absorb overlay | Healing | BetterRaidFrames, Healing Forever | Yes | `UnitGetTotalHealAbsorbs`: SecretReturns, display-only is all it needs |
| Range fade | Healing | All frame addons | Yes | `UnitInRange`: SecretReturns boolean, fed to `SetAlphaFromBoolean` |
| Aggro border | Healing | Healing Forever, Grid2 | Partly | `UnitThreatSituation`: secret depends on token pair; single-unit queries are "generally not secret" |
| Dispellable debuff highlight | Healing | Decursive, SimpleClick, Healing Forever | Partly | `C_UnitAuras.GetAuraDispelTypeColor` (SecretWhenUnitAuraRestricted, curve) and `IsAuraFilteredOutByInstanceID` with a dispellable filter; no specific-debuff logic (Decursive lost it) |
| Own HoT and shield indicators (Renew, PW:S, PoM) | Healing | HARF, Healing Forever, BG Frames | Partly | `C_UnitAuras.GetAuraDuration` returns a Duration object for `SetTimerDuration`; identity is secret in combat unless the spell is flagged never-secret (`C_Secrets.ShouldSpellAuraBeSecret`) |
| Weakened Soul timer | Healing | Classic-era trackers | Partly | Same aura rules; alternative: own-cast timer from `UNIT_SPELLCAST_SUCCEEDED` plus known duration (talents like Renewed Hope shorten it, so it can drift) |
| Renew from several Priests on one target | Healing | (new in Forever) | Partly | `GetAuraCasterGUID` is SecretWhenUnitAuraRestricted, so "mine vs theirs" only out of combat or via own-cast timers |
| Click-casting | Healing | Clique, ForeverClick, SimpleClick, Healing Forever, Blizzard built-in | Partly | `SecureActionButtonTemplate` still works in Forever addons released Oct 2026; build-69913 failure report unconfirmed; bindings can't change in combat |
| Healing and absorb totals | Healing | Holy Moly, Blizzard meter | Yes | `C_DamageMeter.GetCombatSessionFromType`: SecretWhenInCombat, shown live via `SetText`, readable after combat |
| Per-spell healing breakdown | Healing | Blizzard meter, Details (retail) | Yes | `DamageMeterCombatSpell` gives spellID, totalAmount, amountPerSecond; readable out of combat |
| Overheal stats | Healing | VuhDo overheal text, Details, Recount | No | No combat log; `DamageMeterType` has no overheal type |
| Dispels and deaths per fight | Healing | Blizzard meter | Yes | `DamageMeterType` Dispels and Deaths, out of combat |
| Who you healed, cast counts | Healing | Holy Moly | Yes | `UNIT_SPELLCAST_SENT` / `SUCCEEDED` are secret only for non-player units |
| Mana bar | Both | BG Frames, Personal Resource Display | Yes | `UnitPower`: SecretWhenUnitPowerRestricted; bar works either way; check `C_Secrets.GetPowerTypeSecrecy` for mana |
| Mana per minute, time to OOM | Both | Old healer meters | Partly | Live math needs non-secret `UnitPower`; `GetManaRegen`: SecretWhenUnitStatsRestricted; mana spent per fight works from before/after readings |
| Other healers' mana | Healing | BG Frames, VuhDo | Partly | Bars yes; "lowest mana healer" sorting no |
| Own cooldowns (PoM, Penance, Fear Ward, Vampiric Embrace) | Both | Cooldown Manager skins, ArcUI | Yes | `C_Spell.GetSpellCooldown`: SecretWhenCooldownsRestricted, but `SetCooldownFromDurationObject` displays it; Blizzard `C_CooldownViewer` exists |
| Party cooldowns (OmniCD style) | Healing | OmniCD | No | Other units' casts are secret and there is no combat log |
| Proc alerts | Both | WeakAuras packs, PopAuras | Yes | `SPELL_ACTIVATION_OVERLAY_GLOW_SHOW` and `C_SpellActivationOverlay.IsSpellOverlayed` are not in the secret list |
| Power Infusion or help request highlight | Healing | Power Word: Toolbox | Partly | `CHAT_MSG_WHISPER`: SecretInChatMessagingLockdown; PI's presence in Forever unverified |
| Out-of-combat buff check (Fortitude, Divine Spirit, Shadow Protection, Inner Fire, Fear Ward) | Both | Healing Forever, SimpleClick | Yes | Auras are only restricted in combat, encounter, M+ or PvP |
| Target DoT timers (SW:P, Devouring Plague, VT if present) | Shadow | WeakAuras packs, ShadowPriestDoTTimer | Partly | Target aura durations come as Duration objects for a bar; pandemic or "refresh now" logic needs comparisons |
| Multi-target DoT tracker | Shadow | WeakAuras, Plater mods | No | Needs combat log or comparing secret nameplate auras |
| Shadow Weaving stacks | Shadow | WeakAuras packs | Partly | `GetAuraApplicationDisplayCount` is secret in combat but can be shown as text |
| Rotation helper | Shadow | Hekili (dead), MaxDps, NextGCD | Partly | Only Blizzard's `C_AssistedCombat.GetNextCastSpell`; no custom priority logic |
| Insanity bar | Shadow | InsanityBar | No | Forever Shadow is mana-based (Insanity not in the previews, unverified) |
| Threat warning, Fade reminder | Both | Omen-style meters | Partly | `UnitDetailedThreatSituation(player, target)` is "generally not secret" for player vs non-boss target; boss pairs may be secret |
| Chat report of fight totals | Healing | Holy Moly, Details | Yes | Data readable after combat; SAY or YELL needs a click outside instances; party or raid chat is not hardware-gated in the Forever notes (inside encounters unverified) |

## UI patterns

- One compact grid of health bars sorted by group, class-coloured, with a name in the middle and the deficit or percent beside it; healers rarely read exact numbers.
- Corner slots for your own HoTs and shields (top-left, top-right, etc.) as small coloured squares or icons with a shrinking timer, fixed per spell so position means identity.
- Dispellable debuffs as a coloured border by school (magic blue, disease brown, curse purple, poison green), with one big centre icon for the most important debuff.
- Incoming heals as a lighter extension past the health fill, absorbs as a striped or glowing overlay, heal absorbs as a dark bar eating the fill from the right.
- Out-of-range members fade to roughly 30-50% alpha; dead and offline members grey out.
- Aggro shown as a red border or a corner triangle, not a colour change of the whole bar.
- Click-casting: plain clicks for the main heals, Shift or Ctrl for shields and dispels, middle or wheel for emergency spells; targeting and the unit menu must stay bound (Clique lesson).
- Pinned or "spotlight" groups pull tanks or chosen players into a separate block (DandersFrames, HARF).
- Post-fight reports stay non-spammy by: printing to yourself by default, posting to group chat only on request or on a boss kill / key end, one line per report, a top-N list instead of everyone, and a cooldown so repeated clicks don't flood chat.
- Midnight-era "it still works" pattern: when a value is secret, keep the last known state and show it greyed, instead of hiding the widget (Musca Auras, Decursive falling back to stack counts).

## Ideas for Holy Moly

Ranked by value against effort.

1. Per-spell healing breakdown after each fight in the box (Renew, Flash Heal, PoM, PW:S absorbs) from `DamageMeterCombatSpell`. High value, low effort.
2. Quiet report modes: print to self by default, one-line party post on boss kill or key end, top 3 spells, 30-second cooldown on the button. High value, low effort.
3. Add dispels and deaths to the report from `DamageMeterType` Dispels and Deaths. Medium value, low effort.
4. Mana bar plus "mana spent this fight" and a post-fight mana-per-minute figure from start and end readings. Medium value, low effort.
5. Out-of-combat buff check for Fortitude, Divine Spirit, Shadow Protection, Inner Fire and Fear Ward with one-click secure buttons to fix them. High value, medium effort.
6. Proc and cooldown strip: proc glow icons from `SPELL_ACTIVATION_OVERLAY_GLOW_SHOW` and cooldown swipes for PoM, Penance, Fear Ward and Vampiric Embrace via `SetCooldownFromDurationObject`. Medium value, medium effort.
7. Own-cast timers: a small list of active Renew, PW:S and Weakened Soul by target name from your own `UNIT_SPELLCAST_SUCCEEDED`, marked approximate. Medium value, medium effort.
8. Shadow mode: SW:P and Devouring Plague timer bars on the target from `GetAuraDuration` plus a mana bar. Medium value, medium effort.
9. Session history: keep the last 10 fights' totals in SavedVariables with a compare-to-last line. Low-medium value, low effort.
10. Own compact frames with click-casting: skip for now, Healing Forever and ForeverClick already cover it and secure-handler behaviour on Forever is not settled.

## Could not verify

- The click-casting / secure snippet failure on beta build 69913: no source found; Forever click-casting addons released 13-18 Oct 2026 claim to work.
- Whether Atonement, Insanity, Vampiric Touch, Shadowfiend, Power Infusion and Guardian Spirit exist in Forever; the Blizzard and Warcraft Tavern Priest previews don't mention them.
- Which Priest auras Blizzard flags as never-secret; the 12.0.1 notes say healer spells would be flagged by hotfix, but no list was found. Check in game with `C_Secrets.GetSpellAuraSecrecy`.
- Whether mana is a never-secret power type in Forever; check `C_Secrets.GetPowerTypeSecrecy`.
- Cell's and VuhDo's exact Midnight feature losses (guide sites only; the Icy Veins article returned 403), MaxDps's Midnight status, and Musca Auras' claims.
- Whether `SendChatMessage` to party or raid from a button works inside an active encounter on Forever.

## Sources

- https://www.curseforge.com/wow/addons/forever-healing
- https://www.curseforge.com/wow/addons/healingforever
- https://www.curseforge.com/wow/addons/foreverclick
- https://www.curseforge.com/wow/addons/simpleclick
- https://www.curseforge.com/wow/addons/rankclick
- https://www.curseforge.com/wow/addons/harreks-advanced-raid-frames
- https://www.curseforge.com/wow/addons/danders-frames
- https://www.curseforge.com/wow/addons/better-raid-frames
- https://www.curseforge.com/wow/addons/bg-frames
- https://www.wowinterface.com/downloads/info26990-MidnightSimpleUnitFrames.html
- https://www.curseforge.com/wow/addons/clique
- https://www.curseforge.com/wow/addons/decursive/files/8701361
- https://www.curseforge.com/wow/addons/atonements-tracker
- https://www.curseforge.com/wow/addons/atonementalert
- https://www.curseforge.com/wow/addons/atonementassist
- https://www.curseforge.com/wow/addons/power-word-toolbox
- https://www.wowinterface.com/downloads/info6096-HealBotContinued.html
- https://www.wowace.com/projects/grid2
- https://www.icy-veins.com/wow/news/cell-confirms-a-stripped-down-version-for-midnight/
- https://www.icy-veins.com/wow/news/players-have-spoken-these-are-the-best-wow-midnight-addons-on-curseforge/
- https://www.icy-veins.com/wow/news/essential-addons-you-should-still-use-in-wow-midnight/
- https://www.icy-veins.com/wow/news/weakauras-to-end-support-in-midnight/
- https://icy-veins.com/wow/shadow-priest-pve-dps-macros-addons
- https://www.warcrafttavern.com/wow/news/there-will-be-no-weakauras-addon-for-world-of-warcraft-midnight/
- https://www.pcgameshardware.de/World-of-Warcraft-Spiel-42971/Specials/Der-Pre-Patch-ist-da-und-euer-Interface-kaputt-Diese-Addons-ersetzen-WeakAuras-und-Co-1491581/
- https://www.curseforge.com/wow/addons/popauras/files/8178417
- https://www.curseforge.com/wow/addons/musca-auras
- https://github.com/Hekili/hekili
- https://www.curseforge.com/wow/addons/nextgcd
- https://www.curseforge.com/wow/addons/wow-target
- https://www.curseforge.com/wow/addons/insanitybar
- https://wowinterface.com/downloads/info20916-ShadowPriestDoTTimer.html
- https://worldofwarcraft.blizzard.com/news/24301514
- https://www.warcrafttavern.com/forever/news/rage-will-benefit-from-crit-priest-warrior-deep-dive-for-wow-forever/
- https://www.gfinityesports.com/article/world-of-warcraft-forever-ui-addons-setup-guide
- https://gamewave.fr/world-of-warcraft/wow-une-amelioration-majeure-va-donner-plus-de-libertes-aux-healers-pour-leur-interface/
- https://us.forums.blizzard.com/en/wow/t/feedback-combat-approachability/2175516/99
- https://us.forums.blizzard.com/en/wow/t/can-no-longer-click-raid-frames-while-holding-down-modifiers/2317097
- https://eu.forums.blizzard.com/de/wow/t/healbot-co/323423
- https://nexttier.pro/guide/best-wow-midnight-addons
- https://buyboost.com/news/wow/essential-wow-midnight-addons
- https://warcraft.wiki.gg/wiki/Patch_1.60.1/API_changes/notes (local copy: `reference/wiki/Patch_1.60.1_API_changes_notes.wiki`)
- https://warcraft.wiki.gg/wiki/Secret_Values (local copy: `reference/wiki/Secret_Values.wiki`)
- Local: `reference/api/secret-values.md`, `reference/api/events.md`, `reference/api/systems/{DamageMeter,DamageMeterConstants,UnitAuras,SecretUtil,SpellActivationOverlay,Spell,AssistedCombat,CooldownViewer}.md`, `reference/wiki/Patch_12.0.0_API_changes.wiki`, `reference/wiki/Patch_12.0.1_API_changes.wiki`
