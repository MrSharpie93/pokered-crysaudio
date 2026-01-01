SafariZoneGate_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SafariZoneGate_ScriptPointers
	ld a, [wSafariZoneGateCurScript]
	jp CallFunctionInTable

SafariZoneGate_ScriptPointers:
	def_script_pointers
	dw_const SafariZoneGateDefaultScript,                SCRIPT_SAFARIZONEGATE_DEFAULT
	dw_const SafariZoneGatePlayerMovingRightScript,      SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_RIGHT
	dw_const SafariZoneGateWouldYouLikeToJoinScript,     SCRIPT_SAFARIZONEGATE_WOULD_YOU_LIKE_TO_JOIN
	dw_const SafariZoneGatePlayerMovingUpScript,         SCRIPT_SAFARIZONEGATE_PLAYER_MOVING
	dw_const SafariZoneGatePlayerMovingDownScript,       SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN
	dw_const SafariZoneGateLeavingSafariScript,          SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI
	dw_const SafariZoneGateSetScriptAfterMoveScript,     SCRIPT_SAFARIZONEGATE_SET_SCRIPT_AFTER_MOVE
	EXPORT SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI ; used by engine/events/hidden_objects/safari_game.asm

SafariZoneGateDefaultScript:
	ld hl, .PlayerNextToSafariZoneWorker1CoordsArray
	call ArePlayerCoordsInArray
	ret nc
	ld a, TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_1
	ldh [hTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	xor a
	ldh [hJoyHeld], a
	ld a, SPRITE_FACING_RIGHT
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, [wCoordIndex]
	cp 1 ; index of second, lower entry in .PlayerNextToSafariZoneWorker1CoordsArray
	jr z, .player_not_next_to_worker
	ld a, SCRIPT_SAFARIZONEGATE_WOULD_YOU_LIKE_TO_JOIN
	ld [wSafariZoneGateCurScript], a
	ret
.player_not_next_to_worker
	ld a, D_RIGHT
	ld c, 1
	call SafariZoneEntranceAutoWalk
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_RIGHT
	ld [wSafariZoneGateCurScript], a
	ret

.PlayerNextToSafariZoneWorker1CoordsArray:
	dbmapcoord  3,  2
	dbmapcoord  4,  2
	db -1 ; end

SafariZoneGatePlayerMovingRightScript:
	call SafariZoneGateReturnSimulatedJoypadStateScript
	ret nz
SafariZoneGateWouldYouLikeToJoinScript:
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	call UpdateSprites
	ld a, TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_WOULD_YOU_LIKE_TO_JOIN
	ldh [hTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ret

SafariZoneGatePlayerMovingUpScript:
	call SafariZoneGateReturnSimulatedJoypadStateScript
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI
	ld [wSafariZoneGateCurScript], a
	ret

SafariZoneGateLeavingSafariScript:
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	CheckAndResetEvent EVENT_SAFARI_GAME_OVER
	jr z, .leaving_early
	ResetEventReuseHL EVENT_IN_SAFARI_ZONE
	call UpdateSprites
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_GOOD_HAUL_COME_AGAIN
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wNumSafariBalls], a
	ld a, D_DOWN
	ld c, 3
	call SafariZoneEntranceAutoWalk
	ld a, SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN
	ld [wSafariZoneGateCurScript], a
	jr .return
.leaving_early
	ld a, TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_LEAVING_EARLY
	ldh [hTextID], a
	call DisplayTextID
.return
	ret

SafariZoneGatePlayerMovingDownScript:
	call SafariZoneGateReturnSimulatedJoypadStateScript
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, SCRIPT_SAFARIZONEGATE_DEFAULT
	ld [wSafariZoneGateCurScript], a
	ret

SafariZoneGateSetScriptAfterMoveScript:
	call SafariZoneGateReturnSimulatedJoypadStateScript
	ret nz
	call Delay3
	ld a, [wNextSafariZoneGateScript]
	ld [wSafariZoneGateCurScript], a
	ret

SafariZoneEntranceAutoWalk:
	push af
	ld b, 0
	ld a, c
	ld [wSimulatedJoypadStatesIndex], a
	ld hl, wSimulatedJoypadStatesEnd
	pop af
	call FillMemory
	jp StartSimulatingJoypadStates

SafariZoneGateReturnSimulatedJoypadStateScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret

SafariZoneGate_TextPointers:
	def_text_pointers
	dw_const SafariZoneGateSafariZoneWorker1Text,                   TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1
	dw_const SafariZoneGateSafariZoneWorker2Text,                   TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER2
	dw_const SafariZoneGateSafariZoneWorker1Text,                   TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_1
	dw_const SafariZoneGateSafariZoneWorker1WouldYouLikeToJoinText, TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_WOULD_YOU_LIKE_TO_JOIN
	dw_const SafariZoneGateSafariZoneWorker1LeavingEarlyText,       TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_LEAVING_EARLY
	dw_const SafariZoneGateSafariZoneWorker1GoodHaulComeAgainText,  TEXT_SAFARIZONEGATE_SAFARI_ZONE_WORKER1_GOOD_HAUL_COME_AGAIN

SafariZoneGateSafariZoneWorker1Text:
	text_far _SafariZoneGateSafariZoneWorker1Text
	text_end

SafariZoneGateSafariZoneWorker1WouldYouLikeToJoinText: ; ~$~CHANGED: Poor Man's discount added from Yellow.~$~
	text_far _SafariZoneGateSafariZoneWorker1WouldYouLikeToJoinText
	text_asm
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .PleaseComeAgain
	ld hl, wPlayerMoney
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	jr nz, .has_positive_balance
	call SafariZoneEntranceGetLowCostAdmissionText
	jr c, .CantPayWalkDown
	jr .poor_mans_discount

.has_positive_balance
	xor a
	ldh [hMoney], a
	ld a, $05
	ldh [hMoney + 1], a
	ld a, $00
	ldh [hMoney + 2], a
	call HasEnoughMoney
	jr nc, .success
	ld hl, .NotEnoughMoneyText
	call PrintText
	call SafariZoneEntranceCalculateLowCostAdmission
	jr c, .CantPayWalkDown
	jr .poor_mans_discount

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
	ld hl, .MakePaymentText
	call PrintText
	ld a, 30
	ld hl, 500 ; ~$~CHANGED: Extra 2 steps no longer needed, as steps only decrease when in the forest tileset.~$~
.poor_mans_discount
	ld [wNumSafariBalls], a
	ld a, h
	ld [wSafariSteps], a
	ld a, l
	ld [wSafariSteps + 1], a
	ld a, D_UP
	ld c, 3
	call SafariZoneEntranceAutoWalk
	SetEvent EVENT_IN_SAFARI_ZONE
	ResetEventReuseHL EVENT_SAFARI_GAME_OVER
	ld a, SCRIPT_SAFARIZONEGATE_PLAYER_MOVING
	ld [wSafariZoneGateCurScript], a
	jr .done

.PleaseComeAgain
	ld hl, .PleaseComeAgainText
	call PrintText
.CantPayWalkDown
	ld a, D_DOWN
	ld c, 1
	call SafariZoneEntranceAutoWalk
	ld a, SCRIPT_SAFARIZONEGATE_PLAYER_MOVING_DOWN
	ld [wSafariZoneGateCurScript], a
.done
	jp TextScriptEnd

.MakePaymentText
	text_far _SafariZoneGateSafariZoneWorker1ThatllBe500PleaseText
	sound_get_item_1
	text_far _SafariZoneGateSafariZoneWorker1CallYouOnThePAText
	text_end

.PleaseComeAgainText
	text_far _SafariZoneGateSafariZoneWorker1PleaseComeAgainText
	text_end

.NotEnoughMoneyText
	text_far _SafariZoneGateSafariZoneWorker1NotEnoughMoneyText
	text_end

SafariZoneGateSafariZoneWorker1LeavingEarlyText:
	text_far _SafariZoneGateSafariZoneWorker1LeavingEarlyText
	text_asm
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .not_ready_to_leave
	ld hl, .ReturnSafariBallsText
	call PrintText
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, D_DOWN
	ld c, 3
	call SafariZoneEntranceAutoWalk
	ResetEvents EVENT_SAFARI_GAME_OVER, EVENT_IN_SAFARI_ZONE
	ld a, SCRIPT_SAFARIZONEGATE_DEFAULT
	ld [wNextSafariZoneGateScript], a
	jr .set_current_script
.not_ready_to_leave
	ld hl, .GoodLuckText
	call PrintText
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, D_UP
	ld c, 1
	call SafariZoneEntranceAutoWalk
	ld a, SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI
	ld [wNextSafariZoneGateScript], a
.set_current_script
	ld a, SCRIPT_SAFARIZONEGATE_SET_SCRIPT_AFTER_MOVE
	ld [wSafariZoneGateCurScript], a
	jp TextScriptEnd

.ReturnSafariBallsText
	text_far _SafariZoneGateSafariZoneWorker1ReturnSafariBallsText
	text_end

.GoodLuckText
	text_far _SafariZoneGateSafariZoneWorker1GoodLuckText
	text_end

SafariZoneGateSafariZoneWorker1GoodHaulComeAgainText:
	text_far _SafariZoneGateSafariZoneWorker1GoodHaulComeAgainText
	text_end

SafariZoneGateSafariZoneWorker2Text:
	text_asm
	ld hl, .FirstTimeHereText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, .YoureARegularHereText
	jr nz, .print_text
	ld hl, .SafariZoneExplanationText
.print_text
	call PrintText
	jp TextScriptEnd

.FirstTimeHereText
	text_far _SafariZoneGateSafariZoneWorker2FirstTimeHereText
	text_end

.SafariZoneExplanationText
	text_far _SafariZoneGateSafariZoneWorker2SafariZoneExplanationText
	text_end

.YoureARegularHereText
	text_far _SafariZoneGateSafariZoneWorker2YoureARegularHereText
	text_end
	
SafariZoneEntranceCalculateLowCostAdmission: ; ~$~ADDED: Poor Man's discount added from Yellow.~$~
	ld hl, wPlayerMoney
	ld de, hMoney
	ld bc, $3
	call CopyData
	xor a
	ldh [hDivideBCDDivisor], a
	ldh [hDivideBCDDivisor + 1], a
	ld a, 23
	ldh [hDivideBCDDivisor + 2], a
	predef DivideBCDPredef3
	ldh a, [hDivideBCDQuotient + 2]
	call SafariZoneEntranceConvertBCDtoNumber
	push af
	ld hl, wPlayerMoney
	xor a
	ld bc, $3
	call FillMemory
	ld hl, SafariZonePayMeWhatYouHaveText
	call PrintText_NoCreatingTextBox
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, SafariZoneCantGiveAll30BallsText
	call PrintText
	pop af
	inc a
	jr z, .max_balls
	cp 29
	jr c, .load_balls
.max_balls
	ld a, 29
.load_balls
	ld hl, 502
	and a
	ret

SafariZonePayMeWhatYouHaveText:
	text_far _SafariZonePayMeWhatYouHaveText
	text_end

SafariZoneCantGiveAll30BallsText:
	text_far _SafariZoneCantGiveAll30BallsText
	text_end

SafariZoneEntranceGetLowCostAdmissionText:
	ld hl, wSafariSteps
	ld a, [hl]
	push af
	inc [hl]
	ld e, a
	ld d, $0
	ld hl, Pointers_f2100
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	pop af
	cp $3
	jr z, .give_one_ball
	scf
	ret

.give_one_ball
	ld hl, SafariZonePersistentArentYouText
	call PrintText_NoCreatingTextBox
	ld a, $1
	ld hl, 502
	and a
	ret

SafariZonePersistentArentYouText:
	text_far _SafariZonePersistentArentYouText
	sound_get_item_1
	text_far _SafariZoneLowCostText4
	text_end

Pointers_f2100:
	dw SafariZoneSorryButYouHaveToPayText
	dw SafariZoneYouCantEnterWithoutPayingText
	dw SafariZoneNoMoneyNoEntryText
	dw SafariZoneReadMyLipsNoText
	dw SafariZoneReadMyLipsNoText

SafariZoneSorryButYouHaveToPayText:
	text_far _SafariZoneSorryButYouHaveToPayText
	text_end

SafariZoneYouCantEnterWithoutPayingText:
	text_far _SafariZoneYouCantEnterWithoutPayingText
	text_end

SafariZoneNoMoneyNoEntryText:
	text_far _SafariZoneNoMoneyNoEntryText
	text_end

SafariZoneReadMyLipsNoText:
	text_far _SafariZoneReadMyLipsNoText
	text_end

SafariZoneEntranceConvertBCDtoNumber:
	push hl
	ld c, a
	and $f
	ld l, a
	ld h, $0
	ld a, c
	and $f0
	swap a
	ld bc, 10
	call AddNTimes
	ld a, l
	pop hl
	ret
