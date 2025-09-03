SilverCave3F_Script:
	call EnableAutoTextBoxDrawing
;	ld hl, SilverCave3F_ScriptPointers
;	ld a, [wSilverCave3FCurScript]
;	call ExecuteCurMapScriptInTable
;	ld [wSilverCave3FCurScript], a
	ret

;SilverCave3F_ScriptPointers:
;	def_script_pointers
;	dw_const CheckFightingMapTrainers,              SCRIPT_SILVERCAVE3F_DEFAULT
;	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SILVERCAVE3F_START_BATTLE
;	dw_const EndTrainerBattle,                      SCRIPT_SILVERCAVE3F_END_BATTLE
;	dw_const SilverCave3FBeatBlueScript,    SCRIPT_SILVERCAVE3F_BEAT_BLUE

;SilverCave3FBeatGiovanniScript:
;	ld a, [wIsInBattle]
;	cp $ff
;	jp z, SilverCave3FSetDefaultScript
;	call UpdateSprites
;	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
;	ld [wJoyIgnore], a
;	SetEvent EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI
;	ld a, TEXT_SILVERCAVE3F_GIOVANNI_HOPE_WE_MEET_AGAIN
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
;	ld a, SCRIPT_SilverCave3F_DEFAULT
;	ld [wSilverCave3FCurScript], a
;	ld [wCurMapScript], a
;	ret

SilverCave3F_TextPointers:
	def_text_pointers
	dw_const SilverCave3FBlueText,                 TEXT_SILVERCAVE3F_BLUE
	
SilverCave3FBlueText:
	text_far _SilverCave3FBlueText
	text_end
