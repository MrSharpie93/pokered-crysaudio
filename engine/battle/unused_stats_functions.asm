; ~$~CHANGED: Putting special stat moves that don't call BattleRandom here, since the original contents did nothing.~$~
; These effects are all built off of Red++'s framework, if not outright borrowed.
	
HoneClawsEffect_:
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wEnemyMoveNum], a
	ld a, ACCURACY_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jpfar StatModifierUpEffect
.notEnemyTurn
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wPlayerMoveNum], a
	ld a, ACCURACY_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jpfar StatModifierUpEffect

GrowthEffect_:
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	ld a, SPECIAL_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wEnemyMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jpfar StatModifierUpEffect
.notEnemyTurn
	ld a, SPECIAL_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wPlayerMoveNum], a
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jpfar StatModifierUpEffect
	
DragonDanceEffect_:
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wEnemyMoveNum], a
	ld a, SPEED_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jpfar StatModifierUpEffect
.notEnemyTurn
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wPlayerMoveNum], a
	ld a, SPEED_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jpfar StatModifierUpEffect
	
CosmicPowerEffect_:
	ld a, [hWhoseTurn]
	and a
	jr z, .notEnemyTurn
; Enemy's turn
	ld a, DEFENSE_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wEnemyMoveNum], a
	ld a, SPECIAL_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	jpfar StatModifierUpEffect
.notEnemyTurn
	ld a, DEFENSE_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wPlayerMoveNum], a
	ld a, SPECIAL_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	jpfar StatModifierUpEffect
