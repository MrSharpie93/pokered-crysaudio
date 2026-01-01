TextScriptEndingText::
	text_end

TextScriptEnd::
	ld hl, TextScriptEndingText
	ret

ExclamationText::
	text_far _ExclamationText
	text_end

GroundRoseText::
	text_far _GroundRoseText
	text_end

BoulderText:: ; ~$~CHANGED: Overworld HM usage.~$~
	text_far _BoulderText
	text_asm
	ld a, [wBeatGymFlags]
	cp 3
	jr c, .done 
	ld d, STRENGTH
	callfar HasPartyMove
	ld a, [wWhichTrade]
	and a 
	jr nz, .done 
	ld a, [wWhichPokemon]
	push af 
	call ManualTextScroll
	pop af 
	ld [wWhichPokemon], a 
	call GetPartyMonName2 
	predef PrintStrengthText
.done 
    jp TextScriptEnd 

MartSignText::
	text_far _MartSignText
	text_end

PokeCenterSignText::
	text_far _PokeCenterSignText
	text_end

PickUpItemText::
	text_asm
	predef PickUpItem
	jp TextScriptEnd
