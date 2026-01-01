VermilionCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	push hl
	call nz, VermilionCityLeftSSAnneCallbackScript
	pop hl
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	call nz, .setFirstLockTrashCanIndex
	ld hl, VermilionCity_ScriptPointers
	ld a, [wVermilionCityCurScript]
	jp CallFunctionInTable

.setFirstLockTrashCanIndex
	call Random
	ldh a, [hRandomSub]
	and $e
	ld [wFirstLockTrashCanIndex], a
	ret

VermilionCityLeftSSAnneCallbackScript:
	CheckEventHL EVENT_SS_ANNE_LEFT
	ret z
	CheckEventReuseHL EVENT_WALKED_PAST_GUARD_AFTER_SS_ANNE_LEFT
	SetEventReuseHL EVENT_WALKED_PAST_GUARD_AFTER_SS_ANNE_LEFT
	ret nz
	ld a, SCRIPT_VERMILIONCITY_PLAYER_EXIT_SHIP
	ld [wVermilionCityCurScript], a
	ret

VermilionCity_ScriptPointers:
	def_script_pointers
	dw_const VermilionCityDefaultScript,             SCRIPT_VERMILIONCITY_DEFAULT
	dw_const VermilionCityPlayerMovingUp1Script,     SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP1
	dw_const VermilionCityPlayerExitShipScript,      SCRIPT_VERMILIONCITY_PLAYER_EXIT_SHIP
	dw_const VermilionCityPlayerMovingUp2Script,     SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP2
	dw_const VermilionCityPlayerAllowedToPassScript, SCRIPT_VERMILIONCITY_PLAYER_ALLOWED_TO_PASS

VermilionCityDefaultScript:
	ld a, [wSpritePlayerStateData1FacingDirection]
	and a ; cp SPRITE_FACING_DOWN
	ret nz
	ld hl, SSAnneTicketCheckCoords
	call ArePlayerCoordsInArray
	ret nc
	xor a
	ldh [hJoyHeld], a
	ld [wSavedCoordIndex], a ; unnecessary
	ld a, TEXT_VERMILIONCITY_SAILOR1
	ldh [hTextID], a
	call DisplayTextID
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	ld b, S_S_TICKET
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	ret nz
.ship_departed
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP1
	ld [wVermilionCityCurScript], a
	ret

SSAnneTicketCheckCoords:
	dbmapcoord 18, 30
	db -1 ; end

VermilionCityPlayerAllowedToPassScript:
	ld hl, SSAnneTicketCheckCoords
	call ArePlayerCoordsInArray
	ret c
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerExitShipScript:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesEnd + 1], a
	ld a, 2
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP2
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerMovingUp2Script:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerMovingUp1Script:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld c, 10
	call DelayFrames
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCity_TextPointers:
	def_text_pointers
	dw_const VermilionCityBeautyText,             TEXT_VERMILIONCITY_BEAUTY
	dw_const VermilionCityGambler1Text,           TEXT_VERMILIONCITY_GAMBLER1
	dw_const VermilionCitySailor1Text,            TEXT_VERMILIONCITY_SAILOR1
	dw_const VermilionCityGambler2Text,           TEXT_VERMILIONCITY_GAMBLER2
	dw_const VermilionCityMachopText,             TEXT_VERMILIONCITY_MACHOP
	dw_const VermilionCitySailor2Text,            TEXT_VERMILIONCITY_SAILOR2
	dw_const VermilionCityOfficerJennyText,       TEXT_VERMILIONCITY_OFFICERJENNY
	dw_const VermilionCitySuperNerdText,          TEXT_VERMILIONCITY_SUPER_NERD
	dw_const VermilionCitySignText,               TEXT_VERMILIONCITY_SIGN
	dw_const VermilionCityNoticeSignText,         TEXT_VERMILIONCITY_NOTICE_SIGN
	dw_const MartSignText,                        TEXT_VERMILIONCITY_MART_SIGN
	dw_const PokeCenterSignText,                  TEXT_VERMILIONCITY_POKECENTER_SIGN
	dw_const VermilionCityPokemonFanClubSignText, TEXT_VERMILIONCITY_POKEMON_FAN_CLUB_SIGN
	dw_const VermilionCityGymSignText,            TEXT_VERMILIONCITY_GYM_SIGN
	dw_const VermilionCityHarborSignText,         TEXT_VERMILIONCITY_HARBOR_SIGN

VermilionCityBeautyText:
	text_far _VermilionCityBeautyText
	text_end

VermilionCityGambler1Text:
	text_asm
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	ld hl, .DidYouSeeText
	call PrintText
	jr .text_script_end
.ship_departed
	ld hl, .SSAnneDepartedText
	call PrintText
.text_script_end
	jp TextScriptEnd

.DidYouSeeText:
	text_far _VermilionCityGambler1DidYouSeeText
	text_end

.SSAnneDepartedText:
	text_far _VermilionCityGambler1SSAnneDepartedText
	text_end

VermilionCitySailor1Text:
	text_asm
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_RIGHT
	jr z, .greet_player
	ld hl, .inFrontOfOrBehindGuardCoords
	call ArePlayerCoordsInArray
	jr nc, .greet_player_and_check_ticket
.greet_player
	ld hl, .WelcomeToSSAnneText
	call PrintText
	jr .end
.greet_player_and_check_ticket
	ld hl, .DoYouHaveATicketText
	call PrintText
	ld b, S_S_TICKET
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	jr nz, .player_has_ticket
	ld hl, .YouNeedATicketText
	call PrintText
	jr .end
.player_has_ticket
	ld hl, .FlashedTicketText
	call PrintText
	ld a, SCRIPT_VERMILIONCITY_PLAYER_ALLOWED_TO_PASS
	ld [wVermilionCityCurScript], a
	jr .end
.ship_departed
	ld hl, .ShipSetSailText
	call PrintText
.end
	jp TextScriptEnd

.inFrontOfOrBehindGuardCoords
	dbmapcoord 19, 29 ; in front of guard
	dbmapcoord 19, 31 ; behind guard
	db -1 ; end

.WelcomeToSSAnneText:
	text_far _VermilionCitySailor1WelcomeToSSAnneText
	text_end

.DoYouHaveATicketText:
	text_far _VermilionCitySailor1DoYouHaveATicketText
	text_end

.FlashedTicketText:
	text_far _VermilionCitySailor1FlashedTicketText
	text_end

.YouNeedATicketText:
	text_far _VermilionCitySailor1YouNeedATicketText
	text_end

.ShipSetSailText:
	text_far _VermilionCitySailor1ShipSetSailText
	text_end

VermilionCityGambler2Text:
	text_far _VermilionCityGambler2Text
	text_end

VermilionCityMachopText:
	text_far _VermilionCityMachopText
	text_asm
	ld a, MACHOP
	call PlayCry
	call WaitForSoundToFinish
	ld hl, .StompingTheLandFlatText
	ret

.StompingTheLandFlatText:
	text_far _VermilionCityMachopStompingTheLandFlatText
	text_end

VermilionCitySailor2Text:
	text_far _VermilionCitySailor2Text
	text_end
	
VermilionCityOfficerJennyText:
	text_asm
	CheckEvent EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY
	jr nz, .gotStarter
	ld a, [wPlayerStarter]
	cp STARTER2
	jr z, .giveHeartStone
	ld a, [wBeatGymFlags]
	bit BIT_THUNDERBADGE, a
	jr nz, .haveThunderbadge
	ld hl, GuardNoThunderBadgeText
	jr .done

.haveThunderbadge
	ld hl, GuardHaveThunderBadgeText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	ld a, STARTER2
	ld [wNamedObjectIndex], a
	ld [wCurPartySpecies], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, STARTER2, 10
	call GivePokemon
	ret nc
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, GuardTreatStarterRightText
	call PrintText
	SetEvent EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY
	jr .done2
.giveHeartStone
	ld hl, GuardHeartStoneText
	call PrintText
	lb bc, RARE_CANDY, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, GuardGotHeartStoneText
	call PrintText
	SetEvent EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY
	jp TextScriptEnd
.bag_full
	ld hl, GuardBagFullText
	jr .done

.refused
	ld hl, GuardRefusedText
	jr .done

.gotStarter
	ld hl, GuardHowIsStarterText
.done
	call PrintText
.done2
	jp TextScriptEnd

GuardNoThunderBadgeText:
	text_far _GuardText1
	text_end

GuardHaveThunderBadgeText:
	text_far _GuardText2
	text_end

GuardTreatStarterRightText:
	text_far _GuardText3
	text_waitbutton
	text_end

GuardRefusedText:
	text_far _GuardText4
	text_end

GuardHowIsStarterText:
	text_far _GuardText5
	text_end
	
GuardHeartStoneText:
	text_far _GuardText6
	text_end
	
GuardGotHeartStoneText:
	text_far _VermilionCityReceivedHeartStoneText
	sound_get_item_1
	text_end
	
GuardBagFullText:
	text_far _GuardText7
	text_end
	
VermilionCitySuperNerdText:
	text_asm
	CheckEvent EVENT_2ND_LOCK_OPENED
	jr nz, .switchesAlreadyDisabled
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	xor a
	ldh [hJoyHeld], a
	ld hl, DisableSwitchOfferText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saidNo
	xor a
	ld [hMoney], a	
	ld [hMoney + 2], a
	ld a, $1A
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .disableSwitches
	ld hl, MoneyNoText
	call PrintText
	jr .done
.disableSwitches
	ld hl, SwitchesDisabledText
	call PrintText
	SetEvent EVENT_2ND_LOCK_OPENED
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $1A
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	jr .done
.saidNo
	ld hl, SaidNoText
	call PrintText
	jr .done
.switchesAlreadyDisabled
	ld hl, AlreadyDisabledText
	call PrintText
.done
	jp TextScriptEnd
	
DisableSwitchOfferText:
	text_far _DisableSwitchOfferText
	text_end

MoneyNoText:
	text_far _MoneyNoText
	text_end

SwitchesDisabledText:
	text_far _SwitchesDisabledText
	text_end

SaidNoText:
	text_far _SaidNoText
	text_end

AlreadyDisabledText:
	text_far _AlreadyDisabledText
	text_end

VermilionCitySignText:
	text_far _VermilionCitySignText
	text_end

VermilionCityNoticeSignText:
	text_far _VermilionCityNoticeSignText
	text_end

VermilionCityPokemonFanClubSignText:
	text_far _VermilionCityPokemonFanClubSignText
	text_end

VermilionCityGymSignText:
	text_far _VermilionCityGymSignText
	text_end

VermilionCityHarborSignText:
	text_far _VermilionCityHarborSignText
	text_end
