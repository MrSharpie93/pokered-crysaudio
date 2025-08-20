SilphCo1F_Script:
	call EnableAutoTextBoxDrawing
;	CheckEvent EVENT_BEAT_SILPH_CO_GIOVANNI
;	ret z
;	CheckAndSetEvent EVENT_SILPH_CO_RECEPTIONIST_AT_DESK
;	ret nz
;	ld a, HS_SILPH_CO_1F_RECEPTIONIST
;	ld [wMissableObjectIndex], a
;	predef_jump ShowObject
	ld hl, SilphCo1F_ScriptPointers
	ld a, [wSilphCo1FCurScript] ; test
	jp CallFunctionInTable
	
SilphCo1F_ScriptPointers:
	def_script_pointers
	dw_const SilphCo1FDefaultScript,      SCRIPT_SILPHCO1F_DEFAULT
	dw_const SilphCo1FPlayerMovingScript, SCRIPT_SILPHCO1F_PLAYER_MOVING

SilphCo1FDefaultScript:
	ld a, [wYCoord]
	cp 1
	ret nz
	ld a, [wXCoord]
	cp 20
	ret nz
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, TEXT_SILPHCO1F_OUT_OF_SERVICE
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
	ld a, SCRIPT_SILPHCO1F_PLAYER_MOVING
	ld [wSilphCo1FCurScript], a
	ret

SilphCo1FPlayerMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, SCRIPT_SILPHCO1F_DEFAULT
	ld [wSilphCo1FCurScript], a
	ret

SilphCo1F_TextPointers:
	def_text_pointers
	dw_const SilphCo1FLinkReceptionistText, TEXT_SILPHCO1F_LINK_RECEPTIONIST
	dw_const SilphCo1FOfficerText,          TEXT_SILPHCO1F_OFFICER
	dw_const SilphCo1FOutOfServiceText,     TEXT_SILPHCO1F_OUT_OF_SERVICE

SilphCo1FLinkReceptionistText:
	text_far _SilphCo1FLinkReceptionistText
	text_end
	
SilphCo1FOfficerText:
	text_far _SilphCo1FOfficerText
	text_end
	
SilphCo1FOutOfServiceText:
	text_far _SilphCo1FOutOfServiceText
	text_end
