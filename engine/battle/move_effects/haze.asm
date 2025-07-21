HazeEffect_: ; ~$~CHANGED: Code from pokered-restored to improve Haze.~$~
	ld a, $7
; store 7 on every stat mod
	ld hl, wPlayerMonAttackMod
	call ResetStatMods
	ld hl, wEnemyMonAttackMod
	call ResetStatMods
; copy unmodified stats to battle stats
	ld hl, wPlayerMonUnmodifiedAttack
	ld de, wBattleMonAttack
	call ResetStats
	ld hl, wEnemyMonUnmodifiedAttack
	ld de, wEnemyMonAttack
	call ResetStats

;cure statuses for both pokemon
	xor a
	ld [wEnemyMonStatus], a 
	ld [wEnemyToxicCounter], a	
	ld [wPlayerToxicCounter], a	
	ld [wBattleMonStatus], a 
	ld [wPlayerDisabledMove], a
	ld [wEnemyDisabledMove], a
	ld hl, wPlayerDisabledMoveNumber
	ld [hli], a
	ld [hl], a
	ld hl, wPlayerBattleStatus1
	call CureVolatileStatuses
	ld hl, wEnemyBattleStatus1
	call CureVolatileStatuses
	ld hl, PlayCurrentMoveAnimation
	call CallBankF
	ld hl, StatusChangesEliminatedText
	jp PrintText

CureVolatileStatuses:
	res CONFUSED, [hl]
	inc hl ; BATTSTATUS2
	ld a, [hl]
	; clear USING_X_ACCURACY, PROTECTED_BY_MIST, GETTING_PUMPED, and SEEDED statuses
	and ~((1 << USING_X_ACCURACY) | (1 << PROTECTED_BY_MIST) | (1 << GETTING_PUMPED) | (1 << SEEDED))
	ld [hli], a ; BATTSTATUS3
	ld a, [hl]
	and %11110000 | (1 << TRANSFORMED) ; clear Bad Poison, Reflect and Light Screen statuses
	ld [hl], a
	ret

ResetStatMods:
	ld b, $8
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

ResetStats:
	ld b, $8
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	ret

StatusChangesEliminatedText:
	text_far _StatusChangesEliminatedText
	text_end
	
RapidSpinEffect_: ; ~$~ADDED~$~
	ldh a, [hWhoseTurn]
	and a
	ld hl, wPlayerBattleStatus2
	ld de, wPlayerMoveEffect
	jr z, .rapidSpinEffect
	ld hl, wEnemyBattleStatus2
	ld de, wEnemyMoveEffect
.rapidSpinEffect
	push de
	bit SEEDED, [hl]
	jr z, .notSeeded
	res SEEDED, [hl]
	ld hl, ShedLeechSeedText
	call PrintText
.notSeeded
	pop de
	ld a, SPEED_UP1_EFFECT
	ld [de], a
	jpfar StatModifierUpEffect
	
ShedLeechSeedText:
	text_far _ShedLeechSeedText
	text_end