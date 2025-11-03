SafariZoneCenterRestHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneCenterRestHouse_TextPointers:
	def_text_pointers
	dw_const SafariZoneCenterRestHouseGirlText,            TEXT_SAFARIZONECENTERRESTHOUSE_GIRL
	dw_const SafariZoneCenterRestHouseScientistText,       TEXT_SAFARIZONECENTERRESTHOUSE_SCIENTIST
	dw_const SafariZoneCenterRestHouseStepSellerText,      TEXT_SAFARIZONECENTERRESTHOUSE_STEP_SELLER
	dw_const SafariZoneCenterRestHouseDetailsText,         TEXT_SAFARIZONECENTERRESTHOUSE_DETAILS

SafariZoneCenterRestHouseGirlText:
	text_far _SafariZoneCenterRestHouseGirlText
	text_end

SafariZoneCenterRestHouseScientistText:
	text_far _SafariZoneCenterRestHouseScientistText
	text_end
	
SafariZoneCenterRestHouseDetailsText:
	text_far _SafariZoneRestHousePosterText
	text_end
	text_far _SafariZoneCenterRestHouseDetailsText
	text_end
	
SafariZoneCenterRestHouseStepSellerText: ; ~$~ADDED: Buy more steps in rest houses.~$~
	text_asm
	call StepSellerScript
	jp TextScriptEnd
	
StepSellerScript:
	ld hl, StepSellerWantMoreStepsText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .NevermindThen
	xor a
	ldh [hMoney], a
	ld a, $05
	ldh [hMoney + 1], a
	ld a, $00
	ldh [hMoney + 2], a
	call HasEnoughMoney
	jr nc, .success
	ld hl, CantAffordMoreStepsText
	jp PrintText

.success
	xor a
	ld [wPriceTemp], a
	ld a, $05
	ld [wPriceTemp + 1], a
	ld a, $00
	ld [wPriceTemp + 2], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, 3
	predef SubBCDPredef
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, BoughtMoreStepsText
	call PrintText
;	ld a, 30
;	ld [wNumSafariBalls], a
	ld a, HIGH(500)
	ld [wSafariSteps], a
	ld a, LOW(500)
	ld [wSafariSteps + 1], a
	ret

.NevermindThen
	ld hl, DontWantMoreStepsText
	jp PrintText

StepSellerWantMoreStepsText:
	text_far _StepSellerWantMoreStepsText
	text_end

BoughtMoreStepsText:
	text_far _StepSellerBoughtMoreStepsText
	text_end

DontWantMoreStepsText:
	text_far _StepSellerDontWantMoreStepsText
	text_end

CantAffordMoreStepsText:
	text_far _StepSellerCantAffordMoreStepsText
	text_end

