NewBarkTown_Script:
	call EnableAutoTextBoxDrawing
	ld hl, NewBarkTown_ScriptPointers
	ld a, [wNewBarkTownCurScript]
	jp CallFunctionInTable

NewBarkTown_ScriptPointers:
	def_script_pointers
	dw_const NewBarkTownDefaultScript,                SCRIPT_NEWBARKTOWN_DEFAULT
	dw_const NewBarkTownPlayerMovingScript,           SCRIPT_NEWBARKTOWN_PLAYER_MOVING
	dw_const NewBarkTownWarpToPalletTownScript,       SCRIPT_NEWBARKTOWN_WARP_TO_PALLET_TOWN

NewBarkTownDefaultScript:
	ld a, [wYCoord]
	cp 4
	jr nz, .trynext1
	ld a, [wXCoord]
	cp 6 ; Elm's Lab
	jr z, .match
.trynext1
	ld a, [wYCoord]
	cp 6
	jr nz, .trynext2
	ld a, [wXCoord]
	cp 13 ; Gold's House
	jr z, .match
.trynext2
	ld a, [wYCoord]
	cp 14
	ret nz
	ld a, [wXCoord]
	cp 11 ; Elm's House
	ret nz
.match
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, TEXT_NEWBARKTOWN_ITS_LOCKED
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ldh [hJoyHeld], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
	ld [wJoyIgnore], a
	ld a, SCRIPT_NEWBARKTOWN_PLAYER_MOVING
	ld [wNewBarkTownCurScript], a
	ret
	
NewBarkTownPlayerMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, SCRIPT_NEWBARKTOWN_DEFAULT
	ld [wNewBarkTownCurScript], a
	ret
	
NewBarkTownWarpToPalletTownScript:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, PALLET_TOWN
	ldh [hWarpDestinationMap], a
	ld a, $3
	ld [wDestinationWarpID], a
	xor a
	ld [wLastMap], a
	ld hl, wStatusFlags3
	set BIT_WARP_FROM_CUR_SCRIPT, [hl]
	ld [wJoyIgnore], a;ld a, SCRIPT_NEWBARKTOWN_DEFAULT
	ld [wNewBarkTownCurScript], a
	ld [wCurMapScript], a
	ret

NewBarkTown_TextPointers:
	def_text_pointers
	dw_const NewBarkTownCoolTrainerFText,     TEXT_NEWBARKTOWN_COOLTRAINER_F
	dw_const NewBarkTownFisherText,           TEXT_NEWBARKTOWN_FISHER
	dw_const NewBarkTownFerrymanText,         TEXT_NEWBARKTOWN_FERRYMAN
	dw_const NewBarkTownLaprasText,           TEXT_NEWBARKTOWN_LAPRAS
	dw_const NewBarkTownElmsLabSignText,      TEXT_NEWBARKTOWN_ELMSLAB_SIGN
	dw_const NewBarkTownSignText,             TEXT_NEWBARKTOWN_SIGN
	dw_const NewBarkTownPlayersHouseSignText, TEXT_NEWBARKTOWN_PLAYERSHOUSE_SIGN
	dw_const NewBarkTownGoldsHouseSignText,   TEXT_NEWBARKTOWN_GOLDSHOUSE_SIGN
	dw_const NewBarkTownElmsHouseSignText,    TEXT_NEWBARKTOWN_ELMSHOUSE_SIGN
	dw_const NewBarkTownRoadworkText,         TEXT_NEWBARKTOWN_ROADWORK1
	dw_const NewBarkTownRoadworkText,         TEXT_NEWBARKTOWN_ROADWORK2
	dw_const NewBarkTownItsLockedText,        TEXT_NEWBARKTOWN_ITS_LOCKED

NewBarkTownCoolTrainerFText:
	text_far _NewBarkTownCoolTrainerFText
	text_end

NewBarkTownFisherText:
	text_far _NewBarkTownFisherText
	text_end
	
NewBarkTownFerrymanText:
	text_asm
	ld hl, .FerryToPalletTownText
	call PrintText
	ld a, SCRIPT_NEWBARKTOWN_WARP_TO_PALLET_TOWN
	ld [wNewBarkTownCurScript], a
	ld [wCurMapScript], a
	jp TextScriptEnd

.FerryToPalletTownText
	text_far _NewBarkTownFerrymanText
	text_end

NewBarkTownLaprasText:
	text_far _NewBarkTownLaprasText
	sound_cry_lapras
	text_end

NewBarkTownElmsLabSignText:
	text_far _NewBarkTownElmsLabSignText
	text_end

NewBarkTownSignText:
	text_far _NewBarkTownSignText
	text_end

NewBarkTownPlayersHouseSignText:
	text_far _NewBarkTownPlayersHouseSignText
	text_end
	
NewBarkTownGoldsHouseSignText:
	text_far _NewBarkTownGoldsHouseSignText
	text_end

NewBarkTownElmsHouseSignText:
	text_far _NewBarkTownElmsHouseSignText
	text_end
	
NewBarkTownRoadworkText:
	text_far _NewBarkTownRoadworkText
	text_end
	
NewBarkTownItsLockedText:
	text_far _NewBarkTownItsLockedText
	text_end
