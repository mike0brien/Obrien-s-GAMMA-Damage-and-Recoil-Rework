;========================================
; ---HELMET Protection RATINGS
; ---High value = stronger protection
;========================================
;===================================================
;---------- Light ----------
;===================================================

;--- VERY LIGHT (cloth / cosmetic) ---

![helm_bandana]
	burn_protection               = 0.00
	shock_protection              = 0.00
	radiation_protection          = 0.002
	chemical_burn_protection      = 0.03
	telepatic_protection          = 0.0
	strike_protection             = 0.00
	explosion_protection          = 0.03
	wound_protection              = 0.01
	fire_wound_protection         = 0.00

![helm_cloth_mask]
	burn_protection               = 0.00
	shock_protection              = 0.00
	radiation_protection          = 0.005
	chemical_burn_protection      = 0.03
	telepatic_protection          = 0
	strike_protection             = 0.00
	explosion_protection          = 0.03
	wound_protection              = 0.02
	fire_wound_protection         = 0.00

![helm_rp_bala]
	burn_protection               = 0.00
	shock_protection              = 0.01
	radiation_protection          = 0.004
	chemical_burn_protection      = 0.02
	telepatic_protection          = 0
	strike_protection             = 0.00
	explosion_protection          = 0.01
	wound_protection              = 0.01
	fire_wound_protection         = 0.00

;--- Science (respirators) ---

![helm_resp] --- respirator, stalker went to home depot
	burn_protection               = 0.07
	shock_protection              = 0.08
	radiation_protection          = 0.01
	chemical_burn_protection      = 0.07
	telepatic_protection          = 0
	strike_protection             = 0.04
	explosion_protection          = 0.05
	wound_protection              = 0.08
	fire_wound_protection         = 0.00

![helm_respirator_old] --- Refitted PBF Gas Mask Kit - Same as the helm_respirator in name/flavor text.
	burn_protection               = 0.14
	shock_protection              = 0.14
	radiation_protection          = 0.014
	chemical_burn_protection      = 0.1
	telepatic_protection          = 0.0
	strike_protection             = 0.06
	explosion_protection          = 0.1
	wound_protection              = 0.1
	fire_wound_protection         = 0.00

![helm_respirator] --- Refitted PBF Gas Mask Kit, decent radiation, poor chemical
	burn_protection               = 0.13
	shock_protection              = 0.13
	radiation_protection          = 0.016
	chemical_burn_protection      = 0.1
	telepatic_protection          = 0
	strike_protection             = 0.1
	explosion_protection          = 0.1
	wound_protection              = 0.1
	fire_wound_protection         = 0.00

![helm_respirator_gp5] --- GP-5 Gas Mask, Better Rad then Refit, even worse toxic.
	burn_protection               = 0.12
	shock_protection              = 0.11
	radiation_protection          = 0.020
	chemical_burn_protection      = 0.05
	telepatic_protection          = 0.05
	strike_protection             = 0.11
	explosion_protection          = 0.07
	wound_protection              = 0.12
	fire_wound_protection         = 0.00

;--- Combat (steel helmet) ---

![helm_hardhat]
	burn_protection               = 0.075 ;-- 0.1
	shock_protection              = 0.05
	radiation_protection          = 0.00 
	chemical_burn_protection      = 0.03 ;-- 0.1
	telepatic_protection          = 0.06 ;-- 0.1
	strike_protection             = 0.24 ;-- 0.25
	explosion_protection          = 0.275 ;--- 0.3
	wound_protection              = 0.25 
	fire_wound_protection         = 0.00

![helm_hardhat_snag]
	burn_protection               = 0.075 ;-- 0.1
	shock_protection              = 0.05
	radiation_protection          = 0.00 
	chemical_burn_protection      = 0.03 ;-- 0.1
	telepatic_protection          = 0.06 ;-- 0.1
	strike_protection             = 0.24 ;-- 0.25
	explosion_protection          = 0.275 ;--- 0.3
	wound_protection              = 0.25 
	fire_wound_protection         = 0.00

;===================================================
;---------- Medium ----------
;===================================================

;---Science (proper gask masks) ---

![helm_m40] ;--- high rad/chem protection - elemental 0.8 combat 0.75 of m50 - updated
	burn_protection               = 0.208
	shock_protection              = 0.2
	radiation_protection          = 0.032
	chemical_burn_protection      = 0.264
	telepatic_protection          = 0.16
	strike_protection             = 0.169
	explosion_protection          = 0.1575
	wound_protection              = 0.18
	fire_wound_protection         = 0.00


![helm_ppm88] ;--- CBRN Eco hazard, "successor" of gp-5, elemental 0.8 of ranger and combat 0.75 - updated
	burn_protection               = 0.264
	shock_protection              = 0.28
	radiation_protection          = 0.02
	chemical_burn_protection      = 0.2
	telepatic_protection          = 0.288
	strike_protection             = 0.18
	explosion_protection          = 0.1575
	wound_protection              = 0.169
	fire_wound_protection         = 0.00

![helm_protective] --- technically marked a medium, but it's the SEVA Suit helm - best elemenetal/rad.
	burn_protection               = 0.45
	shock_protection              = 0.45
	radiation_protection          = 0.06
	chemical_burn_protection      = 0.5
	telepatic_protection          = 0.2
	strike_protection             = 0.2
	explosion_protection          = 0.1
	wound_protection              = 0.18
	fire_wound_protection         = 0.00

;--- Combat (standard military helmets) ---

![helm_ach7] --- combat 0.8 of heavy combat, ele 0.5 of ach7ex. No rads cause no mask. - updated
	burn_protection               = 0.065
	shock_protection              = 0.075
	radiation_protection          = 0.0
	chemical_burn_protection      = 0.065
	telepatic_protection          = 0.179
	strike_protection             = 0.36
	explosion_protection          = 0.376
	wound_protection              = 0.336
	fire_wound_protection         = 0.00

![helm_ach7ex] --- combat 0.8 of heavy combat, ele stats 0.5 of heavy sci - updated
	burn_protection               = 0.13
	shock_protection              = 0.15
	radiation_protection          = 0.018
	chemical_burn_protection      = 0.125
	telepatic_protection          = 0.224
	strike_protection             = 0.36
	explosion_protection          = 0.376
	wound_protection              = 0.336
	fire_wound_protection         = 0.00

;--- Hybrid Helmet ---

![helm_tactic] --- updated 0.8 of heavy version
	burn_protection               = 0.208
	shock_protection              = 0.2
	radiation_protection          = 0.028
	chemical_burn_protection      = 0.2
	telepatic_protection          = 0.224
	strike_protection             = 0.27
	explosion_protection          = 0.282
	wound_protection              = 0.252
	fire_wound_protection         = 0.00
	repair_type = outfit_medium

;===================================================
;---------- Heavy ----------
;===================================================

;---Science ---

![helm_m50] --- upgrade of m40, high rad/chem protection, combat 0.5 of heavy combat - updated
	burn_protection               = 0.26
	shock_protection              = 0.25
	radiation_protection          = 0.04
	chemical_burn_protection      = 0.33
	telepatic_protection          = 0.2
	strike_protection             = 0.225
	explosion_protection          = 0.21
	wound_protection              = 0.24
	fire_wound_protection         = 0.00

![helm_ranger] --- high psi/burn/shock, combat 0.5 of heavy combat - updated
	burn_protection               = 0.33
	shock_protection              = 0.35
	radiation_protection          = 0.025
	chemical_burn_protection      = 0.25
	telepatic_protection          = 0.36
	strike_protection             = 0.24
	explosion_protection          = 0.21
	wound_protection              = 0.225
	fire_wound_protection         = 0.00



;--- Combat ---

![helm_metro] --- Apocalypse Helmet - M10 Gas Mask with an Alytn slapped ontop. ele stats near 0.5 heavy sci tele halfway, 1.34 sum combat - updated
	burn_protection               = 0.15
	shock_protection              = 0.13
	radiation_protection          = 0.02
	chemical_burn_protection      = 0.165
	telepatic_protection          = 0.28
	strike_protection             = 0.45
	explosion_protection          = 0.47
	wound_protection              = 0.42
	fire_wound_protection         = 0.00

;--- Combo ---

![helm_battle] --- Sphere M12 Helmet - combat stats 0.75 metro, lowest between m50/ranger or halfway between - updated
	burn_protection               = 0.26
	shock_protection              = 0.25
	radiation_protection          = 0.035
	chemical_burn_protection      = 0.25
	telepatic_protection          = 0.28
	strike_protection             = 0.3375
	explosion_protection          = 0.3525
	wound_protection              = 0.315
	fire_wound_protection         = 0.00


;===================================================
;---------- Exo ---------- 1.44 sum burn/shock/rad/chem/psi, and strike/expl/wound
;===================================================

;--- Hybrid ---

![helm_exo] --- ExoHelmet - SF10 Gas mask with steel helmet maybe chem/burn/psi - updated
	burn_protection               = 0.27
	shock_protection              = 0.2
	radiation_protection          = 0.03
	chemical_burn_protection      = 0.32
	telepatic_protection          = 0.35
	strike_protection             = 0.40
	explosion_protection          = 0.5
	wound_protection              = 0.44
	fire_wound_protection         = 0.00

; --- Combat ---

![helm_spartan] --- Cz-M10 Spartan Helmet maybe shock/burn/rad - updated
	burn_protection               = 0.31
	shock_protection              = 0.33
	radiation_protection          = 0.04
	chemical_burn_protection      = 0.2
	telepatic_protection          = 0.2
	strike_protection             = 0.54
	explosion_protection          = 0.42
	wound_protection              = 0.48
	fire_wound_protection         = 0.00


