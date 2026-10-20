# Publishing Holy Moly

How a version gets from this repo to players. The repo is private until the steps under "Going public" are done.

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
- **Screenshots:** the box, the tooltip after a fight, the timers panel and the settings page.
- **What stays in the public repo:**
  - `reference/blizzard/` is a copy of a Blizzard forum thread; remove it before going public and keep only the
    link.
  - `reference/wiki/` is CC BY-SA 4.0 with attribution headers on each file; it can stay.
  - `reference/api/` is generated from Blizzard's API documentation files and `reference/wow-ui-source/` only
    links to the public mirror; both are common in addon repos.
- **License:** MIT (`LICENSE`). Change it before the first public release if another license is wanted.
- **Make the repo public** on GitHub only after the points above.
