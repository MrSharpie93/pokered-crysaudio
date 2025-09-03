TohjoFalls_Script:
	call EnableAutoTextBoxDrawing
;	ld hl, TohjoFalls_ScriptPointers
;	ld a, [wTohjoFallsCurScript]
;	call ExecuteCurMapScriptInTable
;	ld [wTohjoFallsCurScript], a
	ret

;TohjoFalls_ScriptPointers:
;	def_script_pointers
;	dw_const CheckFightingMapTrainers,              SCRIPT_TOHJOFALLS_DEFAULT
;	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_TOHJOFALLS_START_BATTLE
;	dw_const EndTrainerBattle,                      SCRIPT_TOHJOFALLS_END_BATTLE
;	dw_const TohjoFallsBeatGiovanniScript,    SCRIPT_TOHJOFALLS_BEAT_GIOVANNI

;TohjoFallsBeatGiovanniScript:
;	ld a, [wIsInBattle]
;	cp $ff
;	jp z, TohjoFallsSetDefaultScript
;	call UpdateSprites
;	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
;	ld [wJoyIgnore], a
;	SetEvent EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI
;	ld a, TEXT_TOHJOFALLS_GIOVANNI_HOPE_WE_MEET_AGAIN
;	ldh [hTextID], a
;	call DisplayTextID
;	call GBFadeOutToBlack
;	ld a, HS_ROCKET_HIDEOUT_B4F_GIOVANNI
;	ld [wMissableObjectIndex], a
;	predef HideObject
;	ld a, HS_ROCKET_HIDEOUT_B4F_ITEM_4
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	call UpdateSprites
;	call GBFadeInFromBlack
;	xor a
;	ld [wJoyIgnore], a
;	ld hl, wCurrentMapScriptFlags
;	set BIT_CUR_MAP_LOADED_1, [hl]
;	ld a, SCRIPT_TohjoFalls_DEFAULT
;	ld [wTohjoFallsCurScript], a
;	ld [wCurMapScript], a
;	ret

TohjoFalls_TextPointers:
	def_text_pointers
	dw_const TohjoFallsGiovanniText,                TEXT_TOHJOFALLS_GIOVANNI
	dw_const PickUpItemText,                        TEXT_TOHJOFALLS_DUSK_STONE
	
TohjoFallsGiovanniText:
	text_far _TohjoFallsGiovanniText
	text_end
