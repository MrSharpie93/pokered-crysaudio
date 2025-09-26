CurseEffect_: ; Commenting this now that it seems to work as intended, so I never forget.~$~
	ld hl, wBattleMonType1 ; Start by loading the user's types into hl.
	ldh a, [hWhoseTurn]
	and a
	jr z, .player
	ld hl, wEnemyMonType1
.player
; Curse is different for Ghost-types.
	ld a, [hl] ; Check the user's types, to determine which function to use.
	cp GHOST
	jp z, .ghost ; If either type is Ghost, jump to that function.
	inc hl
	ld a, [hl]
	cp GHOST
	jp z, .ghost
	ldh a, [hWhoseTurn]
	and a
	jr z, .playerRaise
; Raise Attack and Defense, and lower Speed.
; Use the framework from Red++ for its multi-stat buff move effects.
	ld a, ATTACK_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wEnemyMoveNum], a ; Zero the user's move value, so the animation plays only once.
	ld a, DEFENSE_UP1_EFFECT
	ld [wEnemyMoveEffect], a
	callfar StatModifierUpEffect
	ldh a, [hWhoseTurn] ; Use the turn swap code from HandleBuildingRage to force it to the opposite turn.
	xor $01 ; flip turn for the stat modifier raising function
	ldh [hWhoseTurn], a
	ld hl, wPlayerMoveNum ; Save the opponent's move value and their effect, so we can restore them later.
	ld de, wPlayerMoveEffect
	xor a ; Zero the opponent's move value. This is done in scenarios where it isn't already 0 to prevent their move's animation from playing.
	ld [wPlayerMoveNum], a
	ld a, SPEED_DOWN1_EFFECT ; Temporarily force the opponent's move effect to this, so the user's speed will drop.
	ld [wPlayerMoveEffect], a
	push hl
	push de
	callfar StatModifierDownEffect
	pop hl
	pop de
	ld a, [hl] ; Now that the stat drop has happened, restore the opponent's original move values.
	ld [wPlayerMoveNum], a
	ld a, [de]
	ld [wPlayerMoveEffect], a
	ldh a, [hWhoseTurn]
	xor $01 ; flip turn back to the way it was
	ldh [hWhoseTurn], a
	ret
.playerRaise
; Raise Attack and Defense, and lower Speed.
; See the enemy version of this code for detailed explanations.
	ld a, ATTACK_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	xor a
	ld [wPlayerMoveNum], a
	ld a, DEFENSE_UP1_EFFECT
	ld [wPlayerMoveEffect], a
	callfar StatModifierUpEffect
	ldh a, [hWhoseTurn]
	xor $01 ; flip turn for the stat modifier raising function
	ldh [hWhoseTurn], a
	ld hl, wEnemyMoveNum
	ld de, wEnemyMoveEffect
	xor a
	ld [wEnemyMoveNum], a
	ld a, SPEED_DOWN1_EFFECT
	ld [wEnemyMoveEffect], a
	push hl
	push de
	callfar StatModifierDownEffect
	pop hl
	pop de
	ld a, [hl]
	ld [wEnemyMoveNum], a
	ld a, [de]
	ld [wEnemyMoveEffect], a
	ldh a, [hWhoseTurn]
	xor $01 ; flip turn back to the way it was
	ldh [hWhoseTurn], a
	ret
.ghost
; Reduces HP by half and puts a curse on the opponent.
	ld hl, wBattleMonMaxHP
	ld de, wPlayerSubstituteHP
	ld bc, wEnemyBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .curse
	ld hl, wEnemyMonMaxHP
	ld de, wEnemySubstituteHP
	ld bc, wPlayerBattleStatus2
.curse
; miss if the target is already cursed
	ld a, [bc]
	bit CURSED, a
	jr nz, .moveMissed
; quarter health to remove from user
; assumes max HP is 1023 or lower
	push bc
	ld a, [hli]
	ld b, [hl]
;	srl a
;	rr b
	srl a
	rr b ; max hp / 2
	push de
	ld de, wBattleMonHP - wBattleMonMaxHP
	add hl, de ; point hl to current HP low byte
	pop de
	ld a, b
	ld [de], a ; save copy of HP to subtract in wPlayerSubstituteHP/wEnemySubstituteHP
	ld a, [hld]
; subtract [max hp / 2] to current HP
	sub b
	ld d, a
	ld a, [hl]
	sbc 0
	pop bc
	jr c, .notEnoughHP ; underflow means user would be left with negative health
;;;;joenote - fix the bug to also check for exactly 0 hp
	inc d ;d is still holding the hp loss value from substitute. increment it by 1.
	dec d ;decrement it by one to change it back
	jr z, .notEnoughHP ; inc and dec set z if they result in zero values, if so then jump to the fail
;;;;
.userHasZeroOrMoreHP
	ldi [hl], a ; save resulting HP after subtraction into current HP
	ld [hl], d
	ld h, b
	ld l, c
	set CURSED, [hl]
	callfar PlayCurrentMoveAnimation
	ld hl, CursedText
	jr .printText
.moveMissed
	ld c, 50
	call DelayFrames
	ld hl, CurseFailText
	jr .printText
.notEnoughHP
	ld hl, CurseNotEnoughHPText
.printText
	jp PrintText

CursedText:
	text_far _CursedText
	text_end
	
CurseFailText:
	text_far _ButItFailedText
	text_end
	
CurseNotEnoughHPText:
	text_far _CurseNotEnoughHPText
	text_end
	