AerodactylFossil:
	CheckEvent EVENT_BEAT_OSSIDACTYL
	jr nz, .noFossilAttack1
	ld a, FOSSIL_AERODACTYL
	ld [wCurPartySpecies], a
	call DisplayMonFrontSpriteInBox
	call EnableAutoTextBoxDrawing
	tx_pre AerodactylFossilText
	ret
.noFossilAttack1
	call EnableAutoTextBoxDrawing
	tx_pre EmptyDisplayText
	ret

AerodactylFossilText::
	text_far _AerodactylFossilText
	text_asm
	CheckEvent EVENT_MUSEUM_FOSSILS_ACTIVE
	jr z, .done1
	ld hl, FossilAttacksText
	call PrintText
	SetEvent EVENT_BEAT_OSSIDACTYL
	ld a, OSSIDACTYL
	call PlayCry
	call WaitForSoundToFinish
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, 0
	ld c, a
	ld a, MUSIC_MEET_MALE_TRAINER
	call PlayMusic
	ld a, OSSIDACTYL
	ld [wCurOpponent], a
	ld a, 40
	ld [wCurEnemyLevel], a
	xor a
	ld [wIsTrainerBattle], a
	ld a, $1
	ld [wMuseum1FCurScript], a
	ld [wCurMapScript], a
.done1
	jp TextScriptEnd

KabutopsFossil:
	CheckEvent EVENT_BEAT_SKELETOPS
	jr nz, .noFossilAttack2
	ld a, FOSSIL_KABUTOPS
	ld [wCurPartySpecies], a
	call DisplayMonFrontSpriteInBox
	call EnableAutoTextBoxDrawing
	tx_pre KabutopsFossilText
	ret
.noFossilAttack2
	call EnableAutoTextBoxDrawing
	tx_pre EmptyDisplayText
	ret

KabutopsFossilText::
	text_far _KabutopsFossilText
	text_asm
	CheckEvent EVENT_MUSEUM_FOSSILS_ACTIVE
	jr z, .done2
	ld hl, FossilAttacksText
	call PrintText
	SetEvent EVENT_BEAT_SKELETOPS
	ld a, SKELETOPS
	call PlayCry
	call WaitForSoundToFinish
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, 0
	ld c, a
	ld a, MUSIC_MEET_MALE_TRAINER
	call PlayMusic
	ld a, SKELETOPS
	ld [wCurOpponent], a
	ld a, 40
	ld [wCurEnemyLevel], a
	xor a
	ld [wIsTrainerBattle], a
	ld a, $1
	ld [wMuseum1FCurScript], a
	ld [wCurMapScript], a
.done2
	jp TextScriptEnd

DisplayMonFrontSpriteInBox:
; Displays a pokemon's front sprite in a pop-up window.
	ld a, 1
	ldh [hAutoBGTransferEnabled], a
	call Delay3
	xor a
	ldh [hWY], a
	call SaveScreenTilesToBuffer1
	ld a, MON_SPRITE_POPUP
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetMonHeader
	ld de, vChars1 tile $31
	call LoadMonFrontSprite
	ld a, $80
	ldh [hStartTileID], a
	hlcoord 10, 11
	predef AnimateSendingOutMon
	ld a, [wCurPartySpecies] ; ~$~FIXED: Fossil bones don't play cries.~$~
	cp FOSSIL_KABUTOPS
	jr z, .skipCry
	cp FOSSIL_AERODACTYL
	jr z, .skipCry
	call PlayCry
.skipCry
	call WaitForTextScrollButtonPress
	call LoadScreenTilesFromBuffer1
	call Delay3
	ld a, $90
	ldh [hWY], a
	ret
	
FossilAttacksText:
	text_far _FossilAttacksText
	text_end
	
EmptyDisplayText::
	text_far _EmptyDisplayText
	text_end
