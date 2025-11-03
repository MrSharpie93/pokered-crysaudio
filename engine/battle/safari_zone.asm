;joenote - This function is bugged.
;		- It prints the wrong message for when the eating/angry state returns to neutral.
;		- It also resets the catch rate when the angry state ends but not the eating state.
;Might as well re-write this so that it works correctly. 

; PrintSafariZoneBattleText:
	; ld hl, wSafariBaitFactor
	; ld a, [hl]
	; and a
	; jr z, .no_bait
	; dec [hl]
	; ld hl, SafariZoneEatingText
	; jr .done
; .no_bait
	; dec hl
	; ld a, [hl]
	; and a
	; ret z
	; dec [hl]
	; ld hl, SafariZoneAngryText
	; jr nz, .done
	; push hl
	; ld a, [wEnemyMonSpecies]
	; ld [wCurSpecies], a
	; call GetMonHeader
	; ld a, [wMonHCatchRate]
	; ld [wEnemyMonActualCatchRate], a
	; pop hl
; .done
	; push hl
	; call LoadScreenTilesFromBuffer1
	; pop hl
	; jp PrintText

; ~$~CHANGED: jojobear13 rewrite of this function.~$~
PrintSafariZoneBattleText:
	ld hl, wSafariBaitFactor
	ld a, [hl]
	and a
	jr z, .checkAngry
.isEating
	dec [hl]	;decrement the eating state counter
	jr z, .resetCatchRate	;if counter hit zero, return to neutral state
	ld hl, SafariZoneEatingText
	jr .print
	
.checkAngry
	dec hl	;point HL towards the angry state counter
	ld a, [hl]
	and a
	ret z	;if not angry or eating, go ahead and return because the state is already neutral
.isAngry
	dec [hl]	;decrement the angry state counter
	jr z, .resetCatchRate	;if counter hit zero, return to neutral state
	ld hl, SafariZoneAngryText

.print
	push hl
	call LoadScreenTilesFromBuffer1
	pop hl
	jp PrintText

.resetCatchRate	;Dont jump to printing anything. Just go back to neutral state and return.
	push hl
	ld a, [wEnemyMonSpecies]
	ld [wCurSpecies], a
	call GetMonHeader
	ld a, [wMonHCatchRate]
	ld [wEnemyMonActualCatchRate], a
	pop hl
	xor a	;we know that ret z is used for a neutral state, so let's xor A with itself here for safety.
	ret

SafariZoneEatingText:
	text_far _SafariZoneEatingText
	text_end

SafariZoneAngryText:
	text_far _SafariZoneAngryText
	text_end
