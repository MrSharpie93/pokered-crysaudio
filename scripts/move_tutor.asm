; ~$~ADDED: Red++'s Move Tutor functionality.~$~
; Handles Move Tutor functionality
; Costs ¥500, the same as the Move Relearner
; To make a person a tutor, have their Text Pointer point to a structure like this example

;ExamplePersonScript:
;	text_asm
;	ld a, Move Tutor Number
;	ld [wWhichTrade], a
;	callfar MoveTutorScript
;	jp TextScriptEnd

MoveTutorScriptSpecial::
; Handles choosing one of the elemental punches, then teaching the move
	call SaveScreenTilesToBuffer2
	call EnableAutoTextBoxDrawing

	; display the menu to choose which move to learn
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld a, $3
	ld [wMenuWatchedKeys], a
	ld a, $3
	ld [wMaxMenuItem], a
	ld a, $5
	ld [wTopMenuItemY], a
	ld a, $1
	ld [wTopMenuItemX], a
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	coord hl, 0, 3
	ld b, $8
	ld c, $d
	call TextBoxBorder
	call UpdateSprites
	coord hl, 2, 5
	ld de, ElementalPunchesText
	call PlaceString
	ld hl, wStatusFlags5
	res BIT_NO_TEXT_DELAY, [hl]
	call HandleMenuInput
	bit 1, a
	jr nz, .done
	ld a, [wCurrentMenuItem]
	cp $3
	jr z, .done

	; convert wCurrentMenuItem to a Move Tutor ID and continue
	inc a
	jr DisplayTeachTutorMoveText

.done
	ld hl,MoveTutorComeAgainText
	jp PrintText


MoveTutorScript::
; This is used by all other Move Tutors, who only teach one move
	call SaveScreenTilesToBuffer2
	call EnableAutoTextBoxDrawing
	ld a,[wWhichTrade] ; which move tutor is this?
	; fallthrough

DisplayTeachTutorMoveText:
	ld [wNamedObjectIndex], a
	callfar TutorToMove
	ld a,[wNamedObjectIndex]
	ld [wMoveNum], a
	call GetMoveName
	call CopyToStringBuffer ; copy name to wStringBuffer
	ld hl, TeachTutorMoveText
	call PrintText
	coord hl, 14, 7
	ld bc, $080f
	ld a,TWO_OPTION_MENU
	ld [wTextBoxID],a
	call DisplayTextBoxID ; yes/no menu
	ld a,[wCurrentMenuItem]
	and a
	jr z,.checkMoney
	; chose no
	ld hl,MoveTutorComeAgainText
	jp PrintText
	
.checkMoney ; If you said yes, Make sure you have money
	xor a
	ldh [$9f], a
	ldh [$a1], a
	ld a, 5
	ldh [$a0], a  ; 500 money
	call HasEnoughMoney
	jr nc, .chooseMon ; Go ahead if you have enough
	
	; not enough money
	ld hl, MoveTutorNotEnoughMoneyText
	jp PrintText

.chooseMon
	ld hl,wStringBuffer
	ld de,wTempMoveNameBuffer
	ld bc,14
	call CopyData
	xor a
	ld [wUpdateSpritesEnabled],a
	ld a, MOVE_TUTOR_MENU ; move tutor party menu
	ld [wPartyMenuTypeOrMessageID],a
	call DisplayPartyMenu
	push af
	ld hl,wTempMoveNameBuffer
	ld de,wStringBuffer
	ld bc,14
	call CopyData
	pop af
	jr nc,.checkIfAbleToLearnMove
; if the player cancelled teaching the move
	jr .done
	
.checkIfAbleToLearnMove
	callfar CanLearnTutor ; check if the pokemon can learn the move
	ld a,[wWhichPokemon]
	ld hl,wPartyMonNicks
	call GetPartyMonName
	ld a, [wTempMoveID]
	and a ; can the pokemon learn the move?
	jr nz,.checkIfAlreadyLearnedMove
; if the pokemon can't learn the move
	ld a,SFX_DENIED
	call PlaySoundWaitForCurrent ; play sound
	ld hl,MonCannotLearnTutorMoveText
	call PrintText
	jr .chooseMon

.checkIfAlreadyLearnedMove
	callfar CheckIfMoveIsKnown ; check if the pokemon already knows the move
	jr c,.chooseMon
	predef LearnMove ; teach move
	ld a, b
	and a ; did you learn the move, or cancel learning?
	jr z, .done

	; Charge 500 money if you learned it
	xor a
	ld [wWhichTrade], a
	ld [wTrainerFacingDirection], a
	ld a, $5
	ld [wTrainerEngageDistance], a
	ld hl, wTrainerFacingDirection
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef

.done
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	ld hl,MoveTutorComeAgainText
	jp PrintText

TeachTutorMoveText:
	text_far _TeachTutorMoveText
	text_end

MoveTutorComeAgainText:
	text_far _MoveTutorComeAgainText
	text_end

MonCannotLearnTutorMoveText:
	text_far _MonCannotLearnTutorMoveText
	text_end

MoveTutorNotEnoughMoneyText:
	text_far _MoveTutorNotEnoughMoneyText
	text_end

ElementalPunchesText:
	db   "FIRE PUNCH"
	next "ICE PUNCH"
	next "THUNDERPUNCH"
	next "CANCEL@"
