SwitchAndTeleportEffect_: ; ~$~CHANGED: Heavily modified version of PureRGB's Teleport effect, allowing for forcing a switch, but without the healing effect.~$~
	ldh a, [hWhoseTurn]
	and a
	jr nz, .handleEnemy
	call CheckCanForceSwitch
	jp z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wPlayerMoveNum]
	ld hl, TeleportedAwayText
	call .playAnimAndPrintText
	; need to save a bunch of values because we're going to switch pokemon
	ldh a, [hWhoseTurn]
	push af
	ld a, [wPlayerMonNumber]
	push af
	ld a, [wPlayerMoveNum]
	push af
	call SaveScreenTilesToBuffer1
	callfar ChooseNextMon
	pop af
	ld [wPlayerMoveNum], a
	pop af
	ld d, a
	pop af
	ld b, a
	ldh a, [hWhoseTurn]
	push af
	ld a, b
	ldh [hWhoseTurn], a
	pop af
	ldh [hWhoseTurn], a
	xor a
	ld [wPlayerMoveNum], a
	ret
.handleEnemy
	ld a, [wIsInBattle]
	dec a
	jr z, .wildBattle
	; not wild battle
	call CheckCanForceSwitchEnemy
	jr z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wEnemyMoveNum]
	ld hl, TeleportedAwayText
	call .playAnimAndPrintText
	jpfar SwitchEnemyMonNoText
.wildBattle
	ld a, [wBattleMonLevel]
	ld b, a
	ld a, [wCurEnemyLevel]
	cp b
	jr nc, .runAwaySuccessful
	add b
	ld c, a
	inc c
	ld d, b
	ld e, c
	callfar TeleportWildPokemon
	jr c, .failed
.runAwaySuccessful
	call ReadPlayerMonCurHPAndStatus
	xor a
	ld [wAnimationType], a
	inc a
	ld [wEscapedFromBattle], a
	ld a, [wEnemyMoveNum]
	ld hl, RanFromBattleText
.playAnimAndPrintText
	push hl
	ld [wAnimationID], a
	callfar PlayBattleAnimationGotID
	ld c, 20
	call DelayFrames
	pop hl
	jp PrintText
.failed
	ld c, 50
	call DelayFrames
	jpfar PrintButItFailedText_
	
RanFromBattleText:
	text_far _RanFromBattleText
	text_end

TeleportedAwayText:
	text_far _TeleportedAwayText
	text_end

; returns nz if the player/opponent can switch
CheckCanForceSwitch::
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPartyCount]
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1 - 1
	jr z, CheckCanForceSwitchEnemy.playerTurn
CheckCanForceSwitchEnemy::
	ld a, [wEnemyPartyCount]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1 - 1
.playerTurn
	ld e, a
	ld d, a
.partyMonsLoop
	xor a
	or [hl]
	inc hl
	or [hl]
	jr nz, .skipDec
	dec d
.skipDec
	add hl, bc
	dec e
	jr nz, .partyMonsLoop
	ld a, d
	dec a ; don't count current pokemon
	ret