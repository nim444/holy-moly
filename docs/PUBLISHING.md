# Publishing Holy Moly

How a version gets from this repo to players. The repo is public since 11 Nov 2026 (the steps under "Going public").

## A release

1. Add the new version's section at the top of `CHANGELOG.md` and set `## Version` in `HolyMoly/HolyMoly.toc` to
   the same number.
2. Commit, then tag and push: `git tag v0.4.0 && git push origin main v0.4.0`.
3. The Release workflow (`.github/workflows/release.yml`) checks that the tag matches the TOC, builds
   `HolyMoly-0.4.0.zip` with `tools/package.sh` and publishes it as a GitHub release with that changelog section.
   `tools/package.sh` also builds the same zip locally into `dist/`.
4. Upload the zip to CurseForge (and Wago, if used) by hand, choosing the WoW Forever game version. Automatic
   uploads can come later: they need the CurseForge project ID and an API token stored as GitHub secrets.

## Going public

- **CurseForge project:** every field of the Create Project form, the logo and the description are in
  [curseforge-listing.md](curseforge-listing.md). Set the CurseForge username to nim444 first (Settings on
  curseforge.com; new accounts get a random `user_...` name).
- **Donations:** set the CurseForge project's donation link to PayPal, `https://paypal.me/nim4k`. The same link is
  in the README, `.github/FUNDING.yml` (GitHub's Sponsor button) and `## X-Donate` in the TOC.
- **Screenshots:** in `docs/screenshots/` (dungeon and raid heal buttons, the box with buff check and timers, the
  tooltip after a fight, buff check, the chat report), cropped to the addon with every player name blurred; keep
  doing that for new ones. Still missing: the settings page.
- **What stays in the public repo:**
  - `reference/blizzard/` (a copy of a Blizzard forum thread) is gitignored and was removed from the history before
    going public; only the link stays.
  - `reference/wiki/` is CC BY-SA 4.0 with attribution headers on each file; it can stay.
  - `reference/api/` is generated from Blizzard's API documentation files and `reference/wow-ui-source/` only
    links to the public mirror; both are common in addon repos.
- **License:** MIT (`LICENSE`). Change it before the first public release if another license is wanted.
- **Made public** on GitHub on 11 Nov 2026, after the points above. The beta screenshots with names and the forum copy
  were taken out of the whole history first (git filter-repo).
