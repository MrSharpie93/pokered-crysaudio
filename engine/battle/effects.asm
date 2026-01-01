JumpMoveEffect:
	call _JumpMoveEffect
	ld b, $1
	ret

_JumpMoveEffect:
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerMoveEffect]
	jr z, .next1
	ld a, [wEnemyMoveEffect]
.next1
	dec a ; subtract 1, there is no special effect for 00
	add a ; x2, 16bit pointers
	ld hl, MoveEffectPointerTable
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl ; jump to special effect handler

INCLUDE "data/moves/effects_pointers.asm"

SleepEffect: ; ~$~CHANGED: Grass-types are immune to Sleep Powder and Spore.
	ld hl, wEnemyMonStatus
	ld de, wPlayerMoveType
	ld bc, wEnemyBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jp z, .sleepEffect
	ld hl, wBattleMonStatus
	ld de, wEnemyMoveType
	ld bc, wPlayerBattleStatus2

.sleepEffect
	call CheckTargetSubstitute
	jr nz, .didntAffect ; ~$~Can't inflict sleep on a substitute target.~$~
	call CheckTargetSafeguard ; ~$~Or on a safeguarding target.~$~
	jr nz, .didntAffect
	ld a, [de]
	cp GRASS
	jr z, .grassCheck ; ~$~Prevents Sleep Powder or Spore from working on Grass-types.~$~
.resume
	ld a, [bc]
	bit NEEDS_TO_RECHARGE, a ; does the target need to recharge? (hyper beam)
	res NEEDS_TO_RECHARGE, a ; target no longer needs to recharge
	ld [bc], a
; ~$~FIXED: Sleep moves interact correctly with recharging Mons.~$~
	ld a, [hl]
	ld b, a
	and $7
	jr z, .notAlreadySleeping ; can't affect a mon that is already asleep
	ld hl, AlreadyAsleepText
	jp PrintText
.notAlreadySleeping
	ld a, b
	and a
	jr nz, .didntAffect ; can't affect a mon that is already statused
	push hl
	call MoveHitTest ; apply accuracy tests
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .didntAffect
.setSleepCounter
; ~$~CHANGED: Set target's sleep counter to a random number between 1 and 6.~$~
	call BattleRandom
	and $7
	jr z, .setSleepCounter
	cp $7
	jr z, .setSleepCounter
	set 1, a ; ~$~CHANGED: From Red++: Always at least 2, since 1 is now functionally 0.~$~
	ld [hl], a
	call PlayCurrentMoveAnimation2
	ld hl, FellAsleepText
	jp PrintText
.didntAffect
	jp PrintDidntAffectText
.doesntAffect
	pop bc
	jp PrintDoesntAffectText
.grassCheck
	push bc
	ld b, h
	ld c, l
	inc bc
	ld a, [bc]
	cp GRASS
	jr z, .doesntAffect
	inc bc
	ld a, [bc]
	cp GRASS
	jr z, .doesntAffect
	pop bc
	jr .resume

FellAsleepText:
	text_far _FellAsleepText
	text_end

AlreadyAsleepText:
	text_far _AlreadyAsleepText
	text_end
	
ToxicEffect: ; ~$~ADDED: Allows Poison-types to skip accuracy checks on Toxic.~$~
	ld hl, wBattleMonType1
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .toxicEffect
	ld hl, wEnemyMonType1
	ld de, wEnemyMoveEffect
.toxicEffect
	ld a, [hl]
	cp POISON
	jr nz, PoisonEffect
	inc bc
	ld a, [hl]
	cp POISON
	jr nz, PoisonEffect
	ld a, SWIFT_EFFECT
	ld [de], a
; Fallthrough to PoisonEffect.~$~

PoisonEffect:
	ld hl, wEnemyMonStatus
	ld de, wPlayerMoveNum
	ldh a, [hWhoseTurn]
	and a
	jr z, .poisonEffect
	ld hl, wBattleMonStatus
	ld de, wEnemyMoveNum
.poisonEffect
	call CheckTargetSubstitute
	jp nz, .noEffectIncDE ; can't poison a substitute target
	call CheckTargetSafeguard
	jp nz, .noEffectIncDE ; can't poison a safeguarded target
	ld a, [hli]
	ld b, a
	and a
	jp nz, .noEffectIncDE ; miss if target is already statused
	ld a, [hli]
	cp POISON ; can't poison a poison-type target
	jp z, .noEffectIncDE
	cp STEEL ; can't poison a steel-type target
	jp z, .noEffectIncDE
	ld a, [hld]
	cp POISON ; can't poison a poison-type target
	jp z, .noEffectIncDE
	cp STEEL ; can't poison a steel-type target
	jp z, .noEffectIncDE
; ~$~CHANGED: Code snippet from pokered-restored to grant Grass-types immunity to Poisonpowder.~$~
	ld a, [de]
	inc de
	cp POISONPOWDER
	jr nz, .notPoisonPowder
	ld a, [hli]
	cp GRASS
	jp z, .noEffect
	ld a, [hld]
	cp GRASS
	jp z, .noEffect
.notPoisonPowder
;;;
	ld a, [de]
	cp POISON_SIDE_EFFECT1
	ld b, 30 percent + 1 ; chance of poisoning ~$~CHANGED: Adjusted for modern probabilities.~$~
	jr z, .sideEffectTest
	cp POISON_SIDE_EFFECT2
	ld b, 50 percent + 1 ; chance of poisoning ~$~CHANGED: Adjusted for Poison Fang. Smog gets it too, but it could use the buff anyway.~$~
	jr z, .sideEffectTest
	push hl
	push de
	call MoveHitTest ; apply accuracy tests
	pop de
	pop hl
	ld a, [wMoveMissed]
	and a
	jr nz, .didntAffect
	jr .inflictPoison
.sideEffectTest
	call BattleRandom
	cp b ; was side effect successful?
	ret nc
.inflictPoison
	dec hl
	set PSN, [hl]
	push de
	dec de
	ldh a, [hWhoseTurn]
	and a
	ld b, SHAKE_SCREEN_ANIM
	ld hl, wPlayerBattleStatus3
	ld a, [de]
	ld de, wPlayerToxicCounter
	jr nz, .ok
	ld b, ENEMY_HUD_SHAKE_ANIM
	ld hl, wEnemyBattleStatus3
	ld de, wEnemyToxicCounter
.ok
	cp POISON_FANG ; ~$~ADDED: Poison Fang should inflict Toxic.~$~
	jr z, .badPoison
	cp TOXIC
	jr nz, .normalPoison ; done if move is not Toxic
.badPoison
	set BADLY_POISONED, [hl] ; else set Toxic battstatus
	xor a
	ld [de], a
	ld hl, BadlyPoisonedText
	jr .continue
.normalPoison
	ld hl, PoisonedText
.continue
	pop de
	ld a, [de]
	cp POISON_SIDE_EFFECT1 ; Animation jank.~$~
	jr z, .poisonSideEffect
	cp POISON_SIDE_EFFECT2 ; MORE animation jank.~$~
	jr z, .poisonSideEffect
	ld a, b
	call PlayCurrentMoveAnimation2
	jp PrintText
.poisonSideEffect
	ld a, b
	call PlayAlternativeAnimation2
	jp PrintText
.noEffectIncDE
	inc de
.noEffect
	ld a, [de]
	cp POISON_SIDE_EFFECT1 ; Text jank.~$~
	ret z
	cp POISON_SIDE_EFFECT2 ; MORE text jank.~$~
	ret z
.didntAffect
	ld c, 50
	call DelayFrames
	jp PrintDidntAffectText

PoisonedText:
	text_far _PoisonedText
	text_end

BadlyPoisonedText:
	text_far _BadlyPoisonedText
	text_end

DrainHPEffect:
	jpfar DrainHPEffect_

ExplodeEffect:
	ld hl, wBattleMonHP
	ld de, wPlayerBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .faintUser
	ld hl, wEnemyMonHP
	ld de, wEnemyBattleStatus2
.faintUser
	xor a
	ld [hli], a ; set the mon's HP to 0
	ld [hli], a
	inc hl
	ld [hl], a ; set mon's status to 0
	ld a, [de]
	res SEEDED, a ; clear mon's leech seed status
	ld [de], a
	ret
	
; ~$~ADDED: Red++ code for Tri Attack's effect.~$~
TriAttackEffect:
;	ld b, BURN_SIDE_EFFECT1
;	ld a, [hRandomSub] ; grab a random number
	call BattleRandom
	ld d, a
	ld b, BURN_SIDE_EFFECT1
	ld a, d
	cp 85 ; 85 / 256 chance = 33%
	jr c, .gotStatusEffect
	inc b ; FREEZE_SIDE_EFFECT
	cp 170 ; (170-85) / 256 chance = 33%
	jr c, .gotStatusEffect
	inc b ; PARALYZE_SIDE_EFFECT1 ; remaining 33%
.gotStatusEffect
	ld a, [hWhoseTurn] ; check if it is the player's turn or the opponent's
	and a
	ld a, b ; get the effect we chose earlier
	jr nz, .opponent
	ld [wPlayerMoveEffect], a ; store it as the player's move effect if player's turn
	jr FreezeBurnParalyzeEffect
.opponent
	ld [wEnemyMoveEffect], a ; store it as the enemy's move effect if enemy's turn
; fallthrough to FreezeBurnParalyzeEffect
;;;

FreezeBurnParalyzeEffect:
	xor a
	ld [wAnimationType], a
	call CheckTargetSubstitute
	ret nz ; return if they have a substitute, can't effect them
	call CheckTargetSafeguard
	ret nz ; return if they used safeguard, can't effect them
	ldh a, [hWhoseTurn]
	and a
	jp nz, .opponentAttacker
	ld a, [wEnemyMonStatus]
	and a
	jp nz, CheckDefrost ; can't inflict status if opponent is already statused
; ~$~CHANGED: No paralyzing Electric-types, burning Fire-types or freezing Ice-types.~$~
	ld a, [wPlayerMoveEffect]
	cp ZAP_CANNON_EFFECT ; ~$~ADDED: Zap Cannon and Inferno always inflict their respective status if they hit.~$~
	jr z, .paralyze1
	cp INFERNO_EFFECT
	jr z, .burn1
	cp PARALYZE_SIDE_EFFECT1 + 1
	ld b, 10 percent + 1
	jr c, .regular_effectiveness
; ~$~ADDED: Modified Red++ code snippet for Fang Effects.~$~
	cp PARALYZE_SIDE_EFFECT2 + 1
	jr c, .extra_effectiveness
	; otherwise, it's a fang effect
	sub FIRE_FANG_EFFECT - BURN_SIDE_EFFECT1
	ld b, 10 percent + 1
	jr .regular_effectiveness
;;;
.extra_effectiveness
	ld b, 30 percent + 1
	sub BURN_SIDE_EFFECT2 - BURN_SIDE_EFFECT1 ; treat extra effective as regular from now on
.regular_effectiveness
	push af
	call BattleRandom ; get random 8bit value for probability test
	cp b
	pop bc
	ret nc ; do nothing if random value is >= 1A or 4D [no status applied]
	ld a, b ; what type of effect is this?
	cp BURN_SIDE_EFFECT1
	jr z, .burn1
	cp FREEZE_SIDE_EFFECT
	jr z, .freeze1
; ~$~ADDED: Code to make Wild Charge/Flare Blitz work.~$~
	cp PARALYZE_SIDE_EFFECT1
	jr z, .paralyze1
	ld a, [wPlayerSelectedMove]
	cp FLARE_BLITZ
	jr z, .burn1
	cp WILD_CHARGE
	ret nz
;;;
.paralyze1
	ld a, [wEnemyMonType1]
	cp ELECTRIC
	ret z  ; cannot paralyze Electric-types
	ld a, [wEnemyMonType2]
	cp ELECTRIC
	ret z  ; cannot paralyze Electric-types
	ld a, 1 << PAR
	ld [wEnemyMonStatus], a
	call QuarterSpeedDueToParalysis ; quarter speed of affected mon
	ld a, ENEMY_HUD_SHAKE_ANIM
	call PlayAlternativeAnimation
	jp PrintMayNotAttackText ; print paralysis text
.burn1
	ld a, [wEnemyMonType1]
	cp FIRE
	ret z  ; cannot burn Fire-types
	ld a, [wEnemyMonType2]
	cp FIRE
	ret z  ; cannot burn Fire-types
	ld a, 1 << BRN
	ld [wEnemyMonStatus], a
	call HalveAttackDueToBurn ; halve attack of affected mon
	ld a, ENEMY_HUD_SHAKE_ANIM
	call PlayAlternativeAnimation
	ld hl, BurnedText
	jp PrintText
.freeze1
	ld a, [wEnemyMonType1]
	cp ICE
	ret z  ; cannot freeze Ice-types
	ld a, [wEnemyMonType2]
	cp ICE
	ret z  ; cannot freeze Ice-types
	call ClearHyperBeam ; resets hyper beam (recharge) condition from target
	ld a, 1 << FRZ
	ld [wEnemyMonStatus], a
	ld a, ENEMY_HUD_SHAKE_ANIM
	call PlayAlternativeAnimation
	ld hl, FrozenText
	jp PrintText
.opponentAttacker
	ld a, [wBattleMonStatus] ; mostly same as above with addresses swapped for opponent
	and a
	jp nz, CheckDefrost
; ~$~CHANGED: No paralyzing Electric-types, burning Fire-types or freezing Ice-types.~$~
	ld a, [wEnemyMoveEffect]
	cp ZAP_CANNON_EFFECT ; ~$~ADDED: Zap Cannon and Inferno always inflict their respective status if they hit.~$~
	jr z, .paralyze2
	cp INFERNO_EFFECT
	jr z, .burn2
	cp PARALYZE_SIDE_EFFECT1 + 1
	ld b, 10 percent + 1
	jr c, .regular_effectiveness2
; ~$~ADDED: Modified Red++ code snippet for Fang Effects.~$~
	cp PARALYZE_SIDE_EFFECT2 + 1
	jr c, .extra_effectiveness2
	; otherwise, it's a fang effect
	sub FIRE_FANG_EFFECT - BURN_SIDE_EFFECT1
	ld b, 10 percent + 1
	jr .regular_effectiveness2
;;;
.extra_effectiveness2
	ld b, 30 percent + 1
	sub BURN_SIDE_EFFECT2 - BURN_SIDE_EFFECT1 ; treat extra effective as regular from now on
.regular_effectiveness2
	push af
	call BattleRandom
	cp b
	pop bc
	ret nc
	ld a, b
	cp BURN_SIDE_EFFECT1
	jr z, .burn2
	cp FREEZE_SIDE_EFFECT
	jr z, .freeze2
; ~$~ADDED: Code to make Wild Charge/Flare Blitz work.~$~
	cp PARALYZE_SIDE_EFFECT1
	jr z, .paralyze2
	ld a, [wEnemySelectedMove]
	cp FLARE_BLITZ
	jr z, .burn2
	cp WILD_CHARGE
	ret nz
;;;
.paralyze2
	ld a, [wBattleMonType1]
	cp ELECTRIC
	ret z  ; cannot paralyze Electric-types
	ld a, [wBattleMonType2]
	cp ELECTRIC
	ret z  ; cannot paralyze Electric-types
	ld a, 1 << PAR
	ld [wBattleMonStatus], a
	call QuarterSpeedDueToParalysis
	jp PrintMayNotAttackText
.burn2
	ld a, [wBattleMonType1]
	cp FIRE
	ret z  ; cannot burn Fire-types
	ld a, [wBattleMonType2]
	cp FIRE
	ret z  ; cannot burn Fire-types
	ld a, 1 << BRN
	ld [wBattleMonStatus], a
	call HalveAttackDueToBurn
	ld hl, BurnedText
	jp PrintText
.freeze2
	ld a, [wBattleMonType1]
	cp ICE
	ret z  ; cannot freeze Ice-types
	ld a, [wBattleMonType2]
	cp ICE
	ret z  ; cannot freeze Ice-types
; ~$~FIXED: Hyper Beam bits are reset for opponent's side.~$~
	call ClearHyperBeam
	ld a, 1 << FRZ
	ld [wBattleMonStatus], a
	ld hl, FrozenText
	jp PrintText

BurnedText:
	text_far _BurnedText
	text_end

FrozenText:
	text_far _FrozenText
	text_end

CheckDefrost:
; any fire-type move that has a chance inflict burn (all but Fire Spin) will defrost a frozen target
	and 1 << FRZ ; are they frozen?
	ret z ; return if so
	ldh a, [hWhoseTurn]
	and a
	jr nz, .opponent
	;player [attacker]
	ld a, [wPlayerMoveType]
	sub FIRE
	ret nz ; return if type of move used isn't fire
	ld [wEnemyMonStatus], a ; set opponent status to 00 ["defrost" a frozen monster]
	ld hl, wEnemyMon1Status
	ld a, [wEnemyMonPartyPos]
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	xor a
	ld [hl], a ; clear status in roster
	ld hl, FireDefrostedText
	jr .common
.opponent
	ld a, [wEnemyMoveType] ; same as above with addresses swapped
	sub FIRE
	ret nz
	ld [wBattleMonStatus], a
	ld hl, wPartyMon1Status
	ld a, [wPlayerMonNumber]
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	xor a
	ld [hl], a
	ld hl, FireDefrostedText
.common
	jp PrintText

FireDefrostedText:
	text_far _FireDefrostedText
	text_end

StatModifierUpEffect:
	ld hl, wPlayerMonStatMods
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .statModifierUpEffect
	ld hl, wEnemyMonStatMods
	ld de, wEnemyMoveEffect
.statModifierUpEffect
	ld a, [de]
	sub ATTACK_UP1_EFFECT
	cp EVASION_UP1_EFFECT + $3 - ATTACK_UP1_EFFECT ; covers all +1 effects
	jr c, .incrementStatMod
	sub ATTACK_UP2_EFFECT - ATTACK_UP1_EFFECT ; map +2 effects to equivalent +1 effect
.incrementStatMod
	ld c, a
	ld b, $0
	add hl, bc
	ld b, [hl]
	inc b ; increment corresponding stat mod
	ld a, $d
	cp b ; can't raise stat past +6 ($d or 13)
	jp c, PrintNothingHappenedText
	ld a, [de]
	cp ATTACK_UP1_EFFECT + $8 ; is it a +2 effect?
	jr c, .ok
	inc b ; if so, increment stat mod again
	ld a, $d
	cp b ; unless it's already +6
	jr nc, .ok
	ld b, a
.ok
	ld [hl], b
	ld a, c
	cp $4
	jr nc, UpdateStatDone ; jump if mod affected is evasion/accuracy
	push hl
	ld hl, wBattleMonAttack + 1
	ld de, wPlayerMonUnmodifiedAttack
	ldh a, [hWhoseTurn]
	and a
	jr z, .pointToStats
	ld hl, wEnemyMonAttack + 1
	ld de, wEnemyMonUnmodifiedAttack
.pointToStats
	push bc
	sla c
	ld b, $0
	add hl, bc ; hl = modified stat
	ld a, c
	add e
	ld e, a
	jr nc, .checkIf999
	inc d ; de = unmodified (original) stat
.checkIf999
	pop bc
	; check if stat is already 999
	ld a, [hld]
	sub LOW(MAX_STAT_VALUE)
	jr nz, .recalculateStat
	ld a, [hl]
	sbc HIGH(MAX_STAT_VALUE)
	jp z, RestoreOriginalStatModifier
.recalculateStat ; recalculate affected stat
                 ; paralysis and burn penalties, as well as badge boosts are ignored
	push hl
	push bc
	ld hl, StatModifierRatios
	dec b
	sla b
	ld c, b
	ld b, $0
	add hl, bc
	pop bc
	xor a
	ldh [hMultiplicand], a
	ld a, [de]
	ldh [hMultiplicand + 1], a
	inc de
	ld a, [de]
	ldh [hMultiplicand + 2], a
	ld a, [hli]
	ldh [hMultiplier], a
	call Multiply
	ld a, [hl]
	ldh [hDivisor], a
	ld b, $4
	call Divide
	pop hl
; cap at MAX_STAT_VALUE (999)
	ldh a, [hProduct + 3]
	sub LOW(MAX_STAT_VALUE)
	ldh a, [hProduct + 2]
	sbc HIGH(MAX_STAT_VALUE)
	jp c, UpdateStat
	ld a, HIGH(MAX_STAT_VALUE)
	ldh [hMultiplicand + 1], a
	ld a, LOW(MAX_STAT_VALUE)
	ldh [hMultiplicand + 2], a

UpdateStat:
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	pop hl
UpdateStatDone:
	ld b, c
	inc b
	call PrintStatText
	ld hl, wPlayerBattleStatus2
	ld de, wPlayerMoveNum
	ld bc, wPlayerMonMinimized
	ldh a, [hWhoseTurn]
	and a
	jr z, .playerTurn
	ld hl, wEnemyBattleStatus2
	ld de, wEnemyMoveNum
	ld bc, wEnemyMonMinimized
.playerTurn ; ~$~CHANGED: Separate move anims from other battle anims.~$~
; check if we used an X-stat up item
	ld a, [wAltAnimationID]
	and a
	jr nz, .notMinimize
	ld a, [de]
	cp MINIMIZE
	jr nz, .notMinimize
 ; if a substitute is up, slide off the substitute and show the mon pic before
 ; playing the minimize animation
	bit HAS_SUBSTITUTE_UP, [hl]
	push af
	push bc
	ld hl, HideSubstituteShowMonAnim
	ld b, BANK(HideSubstituteShowMonAnim)
	push de
	call nz, Bankswitch
	pop de
.notMinimize
	ldh a, [hWhoseTurn] ; ~$~CHANGED: Check base power before skipping damage calculation.~$~
	and a
	ld a, [wPlayerMovePower]
	jr z, .gotUsersPower1
	ld a, [wEnemyMovePower]
.gotUsersPower1
	and a ; Skip animation if damage dealing move
	jr nz, .skipAnimation
	call PlayCurrentMoveAnimation
.skipAnimation
	ld a, [de]
	cp MINIMIZE
	jr nz, .applyBadgeBoostsAndStatusPenalties
	pop bc
	ld a, $1
	ld [bc], a
	ld hl, ReshowSubstituteAnim
	ld b, BANK(ReshowSubstituteAnim)
	pop af
	call nz, Bankswitch
.applyBadgeBoostsAndStatusPenalties
;	ldh a, [hWhoseTurn] ; ~$~REMOVED: Badge boosts are a mess, just get rid of them.~$~
;	and a
;	call z, ApplyBadgeStatBoosts ; whenever the player uses a stat-up move, badge boosts get reapplied again to every stat,
	                             ; even to those not affected by the stat-up move (will be boosted further)
	ld hl, MonsStatsRoseText
	call PrintText

; these shouldn't be here
	call QuarterSpeedDueToParalysis ; apply speed penalty to the player whose turn is not, if it's paralyzed
	jp HalveAttackDueToBurn ; apply attack penalty to the player whose turn is not, if it's burned

RestoreOriginalStatModifier:
	pop hl
	dec [hl]

PrintNothingHappenedText: ; ~$~CHANGED: Red++ code to print "[STAT] won't rise anymore!" instead of "Nothing happened!"~$~
	ld b, c
	inc b
	call PrintStatText
	ld hl, WontRiseAnymoreText
	jp PrintText

MonsStatsRoseText:
	text_far _MonsStatsRoseText
	text_asm
	ld hl, GreatlyRoseText
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerMoveEffect]
	jr z, .playerTurn
	ld a, [wEnemyMoveEffect]
.playerTurn
	cp ATTACK_DOWN1_EFFECT
	ret nc
	ld hl, RoseText
	ret

GreatlyRoseText:
	text_pause
	text_far _GreatlyRoseText
; fallthrough
RoseText:
	text_far _RoseText
	text_end
	
WontRiseAnymoreText:
	text_far _WontRiseAnymoreText
	text_end

StatModifierDownEffect:
	ld hl, wEnemyMonStatMods
	ld de, wPlayerMoveEffect
	ld bc, wEnemyBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .statModifierDownEffect
	ld hl, wPlayerMonStatMods
	ld de, wEnemyMoveEffect
	ld bc, wPlayerBattleStatus2
;	ld a, [wLinkState] ; ~$~REMOVED: AI no longer programmed to miss debuffs 25% of the time.~$~
;	cp LINK_STATE_BATTLING
;	jr z, .statModifierDownEffect
;	call BattleRandom
;	cp 25 percent + 1 ; chance to miss by in regular battle
;	jp c, MoveMissed
.statModifierDownEffect
	call CheckTargetSubstitute ; can't hit through substitute
	jp nz, MoveMissed
	ld a, [de]
	cp ATTACK_DOWN_SIDE_EFFECT
	jr c, .nonSideEffect
	ld a, [bc] ; ~$~CHANGED: Mist protects from side effect debuffs.~$~
	bit PROTECTED_BY_MIST, a
	ret nz
	call BattleRandom
	cp 20 percent + 1 ; chance for side effects ~$~CHANGED: Made 20% to reflect modern probabilities.~$~
	jp nc, CantLowerAnymore
	ld a, [de]
	sub ATTACK_DOWN_SIDE_EFFECT ; map each stat to 0-3
	jr .decrementStatMod
.nonSideEffect ; non-side effects only
; ~$~CHANGED: This snippet is required to make Curse (and by association, any move that would cause self-inflicted debuffs) work.~$~
	dec de ; First, set de to wPlayerMoveNum/wEnemyMoveNum.
	ld a, [de] ; Now, load it into a.
	and a ; Check to see if wPlayerMoveNum/wEnemyMoveNum is 0 for any reason.
	inc de ; Set de back to wPlayerMoveEffect/wEnemyMoveEffect like it was.
	jr nz, .noCurse ; In theory, the only scenario this happens is through using Curse, so anything else should jump ahead.~$~
	jr .yesCurse
.noCurse
;;;
	push hl
	push de
	push bc
	call MoveHitTest ; apply accuracy tests
	pop bc
	pop de
	pop hl
	ld a, [wMoveMissed]
	and a
	jp nz, MoveMissed
	ld a, [bc] ; ~$~CHANGED: Mist blocks debuffs on attacks with guaranteed debuffs without blocking the attack.~$~
	bit PROTECTED_BY_MIST, a
	ret nz
	dec bc
	ld a, [bc]
	bit INVULNERABLE, a ; fly/dig
	jp nz, MoveMissed
.yesCurse ;;;
	ld a, [de]
	sub ATTACK_DOWN1_EFFECT
	cp EVASION_DOWN1_EFFECT + $3 - ATTACK_DOWN1_EFFECT ; covers all -1 effects
	jr c, .decrementStatMod
	sub ATTACK_DOWN2_EFFECT - ATTACK_DOWN1_EFFECT ; map -2 effects to corresponding -1 effect
.decrementStatMod
	ld c, a
	ld b, $0
	add hl, bc
	ld b, [hl]
	dec b ; dec corresponding stat mod
	jp z, CantLowerAnymore ; if stat mod is 1 (-6), can't lower anymore
	ld a, [de]
	cp ATTACK_DOWN2_EFFECT - $16 ; $24
	jr c, .ok
	cp EVASION_DOWN2_EFFECT + $5 ; $44
	jr nc, .ok
	dec b ; stat down 2 effects only (dec mod again)
	jr nz, .ok
	inc b ; increment mod to 1 (-6) if it would become 0 (-7)
.ok
	ld [hl], b ; save modified mod
	ld a, c
	cp $4
	jr nc, UpdateLoweredStatDone ; jump for evasion/accuracy
	push hl
	push de
	ld hl, wEnemyMonAttack + 1
	ld de, wEnemyMonUnmodifiedAttack
	ldh a, [hWhoseTurn]
	and a
	jr z, .pointToStat
	ld hl, wBattleMonAttack + 1
	ld de, wPlayerMonUnmodifiedAttack
.pointToStat
	push bc
	sla c
	ld b, $0
	add hl, bc ; hl = modified stat
	ld a, c
	add e
	ld e, a
	jr nc, .noCarry
	inc d ; de = unmodified stat
.noCarry
	pop bc
	ld a, [hld]
	sub $1 ; can't lower stat below 1 (-6)
	jr nz, .recalculateStat
	ld a, [hl]
	and a
	jp z, CantLowerAnymore_Pop
.recalculateStat
; recalculate affected stat
; paralysis and burn penalties, as well as badge boosts are ignored
	push hl
	push bc
	ld hl, StatModifierRatios
	dec b
	sla b
	ld c, b
	ld b, $0
	add hl, bc
	pop bc
	xor a
	ldh [hMultiplicand], a
	ld a, [de]
	ldh [hMultiplicand + 1], a
	inc de
	ld a, [de]
	ldh [hMultiplicand + 2], a
	ld a, [hli]
	ldh [hMultiplier], a
	call Multiply
	ld a, [hl]
	ldh [hDivisor], a
	ld b, $4
	call Divide
	pop hl
	ldh a, [hProduct + 3]
	ld b, a
	ldh a, [hProduct + 2]
	or b
	jp nz, UpdateLoweredStat
	ldh [hMultiplicand + 1], a
	ld a, $1
	ldh [hMultiplicand + 2], a

UpdateLoweredStat:
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	pop de
	pop hl
UpdateLoweredStatDone:
	ld b, c
	inc b
	push de
	call PrintStatText
	pop de
	ld a, [de]
	cp $44
	jr nc, .ApplyBadgeBoostsAndStatusPenalties
 ; ~$~CHANGED: Check base power before skipping damage calculation.~$~
	ldh a, [hWhoseTurn] ; check who is using the move
	and a
	ld a, [wPlayerMovePower]
	jr z, .gotUsersPower2
	ld a, [wEnemyMovePower]
.gotUsersPower2
	and a ; Skip animation if damage dealing move
	jr nz, .ApplyBadgeBoostsAndStatusPenalties
	call PlayCurrentMoveAnimation2
.ApplyBadgeBoostsAndStatusPenalties
;	ldh a, [hWhoseTurn] ; ~$~REMOVED: Badge boosts are a mess, just get rid of them.~$~
;	and a
;	call nz, ApplyBadgeStatBoosts ; whenever the player uses a stat-down move, badge boosts get reapplied again to every stat,
	                              ; even to those not affected by the stat-up move (will be boosted further)
	ld hl, MonsStatsFellText
	call PrintText

; These where probably added given that a stat-down move affecting speed or attack will override
; the stat penalties from paralysis and burn respectively.
; But they are always called regardless of the stat affected by the stat-down move.
	call QuarterSpeedDueToParalysis
	jp HalveAttackDueToBurn

CantLowerAnymore_Pop:
	pop de
	pop hl
	inc [hl]

CantLowerAnymore: ; ~$~CHANGED: Red++ code to print "[STAT] won't fall anymore!" instead of "Nothing happened!"~$~
	ld a, [de]
	cp ATTACK_DOWN_SIDE_EFFECT
	ret nc
	ld b, c
	inc b
	call PrintStatText
	ld hl, WontFallAnymoreText
	jp PrintText

MoveMissed:
	ld a, [de]
	cp $44
	ret nc
	jp ConditionalPrintButItFailed

MonsStatsFellText:
	text_far _MonsStatsFellText
	text_asm
	ld hl, FellText
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerMoveEffect]
	jr z, .playerTurn
	ld a, [wEnemyMoveEffect]
.playerTurn
; check if the move's effect decreases a stat by 2
	cp BURN_EFFECT ; ~$~CHANGED: This effect is positioned where BIDE_EFFECT used to be.~$~
	ret c
	cp ATTACK_DOWN_SIDE_EFFECT
	ret nc
	ld hl, GreatlyFellText
	ret

GreatlyFellText:
	text_pause
	text_far _GreatlyFellText
; fallthrough
FellText:
	text_far _FellText
	text_end
	
WontFallAnymoreText:
	text_far _WontFallAnymoreText
	text_end

PrintStatText:
	ld hl, StatModTextStrings
	ld c, "@"
.findStatName_outer
	dec b
	jr z, .foundStatName
.findStatName_inner
	ld a, [hli]
	cp c
	jr z, .findStatName_outer
	jr .findStatName_inner
.foundStatName
	ld de, wStringBuffer
	ld bc, $a
	jp CopyData

INCLUDE "data/battle/stat_mod_names.asm"

INCLUDE "data/battle/stat_modifiers.asm"

BurnEffect:
	jpfar BurnEffect_

;BideEffect: ~$~REMOVED~$~
;	ld hl, wPlayerBattleStatus1
;	ld de, wPlayerBideAccumulatedDamage
;	ld bc, wPlayerNumAttacksLeft
;	ldh a, [hWhoseTurn]
;	and a
;	jr z, .bideEffect
;	ld hl, wEnemyBattleStatus1
;	ld de, wEnemyBideAccumulatedDamage
;	ld bc, wEnemyNumAttacksLeft
;.bideEffect
;	set STORING_ENERGY, [hl] ; mon is now using bide
;	xor a
;	ld [de], a
;	inc de
;	ld [de], a
;	ld [wPlayerMoveEffect], a
;	ld [wEnemyMoveEffect], a
;	call BattleRandom
;	and $1
;	inc a
;	inc a
;	ld [bc], a ; set Bide counter to 2 or 3 at random
;	ldh a, [hWhoseTurn]
;	add XSTATITEM_ANIM
;	jp PlayBattleAnimation2

ThrashPetalDanceEffect:
	ld hl, wPlayerBattleStatus1
	ld de, wPlayerNumAttacksLeft
	ldh a, [hWhoseTurn]
	and a
	jr z, .thrashPetalDanceEffect
	ld hl, wEnemyBattleStatus1
	ld de, wEnemyNumAttacksLeft
.thrashPetalDanceEffect
	set THRASHING_ABOUT, [hl] ; mon is now using thrash/petal dance
	call BattleRandom
	and $1
	inc a
	inc a
	ld [de], a ; set thrash/petal dance counter to 2 or 3 at random
	ldh a, [hWhoseTurn]
	add SHRINKING_SQUARE_ANIM
	jp PlayAlternativeAnimation2

SwitchAndTeleportEffect: ; ~$~CHANGED: Teleport now functions like LGPE and later games. Function moved to own file.~$~
	jpfar SwitchAndTeleportEffect_
	
TeleportWildPokemon:: ; ~$~CHANGED: Separated from teleport effect and kept in core due to BattleRandom call.~$~
.rejectionSampleLoop
	call BattleRandom
	cp e
	jr nc, .rejectionSampleLoop
	srl d
	srl d
	cp d
	ret

TwoToFiveAttacksEffect:
	ld hl, wPlayerBattleStatus1
	ld de, wPlayerNumAttacksLeft
	ld bc, wPlayerNumHits
	ldh a, [hWhoseTurn]
	and a
	jr z, .twoToFiveAttacksEffect
	ld hl, wEnemyBattleStatus1
	ld de, wEnemyNumAttacksLeft
	ld bc, wEnemyNumHits
.twoToFiveAttacksEffect
	bit ATTACKING_MULTIPLE_TIMES, [hl] ; is mon attacking multiple times?
	ret nz
	set ATTACKING_MULTIPLE_TIMES, [hl] ; mon is now attacking multiple times
	ld hl, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .setNumberOfHits
	ld hl, wEnemyMoveEffect
.setNumberOfHits
	ld a, [hl]
	cp TWINEEDLE_EFFECT
	jr z, .twineedle
	cp ATTACK_TWICE_EFFECT
	ld a, $2 ; number of hits it's always 2 for ATTACK_TWICE_EFFECT
	jr z, .saveNumberOfHits
; for TWO_TO_FIVE_ATTACKS_EFFECT 3/8 chance for 2 and 3 hits, and 1/8 chance for 4 and 5 hits
	call BattleRandom
	and $3
	cp $2
	jr c, .gotNumHits
; if the number of hits was greater than 2, re-roll again for a lower chance
	call BattleRandom
	and $3
.gotNumHits
	inc a
	inc a
.saveNumberOfHits
	ld [de], a
	ld [bc], a
	ret
.twineedle
	ld a, POISON_SIDE_EFFECT1
	ld [hl], a ; set Twineedle's effect to poison effect
	jr .saveNumberOfHits
	
ProtectEffect: ; ~$~ADDED~$~
	call ProtectChance
	ret c
	ld hl, wPlayerBattleStatus1
	ldh a, [hWhoseTurn]
	and a
	jr z, .protectEffect
	ld hl, wEnemyBattleStatus1
.protectEffect
	set PROTECTING_SELF, [hl] ; mon is now invulnerable to typical attacks
	call PlayCurrentMoveAnimation
	ld hl, ProtectedSelfText
	jp PrintText
	
ProtectChance:
	ld hl, wPlayerBattleStatus2
	ld de, wPlayerProtectCount
	ldh a, [hWhoseTurn]
	and a
	jr z, .got_count
	ld hl, wEnemyBattleStatus2
	ld de, wEnemyProtectCount
.got_count
; Can't have a substitute.
	ld a, [hl]
	bit HAS_SUBSTITUTE_UP, a
	jr nz, .failed
; Halve the chance of a successful Protect for each consecutive use.
	ld b, $ff
	ld a, [de]
	ld c, a
.loop
	ld a, c
	and a
	jr z, .done
	dec c
	srl b
	ld a, b
	and a
	jr nz, .loop
	jr .failed
.done
.rand
	call BattleRandom
	and a
	jr z, .rand
	dec a
	cp b
	jr nc, .failed
; Another consecutive Protect use.
	ld a, [de]
	inc a
	ld [de], a
	and a
	ret
.failed
	xor a
	ld [de], a
	ld c, 50
	call DelayFrames
	ld hl, ButItFailedText
	call PrintText
	scf
	ret

ProtectedSelfText:
	text_far _ProtectedSelfText
	text_end

FlinchSideEffect:
	call CheckTargetSubstitute
	ret nz
	ld hl, wEnemyBattleStatus1
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .flinchSideEffect
	ld hl, wPlayerBattleStatus1
	ld de, wEnemyMoveEffect
.flinchSideEffect
	ld a, [de]
	cp FLINCH_SIDE_EFFECT1
	ld b, 10 percent + 1 ; chance of flinch (FLINCH_SIDE_EFFECT1)
	jr z, .gotEffectChance
	cp FLINCH_SIDE_EFFECT2 ; ~$~ADDED: Flinch moves have a 10, 20 or 30% chance.~$~
	ld b, 20 percent + 1 ; chance of flinch (FLINCH_SIDE_EFFECT2)
	jr z, .gotEffectChance
	ld b, 30 percent + 1 ; chance of flinch otherwise
.gotEffectChance
	call BattleRandom
	cp b
	ret nc
	set FLINCHED, [hl] ; set mon's status to flinching
	call ClearHyperBeam
	ret

OneHitKOEffect:
	jpfar OneHitKOEffect_

ChargeEffect: ; ~$~CHANGED: Separate move anims from other battle anims.~$~
	ld hl, wPlayerBattleStatus1
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	ld b, XSTATITEM_ANIM
	jr z, .chargeEffect
	ld hl, wEnemyBattleStatus1
	ld de, wEnemyMoveEffect
	ld b, XSTATITEM_DUPLICATE_ANIM
.chargeEffect
	set CHARGING_UP, [hl]
	ld a, [de]
	dec de ; de contains enemy or player MOVENUM
	cp FLY_EFFECT
	jr nz, .notFly
	set INVULNERABLE, [hl] ; mon is now invulnerable to typical attacks (fly/dig)
	ld b, TELEPORT ; load Teleport's animation
;;; teleport is the only battle move animation so we handle it separately
	xor a
	ld [wAnimationType], a
	ld a, b
	call PlayBattleAnimation
	jr .doneWithAnimations
;;;
.notFly
	ld a, [de]
	cp DIG
	jr nz, .notDigOrFly
	set INVULNERABLE, [hl] ; mon is now invulnerable to typical attacks (fly/dig)
	ld b, SLIDE_DOWN_ANIM
.notDigOrFly
	xor a
	ld [wAnimationType], a
	ld a, b
	call PlayAlternativeAnimation
.doneWithAnimations
	ld a, [de]
	ld [wChargeMoveNum], a
	ld hl, ChargeMoveEffectText
	jp PrintText

ChargeMoveEffectText: ; ~$~CHANGED: Removed checks for moves that are either removed, or no longer a charge move.~$~
	text_far _ChargeMoveEffectText
	text_asm
	ld a, [wChargeMoveNum]
;	cp RAZOR_WIND
;	ld hl, MadeWhirlwindText
;	jr z, .gotText
	cp SOLARBEAM
	ld hl, TookInSunlightText
	jr z, .gotText
;	cp SKULL_BASH
;	ld hl, LoweredItsHeadText
;	jr z, .gotText
;	cp SKY_ATTACK
;	ld hl, SkyAttackGlowingText
;	jr z, .gotText
	cp FLY
	ld hl, FlewUpHighText
	jr z, .gotText
	cp DIG
	ld hl, DugAHoleText
.gotText
	ret

;MadeWhirlwindText:
;	text_far _MadeWhirlwindText
;	text_end

TookInSunlightText:
	text_far _TookInSunlightText
	text_end

;LoweredItsHeadText:
;	text_far _LoweredItsHeadText
;	text_end

;SkyAttackGlowingText:
;	text_far _SkyAttackGlowingText
;	text_end

FlewUpHighText:
	text_far _FlewUpHighText
	text_end

DugAHoleText:
	text_far _DugAHoleText
	text_end

TrappingEffect:
;;;;;;;;;; PureRGBnote: FIXED: trapping state won't be set if the pokemon is immune to the attack
	ldh a, [hWhoseTurn]
	and a
	jr z, .player
	call AIGetImmediateTypeEffectiveness
	jr .retIfImmune
.player
	call GetPlayerTypeEffectiveness
.retIfImmune
	; wTypeEffectiveness still in a here
	and a
	ret z
;;;;;;;;;;
	ld hl, wPlayerBattleStatus1
	ld de, wPlayerNumAttacksLeft
	ld bc, wEnemyMonType1
	ldh a, [hWhoseTurn]
	and a
	jr z, .trappingEffect
	ld hl, wEnemyBattleStatus1
	ld de, wEnemyNumAttacksLeft
	ld bc, wBattleMonType1
.trappingEffect
; ~$~CHANGED: Ghost-types cannot be trapped.~$~
	ld a, [bc]
	cp GHOST
	ret z
	inc bc
	ld a, [bc]
	cp GHOST
	ret z
;;;
	bit USING_TRAPPING_MOVE, [hl]
	ret nz
	call ClearHyperBeam ; since this effect is called before testing whether the move will hit,
                        ; the target won't need to recharge even if the trapping move missed
	set USING_TRAPPING_MOVE, [hl] ; mon is now using a trapping move
	call BattleRandom ; 3/8 chance for 2 and 3 attacks, and 1/8 chance for 4 and 5 attacks
	and $3
	cp $2
	jr c, .setTrappingCounter
	call BattleRandom
	and $3
.setTrappingCounter
	inc a
	ld [de], a
	ret

MistEffect:
	jpfar MistEffect_

FocusEnergyEffect:
	jpfar FocusEnergyEffect_

RecoilEffect:
	jpfar RecoilEffect_

ConfusionSideEffect2:
	call BattleRandom
	cp 30 percent ; chance of confusion
	ret nc
	jr ConfusionSideEffectSuccess

ConfusionSideEffect:
	call BattleRandom
	cp 10 percent ; chance of confusion
	ret nc
	jr ConfusionSideEffectSuccess

ConfusionEffect:
	call MoveHitTest
	ld a, [wMoveMissed]
	and a
	jr nz, ConfusionEffectFailed

DynamicPunchEffect:
ConfusionSideEffectSuccess:
	call CheckTargetSubstitute
	jr nz, ConfusionEffectFailed
	call CheckTargetSafeguard
	jr nz, ConfusionEffectFailed
	ldh a, [hWhoseTurn]
	and a
	ld hl, wEnemyBattleStatus1
	ld bc, wEnemyConfusedCounter
	ld a, [wPlayerMoveEffect]
	jr z, .confuseTarget
	ld hl, wPlayerBattleStatus1
	ld bc, wPlayerConfusedCounter
	ld a, [wEnemyMoveEffect]
.confuseTarget
	bit CONFUSED, [hl] ; is mon confused?
	jr nz, ConfusionEffectFailed
	set CONFUSED, [hl] ; mon is now confused
	push af
	call BattleRandom
	and $3
	inc a
	inc a
	ld [bc], a ; confusion status will last 2-5 turns
	pop af
	cp CONFUSION_EFFECT
	jr nz, .noMoveAnimation
	call PlayCurrentMoveAnimation2
.noMoveAnimation
	ld a, CONF_ANIM
	call PlayAlternativeAnimation2
	ld hl, BecameConfusedText
	jp PrintText

BecameConfusedText:
	text_far _BecameConfusedText
	text_end

ConfusionEffectFailed:
	cp CONFUSION_SIDE_EFFECT
	ret z
	cp DYNAMICPUNCH_EFFECT
	ret z
	cp CONFUSION_SIDE_EFFECT2
	ret z
	ld c, 50
	call DelayFrames
	jp ConditionalPrintButItFailed

ParalyzeEffect:
	jpfar ParalyzeEffect_
	
RapidSpinEffect: ; ~$~Located in "engine/battle/move_effects/haze.asm".~$~
	jpfar RapidSpinEffect_

SubstituteEffect:
	jpfar SubstituteEffect_

HyperBeamEffect:
	ld hl, wPlayerBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .hyperBeamEffect
	ld hl, wEnemyBattleStatus2
.hyperBeamEffect
	set NEEDS_TO_RECHARGE, [hl] ; mon now needs to recharge
	ret

ClearHyperBeam:
	push hl
	ld hl, wEnemyBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .playerTurn
	ld hl, wPlayerBattleStatus2
.playerTurn
	res NEEDS_TO_RECHARGE, [hl] ; mon no longer needs to recharge
	pop hl
	ret

;RageEffect: ~$~REMOVED~$~
;	ld hl, wPlayerBattleStatus2
;	ldh a, [hWhoseTurn]
;	and a
;	jr z, .player
;	ld hl, wEnemyBattleStatus2
;.player
;	set USING_RAGE, [hl] ; mon is now in "rage" mode
;	ret

MimicEffect:
	ld c, 50
	call DelayFrames
	call MoveHitTest
	ld a, [wMoveMissed]
	and a
	jr nz, .mimicMissed
	ldh a, [hWhoseTurn]
	and a
	ld hl, wBattleMonMoves
	ld a, [wPlayerBattleStatus1]
	jr nz, .enemyTurn
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	jr nz, .letPlayerChooseMove
	ld hl, wEnemyMonMoves
	ld a, [wEnemyBattleStatus1]
.enemyTurn
	bit INVULNERABLE, a
	jr nz, .mimicMissed
.getRandomMove
	push hl
	call BattleRandom
	and $3
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, .getRandomMove
	ld d, a
	ldh a, [hWhoseTurn]
	and a
	ld hl, wBattleMonMoves
	ld a, [wPlayerMoveListIndex]
	jr z, .playerTurn
	ld hl, wEnemyMonMoves
	ld a, [wEnemyMoveListIndex]
	jr .playerTurn
.letPlayerChooseMove
	ld a, [wEnemyBattleStatus1]
	bit INVULNERABLE, a
	jr nz, .mimicMissed
	ld a, [wCurrentMenuItem]
	push af
	ld a, $1
	ld [wMoveMenuType], a
	call MoveSelectionMenu
	call LoadScreenTilesFromBuffer1
	ld hl, wEnemyMonMoves
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, $0
	add hl, bc
	ld d, [hl]
	pop af
	ld hl, wBattleMonMoves
.playerTurn
	ld c, a
	ld b, $0
	add hl, bc
	ld a, d
	ld [hl], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call PlayCurrentMoveAnimation
	ld hl, MimicLearnedMoveText
	jp PrintText
.mimicMissed
	jp PrintButItFailedText_

MimicLearnedMoveText:
	text_far _MimicLearnedMoveText
	text_end

LeechSeedEffect:
	jpfar LeechSeedEffect_

SplashEffect:
	call PlayCurrentMoveAnimation
	jp PrintNoEffectText

DisableEffect:
	call MoveHitTest
	ld a, [wMoveMissed]
	and a
	jr nz, .moveMissed
	ld de, wEnemyDisabledMove
	ld hl, wEnemyMonMoves
	ldh a, [hWhoseTurn]
	and a
	jr z, .disableEffect
	ld de, wPlayerDisabledMove
	ld hl, wBattleMonMoves
.disableEffect
; no effect if target already has a move disabled
	ld a, [de]
	and a
	jr nz, .moveMissed
.pickMoveToDisable
	push hl
	call BattleRandom
	and $3
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, .pickMoveToDisable ; loop until a non-00 move slot is found
	ld [wNamedObjectIndex], a ; store move number
	push hl
	ldh a, [hWhoseTurn]
	and a
	ld hl, wBattleMonPP
	jr nz, .enemyTurn
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	pop hl ; wEnemyMonMoves
;	jr nz, .playerTurnNotLinkBattle
; .playerTurnLinkBattle
	push hl
	ld hl, wEnemyMonPP
.enemyTurn
	push hl
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	and $3f
	pop hl ; wBattleMonPP or wEnemyMonPP
	jr z, .moveMissedPopHL ; nothing to do if all moves have no PP left
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jr z, .pickMoveToDisable ; pick another move if this one had 0 PP
.playerTurnNotLinkBattle
; non-link battle enemies have unlimited PP so the previous checks aren't needed
	;	call BattleRandom
;	and $7
;	inc a ; 1-8 turns disabled
	ld a, $5 ; ~$~CHANGED: Disable always works for 4 turns.~$~
	inc c ; move 1-4 will be disabled
	swap c
	add c ; map disabled move to high nibble of wEnemyDisabledMove / wPlayerDisabledMove
	ld [de], a
	call PlayCurrentMoveAnimation2
	ld hl, wPlayerDisabledMoveNumber
	ldh a, [hWhoseTurn]
	and a
	jr nz, .printDisableText
	inc hl ; wEnemyDisabledMoveNumber
.printDisableText
	ld a, [wNamedObjectIndex] ; move number
	ld [hl], a
	call GetMoveName
	ld hl, MoveWasDisabledText
	jp PrintText
.moveMissedPopHL
	pop hl
.moveMissed
	jp PrintButItFailedText_

MoveWasDisabledText:
	text_far _MoveWasDisabledText
	text_end

PayDayEffect:
	jpfar PayDayEffect_

ConversionEffect:
	jpfar ConversionEffect_

HazeEffect:
	jpfar HazeEffect_

HealEffect:
	jpfar HealEffect_

TransformEffect:
	jpfar TransformEffect_

ReflectLightScreenEffect:
	jpfar ReflectLightScreenEffect_
	
; ~$~ADDED: Various buff effects from Red++.~$~
AttackUpSideEffect:
; 20% chance to boost stat
	call BattleRandom
	cp 20 percent + 1 ; chance for side effects
	ret nc
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	xor a
	ld [wEnemyMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jp StatModifierUpEffect
.notEnemyTurn
	xor a
	ld [wPlayerMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jp StatModifierUpEffect

DefenseUpSideEffect:
; 20% chance to boost stat
	call BattleRandom
	cp 20 percent + 1 ; chance for side effects
	ret nc
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	xor a
	ld [wEnemyMoveNum], a
	ld a, DEFENSE_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jp StatModifierUpEffect
.notEnemyTurn
	xor a
	ld [wPlayerMoveNum], a
	ld a, DEFENSE_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jp StatModifierUpEffect
	
AllStatsUpEffect:
; 10% chance to boost all stats
	call BattleRandom
	cp 10 percent + 1
	ret nc
	
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	xor a
	ld [wEnemyMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	call StatModifierUpEffect
	ld a, DEFENSE_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	call StatModifierUpEffect
	ld a, SPEED_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	call StatModifierUpEffect
	ld a, SPECIAL_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jp StatModifierUpEffect
.notEnemyTurn
	xor a
	ld [wPlayerMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	call StatModifierUpEffect
	ld a, DEFENSE_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	call StatModifierUpEffect
	ld a, SPEED_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	call StatModifierUpEffect
	ld a, SPECIAL_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jp StatModifierUpEffect
;;;

HoneClawsEffect:
	jpfar HoneClawsEffect_

GrowthEffect:
	jpfar GrowthEffect_

DragonDanceEffect:
	jpfar DragonDanceEffect_

CosmicPowerEffect:
	jpfar CosmicPowerEffect_
	
CurseEffect:
	jpfar CurseEffect_
	
FangEffect:
	call FlinchSideEffect
	jp FreezeBurnParalyzeEffect

RecoilStatusEffect:
	call RecoilEffect
	jp FreezeBurnParalyzeEffect
	
HealBellEffect: ; ~$~Located in "engine/battle/move_effects/heal.asm".~$~
	jpfar HealBellEffect_

NothingHappenedText:
	text_far _NothingHappenedText
	text_end

PrintNoEffectText:
	ld hl, NoEffectText
	jp PrintText

NoEffectText:
	text_far _NoEffectText
	text_end

ConditionalPrintButItFailed:
	ld a, [wMoveDidntMiss]
	and a
	ret nz ; return if the side effect failed, yet the attack was successful

PrintButItFailedText_:
	ld hl, ButItFailedText
	jp PrintText

ButItFailedText:
	text_far _ButItFailedText
	text_end

PrintDidntAffectText:
	ld hl, DidntAffectText
	jp PrintText

DidntAffectText:
	text_far _DidntAffectText
	text_end

IsUnaffectedText:
	text_far _IsUnaffectedText
	text_end

PrintMayNotAttackText:
	ld hl, ParalyzedMayNotAttackText
	jp PrintText
	
PrintBurnedText:
	ld hl, BurnedText
	jp PrintText

ParalyzedMayNotAttackText:
	text_far _ParalyzedMayNotAttackText
	text_end

CheckTargetSubstitute:
	push hl
	ld hl, wEnemyBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .next1
	ld hl, wPlayerBattleStatus2
.next1
	bit HAS_SUBSTITUTE_UP, [hl]
	pop hl
	ret
	
CheckTargetSafeguard: ; ~$~ADDED: Copied Substitute's routine and modified it to check for having used Safeguard.~$~
	push hl
	ld hl, wEnemyBattleStatus3
	ldh a, [hWhoseTurn]
	and a
	jr z, .next2
	ld hl, wPlayerBattleStatus3
.next2
	bit HAS_SAFEGUARD_UP, [hl]
	pop hl
	ret

PlayCurrentMoveAnimation2:
; animation at MOVENUM will be played unless MOVENUM is 0
; plays wAnimationType 3 or 6
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerMoveNum]
	jr z, .notEnemyTurn
	ld a, [wEnemyMoveNum]
.notEnemyTurn
	and a
	ret z

PlayBattleAnimation2: ; ~$~CHANGED: Separate move anims from other battle anims.~$~
; play animation ID at a and animation type 6 or 3
	ld [wAnimationID], a
; zero out the alternative animation
	xor a 
	ld [wAltAnimationID], a
GotAnimationID:
	ldh a, [hWhoseTurn]
	and a
	ld a, ANIMATIONTYPE_SHAKE_SCREEN_HORIZONTALLY_SLOW_2
	jr z, .storeAnimationType
	ld a, ANIMATIONTYPE_SHAKE_SCREEN_HORIZONTALLY_SLOW
.storeAnimationType
	ld [wAnimationType], a
	jp PlayBattleAnimationGotID
	
PlayAlternativeAnimation2:
	ld [wAltAnimationID], a
	jr GotAnimationID

PlayCurrentMoveAnimation: ; ~$~CHANGED: Separate move anims from other battle anims.~$~
; animation at MOVENUM will be played unless MOVENUM is 0
; resets wAnimationType
	xor a
	ld [wAnimationType], a
;;; check for which type of animation to play
	ld a, [wAltAnimationID]
	and a
	jr nz, PlayAlternativeAnimation
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerMoveNum]
	jr z, .notEnemyTurn
	ld a, [wEnemyMoveNum]
.notEnemyTurn
	and a
	ret z
;;; fallthrough

PlayBattleAnimation: ; ~$~CHANGED: Separate move anims from other battle anims.~$~
; play animation ID at a and predefined animation type
	ld [wAnimationID], a
;;; zero out the alternative animation
	xor a 
	ld [wAltAnimationID], a

PlayBattleAnimationGotID:
; play animation at wAnimationID
	push hl
	push de
	push bc
	predef MoveAnimation
	pop bc
	pop de
	pop hl
	ret
	
PlayAlternativeAnimation: ; ~$~ADDED: Separate move anims from other battle anims.~$~
	ld [wAltAnimationID], a
	jr PlayBattleAnimationGotID
