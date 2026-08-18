# O'Brien's GAMMA Overhaul — Detailed Change Review

**Compared:** `Obriens GAMMA Overhaul(7)` (current release) → `Obriens GAMMA Overhaul(6)` (latest working build).

## Critical packaging finding

The broad helmet and armor rebalance exists in `(6)`, but the newest copies are misplaced directly under `01 Combat Overhaul/gamedata/` instead of `01 Combat Overhaul/gamedata/configs/`. The copies under `configs/` are older/stale. The helmet and armor comparisons below therefore use the newer root-level copies as the intended latest balance.

As packaged, those two newest `.ltx` files are at risk of not being loaded by the game.

## Installer / folder-order changes

- Added `05 Helmet Upgrade Rework`.
- SOTA patch moved from `05` to `06`.
- FuzzRecoil patch moved from `06` to `07`.
- The FOMOD in `(6)` still referenced the old SOTA/Fuzz folder numbers and did not expose the helmet upgrade module.
- Updated FOMOD adds a `GAMMA Helmet Upgrade Rework` checkbox and points SOTA/Fuzz at `06` / `07`.

## Helmet Upgrade Rework

The new modular helmet upgrade package assigns separate trees for cloth/respirator, gas-mask, combat, hybrid, and exo helmets, mirroring the modular armor/weapon upgrade structure.

New files:
- `05 Helmet Upgrade Rework/gamedata/configs/items/outfits/upgrades/up_cloth_resp.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/items/outfits/upgrades/up_combat_helmet.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/items/outfits/upgrades/up_exo_helmet_obrien.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/items/outfits/upgrades/up_gas_masks.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/items/outfits/upgrades/up_hybrid_helmet.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/mod_system_zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz_helmet_upgrade.ltx`
- `05 Helmet Upgrade Rework/gamedata/configs/text/eng/st_upgrade_cloth_resp.xml`
- `05 Helmet Upgrade Rework/gamedata/configs/text/eng/st_upgrade_combat_helmet.xml`
- `05 Helmet Upgrade Rework/gamedata/configs/text/eng/st_upgrade_exo_helmet.xml`
- `05 Helmet Upgrade Rework/gamedata/configs/text/eng/st_upgrade_gas_masks.xml`
- `05 Helmet Upgrade Rework/gamedata/configs/text/eng/st_upgrade_hybrid_helmet.xml`

## Helmet base-stat rebalance

Total helmet protection profiles: **21**. Profiles changed versus release: **14**. Profiles unchanged: **7**.

| Helmet | Burn | Shock | Rad | Chem | Psi | Strike | Explosion | Wound |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| `helm_bandana` | 0.00 (=) | 0.00 (=) | 0.002 (=) | 0.03 (=) | 0.0 (=) | 0.00 (=) | 0.03 (=) | 0.01 (=) |
| `helm_cloth_mask` | 0.00 (=) | 0.00 (=) | 0.005 (=) | 0.03 (=) | 0 (=) | 0.00 (=) | 0.03 (=) | 0.02 (=) |
| `helm_rp_bala` | 0.00 (=) | 0.01 (=) | 0.004 (=) | 0.02 (=) | 0 (=) | 0.00 (=) | 0.01 (=) | 0.01 (=) |
| `helm_resp` — respirator, stalker went to home depot | 0.07 (=) | 0.08 (=) | 0.01 (=) | 0.07 (=) | 0 (=) | 0.04 (=) | 0.05 (=) | 0.08 (=) |
| `helm_respirator_old` — Refitted PBF Gas Mask Kit - Same as the helm_respirator in name/flavor text. | 0.14 (=) | 0.14 (=) | 0.014 (=) | 0.1 (=) | 0.0 (=) | 0.06 (=) | 0.1 (=) | 0.1 (=) |
| `helm_respirator` — Refitted PBF Gas Mask Kit, decent radiation, poor chemical | 0.13 (=) | 0.13 (=) | 0.016 (=) | 0.1 (=) | 0 (=) | 0.1 (=) | 0.1 (=) | 0.1 (=) |
| `helm_respirator_gp5` — GP-5 Gas Mask, Better Rad then Refit, even worse toxic. | 0.12 (=) | 0.11 (=) | 0.020 (=) | 0.05 (=) | 0.05 (=) | 0.11 (=) | 0.07 (=) | 0.12 (=) |
| `helm_hardhat` — combat 0.5 of medium combat | 0.1 → 0.075 | 0.05 (=) | 0.00 (=) | 0.1 → 0.03 | 0.1 → 0.06 | 0.24 → 0.1585 | 0.3 → 0.18 | 0.25 → 0.144 |
| `helm_hardhat_snag` | 0.1 → 0.075 | 0.05 (=) | 0.00 (=) | 0.1 → 0.03 | 0.1 → 0.06 | 0.24 → 0.1585 | 0.3 → 0.18 | 0.25 → 0.144 |
| `helm_m40` — high rad/chem protection - elemental 0.8 combat 0.75 of m50 - updated | 0.3 → 0.208 | 0.3 → 0.2 | 0.04 → 0.032 | 0.35 → 0.264 | 0.15 → 0.16 | 0.16 → 0.1485 | 0.22 → 0.135 | 0.26 → 0.169 |
| `helm_ppm88` — CBRN Eco hazard, "successor" of gp-5, elemental 0.8 of ranger and combat 0.75 - updated | 0.42 → 0.264 | 0.45 → 0.28 | 0.033 → 0.02 | 0.25 → 0.2 | 0.25 → 0.288 | 0.26 → 0.169 | 0.22 → 0.135 | 0.16 → 0.1485 |
| `helm_protective` — technically marked a medium, but it's the SEVA Suit helm - best elemenetal/rad. combat 0.5 of medium hybrid | 0.45 (=) | 0.55 → 0.45 | 0.065 → 0.06 | 0.55 → 0.5 | 0.2 (=) | 0.16 → 0.135 | 0.16 → 0.108 | 0.16 → 0.119 |
| `helm_ach7` — combat 0.8 of heavy combat, ele 0.5 of ach7ex. No rads cause no mask. - updated | 0.2 → 0.065 | 0.16 → 0.075 | 0.0 (=) | 0.06 → 0.065 | 0.18 → 0.179 | 0.5 → 0.317 | 0.55 → 0.36 | 0.5 → 0.288 |
| `helm_ach7ex` — combat 0.8 of heavy combat, ele stats 0.5 of heavy sci - updated | 0.25 → 0.13 | 0.2 → 0.15 | 0.018 (=) | 0.09 → 0.125 | 0.18 → 0.224 | 0.5 → 0.317 | 0.55 → 0.36 | 0.5 → 0.288 |
| `helm_tactic` — updated 0.8 of heavy version | 0.357 → 0.208 | 0.3825 → 0.2 | 0.034 → 0.028 | 0.2975 → 0.2 | 0.2125 → 0.224 | 0.425 → 0.238 | 0.4675 → 0.27 | 0.425 → 0.216 |
| `helm_m50` — upgrade of m40, high rad/chem protection, combat 0.5 of heavy combat - updated | 0.39 → 0.26 | 0.39 → 0.25 | 0.052 → 0.04 | 0.455 → 0.33 | 0.195 → 0.2 | 0.208 → 0.198 | 0.286 → 0.18 | 0.338 → 0.225 |
| `helm_ranger` — high psi/burn/shock, combat 0.5 of heavy combat - updated | 0.5 → 0.33 | 0.5 → 0.35 | 0.037 → 0.025 | 0.33 → 0.25 | 0.6 → 0.36 | 0.26 → 0.225 | 0.26 → 0.18 | 0.26 → 0.198 |
| `helm_metro` — Apocalypse Helmet - M10 Gas Mask with an Alytn slapped ontop. ele stats near 0.5 heavy sci tele halfway, combat 0.9 of spartan - updated | 0.3 → 0.15 | 0.25 → 0.13 | 0.027 → 0.02 | 0.18 → 0.165 | 0.234 → 0.28 | 0.66 → 0.396 | 0.7 → 0.45 | 0.7 → 0.36 |
| `helm_battle` — Sphere M12 Helmet - combat stats 0.75 metro, lowest between m50/ranger or halfway between - updated | 0.425 → 0.26 | 0.425 → 0.25 | 0.0442 → 0.035 | 0.3825 → 0.25 | 0.3186 → 0.28 | 0.561 → 0.297 | 0.595 → 0.338 | 0.595 → 0.27 |
| `helm_exo` — ExoHelmet - SF10 Gas mask with steel helmet maybe chem/burn/psi - updated | 0.33 → 0.27 | 0.28 → 0.2 | 0.04 → 0.03 | 0.32 (=) | 0.34 → 0.35 | 0.76 → 0.40 | 0.76 → 0.5 | 0.76 → 0.44 |
| `helm_spartan` — Cz-M10 Spartan Helmet maybe shock/burn/rad - updated | 0.4 → 0.31 | 0.32 → 0.33 | 0.05 → 0.04 | 0.4 → 0.2 | 0.37 → 0.2 | 0.84 → 0.54 | 0.82 → 0.42 | 0.84 → 0.48 |

### Changed helmet profiles

- **helm_hardhat:** `burn_protection` 0.1 → 0.075 (-25.0%); `chemical_burn_protection` 0.1 → 0.03 (-70.0%); `telepatic_protection` 0.1 → 0.06 (-40.0%); `strike_protection` 0.24 → 0.1585 (-34.0%); `explosion_protection` 0.3 → 0.18 (-40.0%); `wound_protection` 0.25 → 0.144 (-42.4%).
- **helm_hardhat_snag:** `burn_protection` 0.1 → 0.075 (-25.0%); `chemical_burn_protection` 0.1 → 0.03 (-70.0%); `telepatic_protection` 0.1 → 0.06 (-40.0%); `strike_protection` 0.24 → 0.1585 (-34.0%); `explosion_protection` 0.3 → 0.18 (-40.0%); `wound_protection` 0.25 → 0.144 (-42.4%).
- **helm_m40:** `burn_protection` 0.3 → 0.208 (-30.7%); `shock_protection` 0.3 → 0.2 (-33.3%); `radiation_protection` 0.04 → 0.032 (-20.0%); `chemical_burn_protection` 0.35 → 0.264 (-24.6%); `telepatic_protection` 0.15 → 0.16 (+6.7%); `strike_protection` 0.16 → 0.1485 (-7.2%); `explosion_protection` 0.22 → 0.135 (-38.6%); `wound_protection` 0.26 → 0.169 (-35.0%).
- **helm_ppm88:** `burn_protection` 0.42 → 0.264 (-37.1%); `shock_protection` 0.45 → 0.28 (-37.8%); `radiation_protection` 0.033 → 0.02 (-39.4%); `chemical_burn_protection` 0.25 → 0.2 (-20.0%); `telepatic_protection` 0.25 → 0.288 (+15.2%); `strike_protection` 0.26 → 0.169 (-35.0%); `explosion_protection` 0.22 → 0.135 (-38.6%); `wound_protection` 0.16 → 0.1485 (-7.2%).
- **helm_protective:** `shock_protection` 0.55 → 0.45 (-18.2%); `radiation_protection` 0.065 → 0.06 (-7.7%); `chemical_burn_protection` 0.55 → 0.5 (-9.1%); `strike_protection` 0.16 → 0.135 (-15.6%); `explosion_protection` 0.16 → 0.108 (-32.5%); `wound_protection` 0.16 → 0.119 (-25.6%).
- **helm_ach7:** `burn_protection` 0.2 → 0.065 (-67.5%); `shock_protection` 0.16 → 0.075 (-53.1%); `chemical_burn_protection` 0.06 → 0.065 (+8.3%); `telepatic_protection` 0.18 → 0.179 (-0.6%); `strike_protection` 0.5 → 0.317 (-36.6%); `explosion_protection` 0.55 → 0.36 (-34.5%); `wound_protection` 0.5 → 0.288 (-42.4%).
- **helm_ach7ex:** `burn_protection` 0.25 → 0.13 (-48.0%); `shock_protection` 0.2 → 0.15 (-25.0%); `chemical_burn_protection` 0.09 → 0.125 (+38.9%); `telepatic_protection` 0.18 → 0.224 (+24.4%); `strike_protection` 0.5 → 0.317 (-36.6%); `explosion_protection` 0.55 → 0.36 (-34.5%); `wound_protection` 0.5 → 0.288 (-42.4%).
- **helm_tactic:** `burn_protection` 0.357 → 0.208 (-41.7%); `shock_protection` 0.3825 → 0.2 (-47.7%); `radiation_protection` 0.034 → 0.028 (-17.6%); `chemical_burn_protection` 0.2975 → 0.2 (-32.8%); `telepatic_protection` 0.2125 → 0.224 (+5.4%); `strike_protection` 0.425 → 0.238 (-44.0%); `explosion_protection` 0.4675 → 0.27 (-42.2%); `wound_protection` 0.425 → 0.216 (-49.2%).
- **helm_m50:** `burn_protection` 0.39 → 0.26 (-33.3%); `shock_protection` 0.39 → 0.25 (-35.9%); `radiation_protection` 0.052 → 0.04 (-23.1%); `chemical_burn_protection` 0.455 → 0.33 (-27.5%); `telepatic_protection` 0.195 → 0.2 (+2.6%); `strike_protection` 0.208 → 0.198 (-4.8%); `explosion_protection` 0.286 → 0.18 (-37.1%); `wound_protection` 0.338 → 0.225 (-33.4%).
- **helm_ranger:** `burn_protection` 0.5 → 0.33 (-34.0%); `shock_protection` 0.5 → 0.35 (-30.0%); `radiation_protection` 0.037 → 0.025 (-32.4%); `chemical_burn_protection` 0.33 → 0.25 (-24.2%); `telepatic_protection` 0.6 → 0.36 (-40.0%); `strike_protection` 0.26 → 0.225 (-13.5%); `explosion_protection` 0.26 → 0.18 (-30.8%); `wound_protection` 0.26 → 0.198 (-23.8%).
- **helm_metro:** `burn_protection` 0.3 → 0.15 (-50.0%); `shock_protection` 0.25 → 0.13 (-48.0%); `radiation_protection` 0.027 → 0.02 (-25.9%); `chemical_burn_protection` 0.18 → 0.165 (-8.3%); `telepatic_protection` 0.234 → 0.28 (+19.7%); `strike_protection` 0.66 → 0.396 (-40.0%); `explosion_protection` 0.7 → 0.45 (-35.7%); `wound_protection` 0.7 → 0.36 (-48.6%).
- **helm_battle:** `burn_protection` 0.425 → 0.26 (-38.8%); `shock_protection` 0.425 → 0.25 (-41.2%); `radiation_protection` 0.0442 → 0.035 (-20.8%); `chemical_burn_protection` 0.3825 → 0.25 (-34.6%); `telepatic_protection` 0.3186 → 0.28 (-12.1%); `strike_protection` 0.561 → 0.297 (-47.1%); `explosion_protection` 0.595 → 0.338 (-43.2%); `wound_protection` 0.595 → 0.27 (-54.6%).
- **helm_exo:** `burn_protection` 0.33 → 0.27 (-18.2%); `shock_protection` 0.28 → 0.2 (-28.6%); `radiation_protection` 0.04 → 0.03 (-25.0%); `telepatic_protection` 0.34 → 0.35 (+2.9%); `strike_protection` 0.76 → 0.40 (-47.4%); `explosion_protection` 0.76 → 0.5 (-34.2%); `wound_protection` 0.76 → 0.44 (-42.1%).
- **helm_spartan:** `burn_protection` 0.4 → 0.31 (-22.5%); `shock_protection` 0.32 → 0.33 (+3.1%); `radiation_protection` 0.05 → 0.04 (-20.0%); `chemical_burn_protection` 0.4 → 0.2 (-50.0%); `telepatic_protection` 0.37 → 0.2 (-45.9%); `strike_protection` 0.84 → 0.54 (-35.7%); `explosion_protection` 0.82 → 0.42 (-48.8%); `wound_protection` 0.84 → 0.48 (-42.9%).

### Unchanged helmet profiles

`helm_bandana`, `helm_cloth_mask`, `helm_rp_bala`, `helm_resp`, `helm_respirator_old`, `helm_respirator`, `helm_respirator_gp5`.

## Ammo damage / penetration rebalance

The ammo rebalance changes `k_hit` and/or `k_ap` for 19 ammo sections, changes the design note from HP = 1.3× baseline to HP = 1.2× baseline, corrects several FMJ/AP/HP role labels, and adds updated ammo localization text.

| Ammo | k_hit old → new | Damage Δ | k_ap old → new | AP Δ |
|---|---:|---:|---:|---:|
| `ammo_9x18_fmj` | 0.3 → 0.3 | +0.0% | 0.09 → 0.08 | -11.1% |
| `ammo_9x18_ap` | 0.255 → 0.24 | -5.9% | 0.13 → 0.13 | +0.0% |
| `ammo_9x19_fmj` | 0.36 → 0.34 | -5.6% | 0.11 → 0.1 | -9.1% |
| `ammo_9x19_pbp` | 0.432 → 0.408 | -5.6% | 0.05 → 0.04 | -20.0% |
| `ammo_9x19_ap` | 0.288 → 0.272 | -5.6% | 0.15 → 0.18 | +20.0% |
| `ammo_5.7x28_ss190` | 0.28 → 0.224 | -20.0% | 0.18 → 0.3 | +66.7% |
| `ammo_5.7x28_ss195` | 0.224 → 0.28 | +25.0% | 0.26 → 0.18 | -30.8% |
| `ammo_7.62x25_p` | 0.37 → 0.372 | +0.5% | 0.08 → 0.05 | -37.5% |
| `ammo_7.62x25_ps` | 0.259 → 0.248 | -4.2% | 0.18 → 0.2 | +11.1% |
| `ammo_11.43x23_hydro` | 0.585 → 0.54 | -7.7% | 0.04 → 0.02 | -50.0% |
| `ammo_357_hp_mag` | 0.663 → 0.648 | -2.3% | 0.08 → 0.06 | -25.0% |
| `ammo_20x70_buck` | 0.25 → 0.07 | -72.0% | 0.03 → 0.02 | -33.3% |
| `ammo_23x75_barrikada` | 0.75 → 0.9 | +20.0% | 0.42 → 0.31 | -26.2% |
| `ammo_23x75_shrapnel` | 0.1875 → 0.15 | -20.0% | 0.05 → 0.08 | +60.0% |
| `ammo_7.92x33_ap` | 0.304 → 0.304 | +0.0% | 0.39 → 0.37 | -5.1% |
| `ammo_magnum_300` | 0.56 → 0.65 | +16.1% | 0.6 → 0.65 | +8.3% |
| `ammo_338_federal` | 0.7 → 0.78 | +11.4% | 0.35 → 0.2 | -42.9% |
| `ammo_50_bmg` | 0.8 → 1.0 | +25.0% | 0.75 → 0.6 | -20.0% |
| `ammo_gauss` | 0.9 → 0.75 | -16.7% | 0.8 → 1.0 | +25.0% |

### Ammo highlights

- 9x19 FMJ/PBP damage is reduced; 9x19 AP damage is reduced while AP rises 0.15 → 0.18.
- 5.7x28 SS190 becomes the high-penetration AP load (0.224 / 0.30); SS195 becomes the higher-damage FMJ load (0.28 / 0.18).
- 7.62x25 P is explicitly treated as HP; PS is explicitly treated as AP.
- .45 Hydra-Shok changes 0.585/0.04 → 0.54/0.02.
- 20x70 buck receives the largest raw damage cut: 0.25 → 0.07.
- 23x75 Barrikada changes 0.75/0.42 → 0.90/0.31.
- 23x75 Shrapnel changes 0.1875/0.05 → 0.15/0.08.
- .338 Lapua (`ammo_magnum_300`) changes 0.56/0.60 → 0.65/0.65.
- .338 Federal changes 0.70/0.35 → 0.78/0.20.
- .50 BMG changes 0.80/0.75 → 1.00/0.60.
- Gauss changes 0.90/0.80 → 0.75/1.00, trading raw damage for maximum penetration.

## Armor base-stat rebalance

The intended latest file contains **161 armor profiles**.

### System-wide rules

- EXO / Heavy / Medium: Strike, Explosion, and Wound are uniformly scaled to **80%** of the release LTX values; elemental/radiation/psi values remain unchanged.
- Light armor: Burn/Shock/Chem and nonzero Rad/Psi are generally **150%** of release; Strike/Explosion/Wound are generally **160%** of release.
- `nbc_dolg_outfit` is the one apparent release typo: Strike is `0.96` in the release, while latest is `0.1536`; the surrounding pattern indicates the intended old value was likely `0.096`, because 0.1536 = 1.6 × 0.096.
- `grok_actor_damage_balancer.script` simultaneously changes Wound/Strike/Explosion adjusters from **0.8 → 1.0**. For EXO/Heavy/Medium, the 0.8-scaled LTX values therefore preserve approximately the same effective protection while making the raw configured stat the direct value used by the damage path. Light armor is a real effective buff under the same script normalization.

### Armor groups

| Group | Profiles | Rule |
|---|---:|---|
| EXO Nosorog | 6 | Physical ×0.80; elemental unchanged |
| EXO Exoskeleton | 12 | Physical ×0.80; elemental unchanged |
| Heavy Exolight | 18 | Physical ×0.80; elemental unchanged |
| Heavy Special | 2 | Physical ×0.80; elemental unchanged |
| Heavy Battle SEVA | 3 | Physical ×0.80; elemental unchanged |
| Heavy SKAT-9 | 11 | Physical ×0.80; elemental unchanged |
| Heavy Metro | 8 | Physical ×0.80; elemental unchanged |
| Heavy Proto-Exo | 7 | Physical ×0.80; elemental unchanged |
| Medium Pathfinder | 4 | Physical ×0.80; elemental unchanged |
| Medium Voyager | 1 | Physical ×0.80; elemental unchanged |
| Medium SEVA / Science | 6 | Physical ×0.80; elemental unchanged |
| Medium Combat SEVA | 10 | Physical ×0.80; elemental unchanged |
| Medium-Light Science | 2 | Physical ×0.80; elemental unchanged |
| Medium Berill | 7 | Physical ×0.80; elemental unchanged |
| Medium LCS | 9 | Physical ×0.80; elemental unchanged |
| Medium Hybrid (combat) | 4 | Physical ×0.80; elemental unchanged |
| Medium Hybrid (SEVA) | 7 | Physical ×0.80; elemental unchanged |
| Medium Sunrise | 7 | Physical ×0.80; elemental unchanged |
| Medium Trenchcoat | 4 | Physical ×0.80; elemental unchanged |
| Light NBC | 7 | Elemental ≈×1.50; physical ≈×1.60 |
| Light Hybrid | 6 | Elemental ≈×1.50; physical ≈×1.60 |
| Light Combat | 7 | Elemental ≈×1.50; physical ≈×1.60 |
| Light Novice | 13 | Elemental ≈×1.50; physical ≈×1.60 |

### Full armor release → intended latest comparison

| Armor | Group | Burn | Shock | Rad | Chem | Psi | Strike | Explosion | Wound |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| `army_nosorog_outfit` | EXO Nosorog | 0.38 (=) | 0.25 (=) | 0.017 (=) | 0.35 (=) | 0.13 (=) | 0.6 → 0.48 | 0.65 → 0.52 | 0.55 → 0.44 |
| `dolg_nosorog_outfit` | EXO Nosorog | 0.42 (=) | 0.35 (=) | 0.012 (=) | 0.25 (=) | 0.18 (=) | 0.6 → 0.48 | 0.7 → 0.56 | 0.5 → 0.4 |
| `freedom_nosorog_outfit` | EXO Nosorog | 0.25 (=) | 0.35 (=) | 0.018 (=) | 0.42 (=) | 0.12 (=) | 0.6 → 0.48 | 0.5 → 0.4 | 0.7 → 0.56 |
| `isg_nosorog_outfit` | EXO Nosorog | 0.3 (=) | 0.38 (=) | 0.016 (=) | 0.42 (=) | 0.14 (=) | 0.6 → 0.48 | 0.7 → 0.56 | 0.6 → 0.48 |
| `merc_nosorog_outfit` | EXO Nosorog | 0.35 (=) | 0.42 (=) | 0.015 (=) | 0.3 (=) | 0.15 (=) | 0.61 → 0.488 | 0.65 → 0.52 | 0.59 → 0.472 |
| `monolith_nosorog_outfit` | EXO Nosorog | 0.333 (=) | 0.333 (=) | 0.025 (=) | 0.333 (=) | 0.05 (=) | 0.6 → 0.48 | 0.6 → 0.48 | 0.6 → 0.48 |
| `military_exo_outfit` | EXO Exoskeleton | 0.35 (=) | 0.225 (=) | 0.0135 (=) | 0.32 (=) | 0.1 (=) | 0.54 → 0.432 | 0.585 → 0.468 | 0.495 → 0.396 |
| `exo_outfit` | EXO Exoskeleton | 0.3 (=) | 0.29 (=) | 0.018 (=) | 0.33 (=) | 0.12 (=) | 0.54 → 0.432 | 0.48 → 0.384 | 0.6 → 0.48 |
| `bandit_exo_outfit` | EXO Exoskeleton | 0.31 (=) | 0.29 (=) | 0.012 (=) | 0.27 (=) | 0.1 (=) | 0.51 → 0.408 | 0.42 → 0.336 | 0.58 → 0.464 |
| `cs_exo_outfit` | EXO Exoskeleton | 0.28 (=) | 0.24 (=) | 0.02 (=) | 0.32 (=) | 0.1 (=) | 0.54 → 0.432 | 0.5 → 0.4 | 0.6 → 0.48 |
| `dolg_exo_outfit` | EXO Exoskeleton | 0.378 (=) | 0.315 (=) | 0.012 (=) | 0.207 (=) | 0.16 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `svoboda_exo_outfit` | EXO Exoskeleton | 0.207 (=) | 0.315 (=) | 0.016 (=) | 0.378 (=) | 0.12 (=) | 0.54 → 0.432 | 0.45 → 0.36 | 0.63 → 0.504 |
| `isg_exo_outfit` | EXO Exoskeleton | 0.27 (=) | 0.342 (=) | 0.012 (=) | 0.378 (=) | 0.13 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.54 → 0.432 |
| `merc_exo_outfit` | EXO Exoskeleton | 0.315 (=) | 0.36 (=) | 0.014 (=) | 0.27 (=) | 0.13 (=) | 0.549 → 0.4392 | 0.585 → 0.468 | 0.531 → 0.4248 |
| `monolith_exo_outfit` | EXO Exoskeleton | 0.300 (=) | 0.300 (=) | 0.018 (=) | 0.300 (=) | 0.05 (=) | 0.54 → 0.432 | 0.54 → 0.432 | 0.54 → 0.432 |
| `ecolog_exo_outfit` | EXO Exoskeleton | 0.39 (=) | 0.36 (=) | 0.024 (=) | 0.39 (=) | 0.16 (=) | 0.43 → 0.344 | 0.48 → 0.384 | 0.56 → 0.448 |
| `greh_exo_outfit` | EXO Exoskeleton | 0.25 (=) | 0.21 (=) | 0.005 (=) | 0.3 (=) | 0.04 (=) | 0.47 → 0.376 | 0.55 → 0.44 | 0.44 → 0.352 |
| `renegade_exo_outfit` | EXO Exoskeleton | 0.31 (=) | 0.3 (=) | 0.015 (=) | 0.31 (=) | 0.11 (=) | 0.42 → 0.336 | 0.51 → 0.408 | 0.58 → 0.464 |
| `exolight_outfit` | Heavy Exolight | 0.27 (=) | 0.23 (=) | 0.018 (=) | 0.3 (=) | 0.13 (=) | 0.54 → 0.432 | 0.48 → 0.384 | 0.6 → 0.48 |
| `exo_wood_outfit` | Heavy Exolight | 0.27 (=) | 0.23 (=) | 0.018 (=) | 0.3 (=) | 0.13 (=) | 0.54 → 0.432 | 0.48 → 0.384 | 0.6 → 0.48 |
| `bandit_exolight_outfit` | Heavy Exolight | 0.31 (=) | 0.29 (=) | 0.015 (=) | 0.27 (=) | 0.11 (=) | 0.51 → 0.408 | 0.42 → 0.336 | 0.58 → 0.464 |
| `cs_exolight_outfit` | Heavy Exolight | 0.24 (=) | 0.28 (=) | 0.02 (=) | 0.32 (=) | 0.1 (=) | 0.54 → 0.432 | 0.5 → 0.4 | 0.6 → 0.48 |
| `dolg_exolight_outfit` | Heavy Exolight | 0.378 (=) | 0.315 (=) | 0.012 (=) | 0.207 (=) | 0.16 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `exo_dolg_outfit` | Heavy Exolight | 0.378 (=) | 0.315 (=) | 0.012 (=) | 0.207 (=) | 0.16 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `exo_dolg_red_outfit` | Heavy Exolight | 0.378 (=) | 0.315 (=) | 0.012 (=) | 0.207 (=) | 0.16 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `exo_dolg_urban_outfit` | Heavy Exolight | 0.359 (=) | 0.299 (=) | 0.015 (=) | 0.197 (=) | 0.11 (=) | 0.513 → 0.4104 | 0.599 → 0.4792 | 0.423 → 0.3384 |
| `exo_dolg_wood_outfit` | Heavy Exolight | 0.378 (=) | 0.315 (=) | 0.012 (=) | 0.207 (=) | 0.16 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `exo_merc_grass_outfit` | Heavy Exolight | 0.315 (=) | 0.36 (=) | 0.015 (=) | 0.27 (=) | 0.13 (=) | 0.549 → 0.4392 | 0.585 → 0.468 | 0.531 → 0.4248 |
| `exo_merc_urban_outfit` | Heavy Exolight | 0.299 (=) | 0.342 (=) | 0.013 (=) | 0.257 (=) | 0.15 (=) | 0.522 → 0.4176 | 0.556 → 0.4448 | 0.504 → 0.4032 |
| `exo_merc_wood_outfit` | Heavy Exolight | 0.315 (=) | 0.36 (=) | 0.014 (=) | 0.27 (=) | 0.14 (=) | 0.549 → 0.4392 | 0.585 → 0.468 | 0.531 → 0.4248 |
| `merc_exolight_outfit` | Heavy Exolight | 0.315 (=) | 0.36 (=) | 0.014 (=) | 0.27 (=) | 0.14 (=) | 0.549 → 0.4392 | 0.585 → 0.468 | 0.531 → 0.4248 |
| `isg_exolight_outfit` | Heavy Exolight | 0.27 (=) | 0.342 (=) | 0.012 (=) | 0.378 (=) | 0.13 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.54 → 0.432 |
| `monolith_exolight_outfit` | Heavy Exolight | 0.300 (=) | 0.300 (=) | 0.018 (=) | 0.300 (=) | 0.05 (=) | 0.54 → 0.432 | 0.54 → 0.432 | 0.54 → 0.432 |
| `svoboda_exolight_outfit` | Heavy Exolight | 0.207 (=) | 0.315 (=) | 0.016 (=) | 0.378 (=) | 0.12 (=) | 0.54 → 0.432 | 0.45 → 0.36 | 0.63 → 0.504 |
| `military_exolight_outfit` | Heavy Exolight | 0.35 (=) | 0.225 (=) | 0.0135 (=) | 0.32 (=) | 0.1 (=) | 0.54 → 0.432 | 0.585 → 0.468 | 0.495 → 0.396 |
| `freedom_exo_vineleaf_outfit` | Heavy Exolight | 0.23 (=) | 0.35 (=) | 0.018 (=) | 0.42 (=) | 0.12 (=) | 0.6 → 0.48 | 0.5 → 0.4 | 0.7 → 0.56 |
| `merc_nighthunter_outfit` | Heavy Special | 0.252 (=) | 0.288 (=) | 0.012 (=) | 0.216 (=) | 0.10 (=) | 0.549 → 0.4392 | 0.585 → 0.468 | 0.531 → 0.4248 |
| `dolg_specops_red_outfit` — PS5-B2 Veteran Battlesuit | Heavy Special | 0.302 (=) | 0.252 (=) | 0.009 (=) | 0.166 (=) | 0.13 (=) | 0.54 → 0.432 | 0.63 → 0.504 | 0.45 → 0.36 |
| `merc_ace_outfit` — Merc ACE Science Suit | Heavy Battle SEVA | 0.35 (=) | 0.38 (=) | 0.018 (=) | 0.33 (=) | 0.15 (=) | 0.494 → 0.3952 | 0.527 → 0.4216 | 0.478 → 0.3824 |
| `hybrid_outfit` — Hybrid Armored Suit | Heavy Battle SEVA | 0.315 (=) | 0.284 (=) | 0.0189 (=) | 0.242 (=) | 0.14 (=) | 0.527 → 0.4216 | 0.462 → 0.3696 | 0.395 → 0.316 |
| `merc_scientific_armored_outfit` — Mercenary SEVA Body Armor | Heavy Battle SEVA | 0.38 (=) | 0.42 (=) | 0.02 (=) | 0.33 (=) | 0.2 (=) | 0.45 → 0.36 | 0.491 → 0.3928 | 0.44 → 0.352 |
| `military_proto_exo_outfit` | Heavy SKAT-9 | 0.322 (=) | 0.207 (=) | 0.012 (=) | 0.294 (=) | 0.092 (=) | 0.506 → 0.4048 | 0.585 → 0.468 | 0.466 → 0.3728 |
| `dolg_heavy_proto_exo_outfit` | Heavy SKAT-9 | 0.349 (=) | 0.294 (=) | 0.011 (=) | 0.193 (=) | 0.147 (=) | 0.506 → 0.4048 | 0.587 → 0.4696 | 0.425 → 0.34 |
| `military_outfit` | Heavy SKAT-9 | 0.322 (=) | 0.207 (=) | 0.012 (=) | 0.294 (=) | 0.092 (=) | 0.506 → 0.4048 | 0.585 → 0.468 | 0.466 → 0.3728 |
| `dolg_heavy_outfit` | Heavy SKAT-9 | 0.349 (=) | 0.294 (=) | 0.011 (=) | 0.193 (=) | 0.147 (=) | 0.506 → 0.4048 | 0.587 → 0.4696 | 0.425 → 0.34 |
| `dolg_heavy_redline_outfit` | Heavy SKAT-9 | 0.349 (=) | 0.294 (=) | 0.011 (=) | 0.193 (=) | 0.147 (=) | 0.506 → 0.4048 | 0.587 → 0.4696 | 0.425 → 0.34 |
| `dolg_pantsir_outfit` | Heavy SKAT-9 | 0.349 (=) | 0.294 (=) | 0.011 (=) | 0.193 (=) | 0.147 (=) | 0.506 → 0.4048 | 0.587 → 0.4696 | 0.425 → 0.34 |
| `military_bandit_outfit` | Heavy SKAT-9 | 0.285 (=) | 0.267 (=) | 0.011 (=) | 0.248 (=) | 0.092 (=) | 0.479 → 0.3832 | 0.398 → 0.3184 | 0.542 → 0.4336 |
| `military_freedom_outfit` | Heavy SKAT-9 | 0.193 (=) | 0.294 (=) | 0.0147 (=) | 0.349 (=) | 0.11 (=) | 0.506 → 0.4048 | 0.425 → 0.34 | 0.587 → 0.4696 |
| `military_merc_outfit` | Heavy SKAT-9 | 0.294 (=) | 0.331 (=) | 0.013 (=) | 0.248 (=) | 0.12 (=) | 0.514 → 0.4112 | 0.547 → 0.4376 | 0.49 → 0.392 |
| `military_monolit_outfit` | Heavy SKAT-9 | 0.276 (=) | 0.276 (=) | 0.0167 (=) | 0.276 (=) | 0.01 (=) | 0.506 → 0.4048 | 0.506 → 0.4048 | 0.506 → 0.4048 |
| `military_sky_outfit` | Heavy SKAT-9 | 0.22 (=) | 0.257 (=) | 0.018 (=) | 0.294 (=) | 0.092 (=) | 0.52 → 0.416 | 0.469 → 0.3752 | 0.444 → 0.3552 |
| `cs_heavy_outfit` — CS-3b Body Armor, Clear Sky | Heavy Metro | 0.230 (=) | 0.202 (=) | 0.0126 (=) | 0.266 (=) | 0.066 (=) | 0.46 → 0.368 | 0.41 → 0.328 | 0.5 → 0.4 |
| `light_dolg_outfit` — IBAz Universal Protection Suit, Duty | Heavy Metro | 0.243 (=) | 0.20 (=) | 0.00 (=) | 0.162 (=) | 0.1 (=) | 0.462 → 0.3696 | 0.556 → 0.4448 | 0.424 → 0.3392 |
| `light_freedom_outfit` — Defender of Freedom | Heavy Metro | 0.149 (=) | 0.227 (=) | 0.0120 (=) | 0.272 (=) | 0.000 (=) | 0.462 → 0.3696 | 0.41 → 0.328 | 0.505 → 0.404 |
| `light_isg_outfit` — UNISG IBAz Suit | Heavy Metro | 0.194 (=) | 0.246 (=) | 0.0110 (=) | 0.272 (=) | 0.000 (=) | 0.461 → 0.3688 | 0.539 → 0.4312 | 0.461 → 0.3688 |
| `light_loner_outfit` — Interceptor Body Armor, Stalker | Heavy Metro | 0.227 (=) | 0.216 (=) | 0.0090 (=) | 0.259 (=) | 0.000 (=) | 0.469 → 0.3752 | 0.454 → 0.3632 | 0.501 → 0.4008 |
| `light_merc_outfit` — Mercenary IBAz Suit | Heavy Metro | 0.227 (=) | 0.259 (=) | 0.0090 (=) | 0.194 (=) | 0.000 (=) | 0.469 → 0.3752 | 0.501 → 0.4008 | 0.454 → 0.3632 |
| `light_monolit_outfit` — Monolith IBAz Suit | Heavy Metro | 0.216 (=) | 0.216 (=) | 0.0100 (=) | 0.216 (=) | 0.000 (=) | 0.462 → 0.3696 | 0.462 → 0.3696 | 0.462 → 0.3696 |
| `light_voen_outfit` — Military IBAz Suit | Heavy Metro | 0.243 (=) | 0.162 (=) | 0.0097 (=) | 0.243 (=) | 0.000 (=) | 0.462 → 0.3696 | 0.556 → 0.4448 | 0.424 → 0.3392 |
| `stalker_proto_exo_outfit` — "Sunrise" Exoskeleton | Heavy Proto-Exo | 0.130 (=) | 0.086 (=) | 0.00 (=) | 0.152 (=) | 0.000 (=) | 0.072 → 0.0576 | 0.036 → 0.0288 | 0.135 → 0.108 |
| `cs_stalker_proto_exo_outfit` — CS-2b Exoskeleton | Heavy Proto-Exo | 0.2 (=) | 0.18 (=) | 0.015 (=) | 0.35 (=) | 0 (=) | 0.32 → 0.256 | 0.25 → 0.2 | 0.32 → 0.256 |
| `dolg_proto_exo_outfit` — PS5-M Exoskeleton | Heavy Proto-Exo | 0.28 (=) | 0.28 (=) | 0.011 (=) | 0.2 (=) | 0.145 (=) | 0.28 → 0.224 | 0.29 → 0.232 | 0.27 → 0.216 |
| `ecolog_proto_exo_outfit` — SSP-99M Exoskeleton | Heavy Proto-Exo | 0.38 (=) | 0.35 (=) | 0.03 (=) | 0.36 (=) | 0.15 (=) | 0.18 → 0.144 | 0.15 → 0.12 | 0.19 → 0.152 |
| `isg_proto_exo_outfit` — UNISG Tactical Exoskeleton | Heavy Proto-Exo | 0.27 (=) | 0.29 (=) | 0.014 (=) | 0.3 (=) | 0.13 (=) | 0.29 → 0.232 | 0.3 → 0.24 | 0.29 → 0.232 |
| `monolith_proto_exo_outfit` — X-18 Exoskeleton | Heavy Proto-Exo | 0.270 (=) | 0.297 (=) | 0.012 (=) | 0.270 (=) | 0.000 (=) | 0.338 → 0.2704 | 0.356 → 0.2848 | 0.338 → 0.2704 |
| `svoboda_light_proto_exo_outfit` — Wind of Freedom Exoskeleton | Heavy Proto-Exo | 0.23 (=) | 0.27 (=) | 0.0145 (=) | 0.31 (=) | 0.11 (=) | 0.28 → 0.224 | 0.27 → 0.216 | 0.29 → 0.232 |
| `merc_combat_scientific_outfit` — Merc Pathfinder | Medium Pathfinder | 0.33 (=) | 0.36 (=) | 0.012 (=) | 0.31 (=) | 0.1 (=) | 0.38 → 0.304 | 0.4 → 0.32 | 0.34 → 0.272 |
| `cs_scientific_outfit_good` — CS-4a Pathfinder, Clear Sky | Medium Pathfinder | 0.32 (=) | 0.29 (=) | 0.022 (=) | 0.39 (=) | 0.09 (=) | 0.37 → 0.296 | 0.35 → 0.28 | 0.41 → 0.328 |
| `dolg_scientific_wood_outfit` — PS5-9Md Light Pathfinder | Medium Pathfinder | 0.38 (=) | 0.32 (=) | 0.01 (=) | 0.3 (=) | 0.14 (=) | 0.36 → 0.288 | 0.42 → 0.336 | 0.34 → 0.272 |
| `nomad_outfit` — "Nomad" Stalker Suit | Medium Pathfinder | 0.31 (=) | 0.31 (=) | 0.018 (=) | 0.32 (=) | 0.14 (=) | 0.36 → 0.288 | 0.36 → 0.288 | 0.4 → 0.32 |
| `travel_outfit` — "Voyager" Stalker Suit | Medium Voyager | 0.287 (=) | 0.271 (=) | 0.01 (=) | 0.328 (=) | 0.03 (=) | 0.328 → 0.2624 | 0.287 → 0.2296 | 0.336 → 0.2688 |
| `ecolog_outfit_orange` | Medium SEVA / Science | 0.5 (=) | 0.35 (=) | 0.01 (=) | 0.5 (=) | 0.1 (=) | 0.15 → 0.12 | 0.25 → 0.2 | 0.12 → 0.096 |
| `ecolog_outfit_blue` | Medium SEVA / Science | 0.35 (=) | 0.6 (=) | 0.01 (=) | 0.38 (=) | 0.1 (=) | 0.15 → 0.12 | 0.22 → 0.176 | 0.17 → 0.136 |
| `ecolog_outfit_green` | Medium SEVA / Science | 0.38 (=) | 0.35 (=) | 0.01 (=) | 0.6 (=) | 0.1 (=) | 0.15 → 0.12 | 0.22 → 0.176 | 0.17 → 0.136 |
| `ecolog_outfit_white` | Medium SEVA / Science | 0.45 (=) | 0.45 (=) | 0.01 (=) | 0.45 (=) | 0.2 (=) | 0.16 → 0.128 | 0.18 → 0.144 | 0.2 → 0.16 |
| `ecolog_outfit_yello` | Medium SEVA / Science | 0.38 (=) | 0.35 (=) | 0.03 (=) | 0.36 (=) | 0.15 (=) | 0.19 → 0.152 | 0.18 → 0.144 | 0.15 → 0.12 |
| `ecolog_outfit_red` | Medium SEVA / Science | 0.6 (=) | 0.35 (=) | 0.01 (=) | 0.38 (=) | 0.1 (=) | 0.18 → 0.144 | 0.2 → 0.16 | 0.14 → 0.112 |
| `scientific_outfit` — SEVA Body Suit | Medium Combat SEVA | 0.34 (=) | 0.32 (=) | 0.018 (=) | 0.36 (=) | 0.14 (=) | 0.28 → 0.224 | 0.26 → 0.208 | 0.3 → 0.24 |
| `bandit_scientific_dark_outfit` — Patchwork Anomaly Suit, Bandit | Medium Combat SEVA | 0.31 (=) | 0.37 (=) | 0.015 (=) | 0.26 (=) | 0.13 (=) | 0.25 → 0.2 | 0.29 → 0.232 | 0.26 → 0.208 |
| `bandit_scientific_outfit` — Looted SEVA Suit, Bandit | Medium Combat SEVA | 0.31 (=) | 0.37 (=) | 0.015 (=) | 0.26 (=) | 0.12 (=) | 0.26 → 0.208 | 0.25 → 0.2 | 0.29 → 0.232 |
| `cs_scientific_outfit` — CS-4a SEVA Suit, Clear Sky | Medium Combat SEVA | 0.26 (=) | 0.3 (=) | 0.02 (=) | 0.41 (=) | 0.08 (=) | 0.26 → 0.208 | 0.26 → 0.208 | 0.27 → 0.216 |
| `merc_scientific_outfit` — Merc SEVA Suit | Medium Combat SEVA | 0.32 (=) | 0.36 (=) | 0.016 (=) | 0.3 (=) | 0.13 (=) | 0.28 → 0.224 | 0.27 → 0.216 | 0.26 → 0.208 |
| `monolith_scientific_outfit` — Monolith Science Suit | Medium Combat SEVA | 0.36 (=) | 0.36 (=) | 0.021 (=) | 0.36 (=) | 0.03 (=) | 0.28 → 0.224 | 0.25 → 0.2 | 0.3 → 0.24 |
| `renegade_scientific_outfit` — Renegade Seva Suit | Medium Combat SEVA | 0.38 (=) | 0.22 (=) | 0.0135 (=) | 0.31 (=) | 0.11 (=) | 0.24 → 0.192 | 0.26 → 0.208 | 0.27 → 0.216 |
| `svoboda_scientific_outfit` — Watchman of Freedom, SEVA | Medium Combat SEVA | 0.24 (=) | 0.36 (=) | 0.015 (=) | 0.43 (=) | 0.13 (=) | 0.28 → 0.224 | 0.27 → 0.216 | 0.29 → 0.232 |
| `dolg_scientific_outfit` — PS5-9Md Universal Scientific Suit | Medium Combat SEVA | 0.43 (=) | 0.36 (=) | 0.015 (=) | 0.24 (=) | 0.13 (=) | 0.28 → 0.224 | 0.29 → 0.232 | 0.27 → 0.216 |
| `isg_scientific_outfit` — UNISG SEVA Suit | Medium Combat SEVA | 0.28 (=) | 0.36 (=) | 0.015 (=) | 0.4 (=) | 0.13 (=) | 0.26 → 0.208 | 0.3 → 0.24 | 0.28 → 0.224 |
| `monolith_scientific_light_outfit` — Monolith Patchwork Science Suit | Medium-Light Science | 0.32 (=) | 0.36 (=) | 0.014 (=) | 0.25 (=) | 0.02 (=) | 0.20 → 0.16 | 0.23 → 0.184 | 0.24 → 0.192 |
| `dolg_scientific_red_outfit` — PS5-9Md light Scientific Suit | Medium-Light Science | 0.385 (=) | 0.324 (=) | 0.0135 (=) | 0.21 (=) | 0.108 (=) | 0.22 → 0.176 | 0.23 → 0.184 | 0.18 → 0.144 |
| `wastelander_outfit` — Wastelander Outfit, Stalker - change to stalker Berrill, move Nomad here | Medium Berill | 0.13 (=) | 0.12 (=) | 0.015 (=) | 0.15 (=) | 0.08 (=) | 0.46 → 0.368 | 0.45 → 0.36 | 0.5 → 0.4 |
| `svoboda_heavy_outfit` — Guardian of Freedom | Medium Berill | 0.12 (=) | 0.17 (=) | 0.008 (=) | 0.21 (=) | 0.02 (=) | 0.482 → 0.3856 | 0.457 → 0.3656 | 0.500 → 0.4 |
| `specops_dolg_outfit` — PS5-B Battle Armor, Duty | Medium Berill | 0.21 (=) | 0.17 (=) | 0.002 (=) | 0.12 (=) | 0.08 (=) | 0.482 → 0.3856 | 0.500 → 0.4 | 0.457 → 0.3656 |
| `cs_medium_outfit` — CS-3a Body Armor, Clear Sky | Medium Berill | 0.13 (=) | 0.11 (=) | 0.04 (=) | 0.23 (=) | 0.00 (=) | 0.475 → 0.38 | 0.459 → 0.3672 | 0.483 → 0.3864 |
| `specops_outfit` — Berill-5M Armored Suit, Military | Medium Berill | 0.21 (=) | 0.12 (=) | 0.005 (=) | 0.17 (=) | 0.01 (=) | 0.449 → 0.3592 | 0.500 → 0.4 | 0.439 → 0.3512 |
| `specops_bandit_outfit` — Deserter's B-5M Armored Suit | Medium Berill | 0.11 (=) | 0.2 (=) | 0.003 (=) | 0.1 (=) | 0.01 (=) | 0.42 → 0.336 | 0.41 → 0.328 | 0.442 → 0.3536 |
| `specops_merc_outfit` — Mercenary B-5M Armored Suit | Medium Berill | 0.17 (=) | 0.21 (=) | 0.006 (=) | 0.13 (=) | 0.05 (=) | 0.500 → 0.4 | 0.475 → 0.38 | 0.465 → 0.372 |
| `merc_outfit` — Merc LC Suit | Medium LCS | 0.13 (=) | 0.18 (=) | 0.004 (=) | 0.11 (=) | 0.02 (=) | 0.465 → 0.372 | 0.442 → 0.3536 | 0.432 → 0.3456 |
| `merc_jackal_outfit` — Merc LTS-J Body Suit | Medium LCS | 0.14 (=) | 0.18 (=) | 0.003 (=) | 0.10 (=) | 0.03 (=) | 0.47 → 0.376 | 0.45 → 0.36 | 0.42 → 0.336 |
| `merc_sunset_outfit` — Merc LCz Suit | Medium LCS | 0.15 (=) | 0.17 (=) | 0.0000 (=) | 0.1 (=) | 0.000 (=) | 0.454 → 0.3632 | 0.434 → 0.3472 | 0.434 → 0.3472 |
| `merc_coyote_outfit` — Merc MTS-C Body Suit | Medium LCS | 0.14 (=) | 0.16 (=) | 0.005 (=) | 0.12 (=) | 0.02 (=) | 0.47 → 0.376 | 0.45 → 0.36 | 0.45 → 0.36 |
| `greh_armored_outfit` — Vyriy Flak Armor, Sin | Medium LCS | 0.13 (=) | 0.11 (=) | 0.0000 (=) | 0.14 (=) | 0.000 (=) | 0.42 → 0.336 | 0.44 → 0.352 | 0.41 → 0.328 |
| `greh_armored_camo_outfit` — Irij Flak Armor, Sin | Medium LCS | 0.14 (=) | 0.12 (=) | 0.0000 (=) | 0.16 (=) | 0.000 (=) | 0.45 → 0.36 | 0.46 → 0.368 | 0.43 → 0.344 |
| `isg_lcs_outfit` — ISG LC Suit | Medium LCS | 0.12 (=) | 0.14 (=) | 0.0000 (=) | 0.16 (=) | 0.000 (=) | 0.45 → 0.36 | 0.46 → 0.368 | 0.45 → 0.36 |
| `isg_lcs_urban_outfit` — ISG LC-UC Suit | Medium LCS | 0.11 (=) | 0.14 (=) | 0.0000 (=) | 0.17 (=) | 0.000 (=) | 0.45 → 0.36 | 0.47 → 0.376 | 0.43 → 0.344 |
| `renegademerc_outfit` — Renegade LC Suit | Medium LCS | 0.12 (=) | 0.1 (=) | 0.0000 (=) | 0.15 (=) | 0.000 (=) | 0.37 → 0.296 | 0.39 → 0.312 | 0.41 → 0.328 |
| `svoboda_heavy_outfit_2` — Sentinel of Freedom | Medium Hybrid (combat) | 0.23 (=) | 0.28 (=) | 0.018 (=) | 0.32 (=) | 0.11 (=) | 0.35 → 0.28 | 0.32 → 0.256 | 0.36 → 0.288 |
| `dolg_voin_outfit` — PS6-V Warrior Suit, Duty | Medium Hybrid (combat) | 0.32 (=) | 0.28 (=) | 0.011 (=) | 0.23 (=) | 0.18 (=) | 0.35 → 0.28 | 0.36 → 0.288 | 0.32 → 0.256 |
| `monolith_outfit` — Monolith X-18 Suit | Medium Hybrid (combat) | 0.27 (=) | 0.29 (=) | 0.02 (=) | 0.27 (=) | 0.000 (=) | 0.34 → 0.272 | 0.36 → 0.288 | 0.34 → 0.272 |
| `isg_camo_outfit` — ISG Mk2 Tactical Body Armor | Medium Hybrid (combat) | 0.230 (=) | 0.291 (=) | 0.0119 (=) | 0.321 (=) | 0.119 (=) | 0.372 → 0.2976 | 0.390 → 0.312 | 0.372 → 0.2976 |
| `dolg_outfit` — PS5-M | Medium Hybrid (SEVA) | 0.32 (=) | 0.28 (=) | 0.011 (=) | 0.24 (=) | 0.15 (=) | 0.23 → 0.184 | 0.24 → 0.192 | 0.22 → 0.176 |
| `dolg_red_outfit` — PS5-M Hunter Suit, Duty | Medium Hybrid (SEVA) | 0.3 (=) | 0.23 (=) | 0.01 (=) | 0.19 (=) | 0.11 (=) | 0.20 → 0.16 | 0.22 → 0.176 | 0.19 → 0.152 |
| `greh_ps5_outfit` — Volos Flak Armor, Sin | Medium Hybrid (SEVA) | 0.29 (=) | 0.21 (=) | 0.0145 (=) | 0.27 (=) | 0.12 (=) | 0.29 → 0.232 | 0.31 → 0.248 | 0.29 → 0.232 |
| `bandit_ps5_outfit` — Fenced PS5-M Universal Protection Suit | Medium Hybrid (SEVA) | 0.25 (=) | 0.27 (=) | 0.014 (=) | 0.24 (=) | 0.10 (=) | 0.26 → 0.208 | 0.27 → 0.216 | 0.28 → 0.224 |
| `isg_outfit` — ISG Mk1 Tactical Body Armor | Medium Hybrid (SEVA) | 0.27 (=) | 0.29 (=) | 0.014 (=) | 0.3 (=) | 0.13 (=) | 0.29 → 0.232 | 0.3 → 0.24 | 0.29 → 0.232 |
| `merc_sun_outfit` — "Twilight" Tactical Suit, Merc | Medium Hybrid (SEVA) | 0.26 (=) | 0.28 (=) | 0.014 (=) | 0.26 (=) | 0.12 (=) | 0.31 → 0.248 | 0.29 → 0.232 | 0.29 → 0.232 |
| `svoboda_light_outfit` — Wind of Freedom | Medium Hybrid (SEVA) | 0.23 (=) | 0.27 (=) | 0.0145 (=) | 0.31 (=) | 0.11 (=) | 0.28 → 0.224 | 0.27 → 0.216 | 0.29 → 0.232 |
| `bandit_sun_outfit` — "Sunset" Tactical Suit, Bandit | Medium Sunrise | 0.25 (=) | 0.27 (=) | 0.002 (=) | 0.18 (=) | 0 (=) | 0.3 → 0.24 | 0.29 → 0.232 | 0.31 → 0.248 |
| `stalker_bear_outfit` — "Bear" Stalker Suit (Burn Specialist) | Medium Sunrise | 0.36 (=) | 0.226 (=) | 0.005 (=) | 0.18 (=) | 0 (=) | 0.27 → 0.216 | 0.35 → 0.28 | 0.29 → 0.232 |
| `stalker_drought_outfit` — "Drought" Stalker Suit (Shock Specialist) | Medium Sunrise | 0.226 (=) | 0.36 (=) | 0.004 (=) | 0.18 (=) | 0 (=) | 0.32 → 0.256 | 0.27 → 0.216 | 0.32 → 0.256 |
| `stalker_graphite_outfit` — "Graphite" Stalker Suit (slight rad, explosive buff) | Medium Sunrise | 0.30 (=) | 0.19 (=) | 0.002 (=) | 0.27 (=) | 0.1 (=) | 0.3 → 0.24 | 0.34 → 0.272 | 0.26 → 0.208 |
| `stalker_tigerstripe_outfit` — "Tigerstripe" Stalker Suit (Balanced) | Medium Sunrise | 0.30 (=) | 0.30 (=) | 0.001 (=) | 0.30 (=) | 0 (=) | 0.30 → 0.24 | 0.30 → 0.24 | 0.30 → 0.24 |
| `cs_stalker_outfit` — CS-2b Body Armor, Clear Sky (Chemical Specialist) | Medium Sunrise | 0.2 (=) | 0.18 (=) | 0.015 (=) | 0.35 (=) | 0.00 (=) | 0.32 → 0.256 | 0.25 → 0.2 | 0.33 → 0.264 |
| `ecolog_guard_outfit` — ISRIT Guard Jumpsuit (Elemental Resistance High, others low) | Medium Sunrise | 0.36 (=) | 0.34 (=) | 0.02 (=) | 0.36 (=) | 0.05 (=) | 0.25 → 0.2 | 0.25 → 0.2 | 0.27 → 0.216 |
| `greh_trenchcoat_outfit` | Medium Trenchcoat | 0.31 (=) | 0.26 (=) | 0.010 (=) | 0.37 (=) | 0.1 (=) | 0.26 → 0.208 | 0.29 → 0.232 | 0.25 → 0.2 |
| `trenchcoat_dolg_brown_outfit` | Medium Trenchcoat | 0.38 (=) | 0.33 (=) | 0.008 (=) | 0.20 (=) | 0.11 (=) | 0.28 → 0.224 | 0.29 → 0.232 | 0.27 → 0.216 |
| `trenchcoat_freedom_brown_outfit` | Medium Trenchcoat | 0.20 (=) | 0.33 (=) | 0.011 (=) | 0.38 (=) | 0.08 (=) | 0.28 → 0.224 | 0.27 → 0.216 | 0.29 → 0.232 |
| `ghillie_outfit` | Medium Trenchcoat | 0.217 (=) | 0.331 (=) | 0.017 (=) | 0.397 (=) | 0.10 (=) | 0.252 → 0.2016 | 0.216 → 0.1728 | 0.180 → 0.144 |
| `nbc_outfit` — tactical stalker suit | Light NBC | 0.061 → 0.0915 | 0.052 → 0.078 | 0.002 → 0.003 | 0.092 → 0.138 | 0.00 (=) | 0.096 → 0.1536 | 0.084 → 0.1344 | 0.096 → 0.1536 |
| `bandit_nbc_outfit` — Load Bearing Sunset Tactical Suit | Light NBC | 0.07 → 0.105 | 0.04 → 0.06 | 0.0004 → 0.0006 | 0.1 → 0.15 | 0.00 (=) | 0.062 → 0.0992 | 0.072 → 0.1152 | 0.096 → 0.1536 |
| `cs_nbc_outfit` — CS-2t Suit | Light NBC | 0.08 → 0.12 | 0.03 → 0.045 | 0.006 → 0.009 | 0.1 → 0.15 | 0.00 (=) | 0.072 → 0.1152 | 0.06 → 0.096 | 0.12 → 0.192 |
| `monolith_nbc_outfit` — Tactical Monolith Suit | Light NBC | 0.05 → 0.075 | 0.08 → 0.12 | 0.008 → 0.012 | 0.05 → 0.075 | 0.000 → 0.00 | 0.084 → 0.1344 | 0.12 → 0.192 | 0.084 → 0.1344 |
| `nbc_dolg_outfit` — PS5-Mt Suit | Light NBC | 0.09 → 0.135 | 0.07 → 0.105 | 0.004 → 0.006 | 0.04 → 0.06 | 0.06 → 0.09 | 0.96 → 0.1536 | 0.108 → 0.1728 | 0.06 → 0.096 |
| `nbc_freedom_outfit` — Keeper of Freedom | Light NBC | 0.04 → 0.06 | 0.07 → 0.105 | 0.006 → 0.009 | 0.09 → 0.135 | 0.044 → 0.066 | 0.06 → 0.096 | 0.096 → 0.1536 | 0.108 → 0.1728 |
| `nbc_merc_outfit` — Load Bearing Twilight Tactical Suit | Light NBC | 0.06 → 0.09 | 0.08 → 0.12 | 0.006 → 0.009 | 0.06 → 0.09 | 0.04 → 0.06 | 0.12 → 0.192 | 0.084 → 0.1344 | 0.084 → 0.1344 |
| `stalker_outfit` — "Sunrise" Stalker Suit | Light Hybrid | 0.130 → 0.195 | 0.086 → 0.129 | 0.00 (=) | 0.152 → 0.228 | 0.000 → 0.00 | 0.072 → 0.1152 | 0.036 → 0.0576 | 0.135 → 0.216 |
| `stalker_autumn_outfit` — "Autumn" Stalker Suit (Chemical Specialist) | Light Hybrid | 0.130 → 0.195 | 0.086 → 0.129 | 0.001 → 0.0015 | 0.152 → 0.228 | 0 → 0.00 | 0.072 → 0.1152 | 0.036 → 0.0576 | 0.135 → 0.216 |
| `stalker_salamander_outfit` — "Salamander" Stalker Suit | Light Hybrid | 0.152 → 0.228 | 0.152 → 0.228 | 0.00 (=) | 0.194 → 0.291 | 0.000 → 0.00 | 0.099 → 0.1584 | 0.047 → 0.0752 | 0.054 → 0.0864 |
| `merc_scout_outfit` — Merc LC-S Suit | Light Hybrid | 0.130 → 0.195 | 0.152 → 0.228 | 0.00 (=) | 0.086 → 0.129 | 0.000 → 0.00 | 0.135 → 0.216 | 0.117 → 0.1872 | 0.099 → 0.1584 |
| `merc_wolven_outfit` — Merc STS-W Body Armor | Light Hybrid | 0.130 → 0.195 | 0.162 → 0.243 | 0.00 (=) | 0.118 → 0.177 | 0.000 → 0.00 | 0.117 → 0.1872 | 0.082 → 0.1312 | 0.072 → 0.1152 |
| `dolg_scout_outfit` — PS5-R Scout Vest, Duty | Light Hybrid | 0.18 → 0.27 | 0.152 → 0.228 | 0.008 → 0.012 | 0.07 → 0.105 | 0.12 → 0.18 | 0.081 → 0.1296 | 0.117 → 0.1872 | 0.072 → 0.1152 |
| `stalker_predator_outfit` — "Predator" Stalker Suit | Light Combat | 0.065 → 0.0975 | 0.032 → 0.048 | 0.00 (=) | 0.076 → 0.114 | 0.000 → 0.00 | 0.08 → 0.128 | 0.15 → 0.24 | 0.04 → 0.064 |
| `isg_lcs_camo_outfit` — Unisig LC-C Suit | Light Combat | 0.065 → 0.0975 | 0.081 → 0.1215 | 0.00 (=) | 0.059 → 0.0885 | 0.000 → 0.00 | 0.11 → 0.176 | 0.13 → 0.208 | 0.13 → 0.208 |
| `banditmerc_outfit` — Fenced LC Suit | Light Combat | 0.043 → 0.0645 | 0.054 → 0.081 | 0.00 (=) | 0.036 → 0.054 | 0.000 → 0.00 | 0.07 → 0.112 | 0.05 → 0.08 | 0.04 → 0.064 |
| `cs_light_outfit` — CS-2a Body Armor | Light Combat | 0.05 → 0.075 | 0.04 → 0.06 | 0.007 → 0.0105 | 0.097 → 0.1455 | 0.000 → 0.00 | 0.06 → 0.096 | 0.052 → 0.0832 | 0.11 → 0.176 |
| `merc_fighter_outfit` — Mercenary LC-F Suit | Light Combat | 0.065 → 0.0975 | 0.076 → 0.114 | 0.00 (=) | 0.043 → 0.0645 | 0.000 → 0.00 | 0.09 → 0.144 | 0.08 → 0.128 | 0.13 → 0.208 |
| `army_outfit` — Military Service Outfit | Light Combat | 0.022 → 0.033 | 0.011 → 0.0165 | 0.000 → 0.00 | 0.081 → 0.1215 | 0.000 → 0.00 | 0.07 → 0.112 | 0.13 → 0.208 | 0.05 → 0.08 |
| `cs_light_novice_outfit` — CS-1 body armor | Light Combat | 0.03 → 0.045 | 0.02 → 0.03 | 0.005 → 0.0075 | 0.06 → 0.09 | 0.000 → 0.00 | 0.07 → 0.112 | 0.06 → 0.096 | 0.11 → 0.176 |
| `trenchcoat_outfit` — overcoat | Light Novice | 0.06 → 0.09 | 0.09 → 0.135 | 0.003 → 0.0045 | 0.03 → 0.045 | 0.00 (=) | 0.02 → 0.032 | 0.05 → 0.08 | 0.05 → 0.08 |
| `monolith_trenchcoat_outfit` — monolith overcoat | Light Novice | 0.08 → 0.12 | 0.08 → 0.12 | 0.005 → 0.0075 | 0.06 → 0.09 | 0.00 (=) | 0.07 → 0.112 | 0.09 → 0.144 | 0.08 → 0.128 |
| `trenchcoat_brown_outfit` — heavy brown overcoat | Light Novice | 0.04 → 0.06 | 0.10 → 0.15 | 0.003 → 0.0045 | 0.07 → 0.105 | 0.01 → 0.015 | 0.06 → 0.096 | 0.09 → 0.144 | 0.08 → 0.128 |
| `trenchcoat_green_outfit` — heavy green overcoat | Light Novice | 0.04 → 0.06 | 0.08 → 0.12 | 0.003 → 0.0045 | 0.07 → 0.105 | 0.01 → 0.015 | 0.06 → 0.096 | 0.08 → 0.128 | 0.07 → 0.112 |
| `novice_outfit` — leather jacket | Light Novice | 0.05 → 0.075 | 0.03 → 0.045 | 0.00 (=) | 0.06 → 0.09 | 0.00 (=) | 0.01 → 0.016 | 0.04 → 0.064 | 0.05 → 0.08 |
| `novice_outfit_camo` — firearm enthusiast leather jacket | Light Novice | 0.05 → 0.075 | 0.03 → 0.045 | 0.00 (=) | 0.05 → 0.075 | 0.00 (=) | 0.01 → 0.016 | 0.05 → 0.08 | 0.06 → 0.096 |
| `novice_outfit_tourist` — tourist's jacket | Light Novice | 0.05 → 0.075 | 0.04 → 0.06 | 0.00 (=) | 0.06 → 0.09 | 0.00 (=) | 0.01 → 0.016 | 0.06 → 0.096 | 0.07 → 0.112 |
| `bandit_novice_outfit` — black leather jacket | Light Novice | 0.05 → 0.075 | 0.05 → 0.075 | 0.00 (=) | 0.03 → 0.045 | 0.00 (=) | 0.01 → 0.016 | 0.04 → 0.064 | 0.05 → 0.08 |
| `bandit_novice_outfit_alt` — armored leather jacket | Light Novice | 0.06 → 0.09 | 0.05 → 0.075 | 0.00 (=) | 0.04 → 0.06 | 0.00 (=) | 0.01 → 0.016 | 0.04 → 0.064 | 0.06 → 0.096 |
| `cs_novice_outfit` — clear sky leather jacket | Light Novice | 0.03 → 0.045 | 0.02 → 0.03 | 0.002 → 0.003 | 0.05 → 0.075 | 0.00 (=) | 0.04 → 0.064 | 0.01 → 0.016 | 0.05 → 0.08 |
| `dolg_novice_outfit` — duty leather jacket | Light Novice | 0.05 → 0.075 | 0.04 → 0.06 | 0.00 (=) | 0.03 → 0.045 | 0.00 (=) | 0.04 → 0.064 | 0.05 → 0.08 | 0.01 → 0.016 |
| `redline_novice_outfit` — redline leather jacket | Light Novice | 0.05 → 0.075 | 0.06 → 0.09 | 0.00 (=) | 0.03 → 0.045 | 0.00 (=) | 0.01 → 0.016 | 0.04 → 0.064 | 0.06 → 0.096 |
| `svoboda_novice_outfit` — freedom leather jacket | Light Novice | 0.03 → 0.045 | 0.04 → 0.06 | 0.00 (=) | 0.05 → 0.075 | 0.00 (=) | 0.04 → 0.064 | 0.01 → 0.016 | 0.05 → 0.08 |

## Other changes found

### Mutant balance

- **m_bloodsucker_e:** `spec_monster_mult` 0.45 → 0.4.
- **bloodsucker_strong:** `spec_monster_mult` 0.5 → 0.3.
- **m_burer_e:** `spec_monster_mult` 0.3 → 0.25.
- **m_controller_e:** `spec_monster_mult` 0.35 → 0.25.
- **fracture_normal:** `spec_monster_mult` 0.5 → 0.4.
- **m_lurker_e:** `spec_monster_mult` 0.48 → 0.45.
- **m_psysucker_e:** `spec_monster_mult` 0.6 → 0.5.
- **m_snork_e:** `spec_monster_mult` 0.7 → 0.6.
- **m_Snork_damage:** `bip01_spine` 1.1, -1, 0.12 → 1.0, -1, 0.12; `bip01_neck` 0.85, -1, 2.2 → 0.9, -1, 2.2; `bip01_spine1` 1.1, -1, 0.12 → 1.0, -1, 0.12.
- **m_karlik_e:** `spec_monster_mult` 0.8 → 0.7.

- `grok_bo.script`: humanoid neck/head/eyes/jaw multipliers increase **3.0 → 4.0**.

### Armor upgrade rework

- Adds `up_sect_weight_half`: -0.5 kg, cost 2000.
- Reworks stamina upgrade display tiers to +5/+10/+15/+20/+25 with `power_restore_speed` 0.0001625 / 0.000325 / 0.0004875 / 0.000650 / 0.0008125.
- Freedom hybrid upgrade node changes from `up_sect_stam_two` to `up_sect_stam_three`.

### Localization

- Adds `st_items_ammo_zzz.xml`.
- Adds `st_items_attachments.xml`.

## FOMOD changes applied

- Added optional `GAMMA Helmet Upgrade Rework` → `05 Helmet Upgrade Rework`.
- Updated SOTA source to `06 Combat Overhaul Sota Patch`.
- Updated FuzzRecoil source to `07 Fuzz Recoil Patch`.

## Release recommendation

Use the corrected candidate archive or manually move the two newest armor/helmet `.ltx` files into `gamedata/configs/` before release. Otherwise the new installer will work, but most of the intended broad armor/helmet rebalance will remain in the wrong directory.