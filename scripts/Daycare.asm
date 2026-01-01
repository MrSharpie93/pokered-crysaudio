Daycare_Script:
	jp EnableAutoTextBoxDrawing

Daycare_TextPointers:
	def_text_pointers
	dw_const DaycareGentlemanText, TEXT_DAYCARE_GENTLEMAN
	dw_const DaycareMelanieText,   TEXT_DAYCARE_MELANIE
	dw_const BulbasaurText,        TEXT_DAYCARE_BULBASAUR
	dw_const OddishText,           TEXT_DAYCARE_ODDISH
	dw_const SandshrewText,        TEXT_DAYCARE_SANDSHREW

DaycareGentlemanText:
	text_asm
	call SaveScreenTilesToBuffer2
	ld a, [wDayCareInUse]
	and a
	jp nz, .daycareInUse
	ld hl, .IntroText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ld hl, .ComeAgainText
	jp nz, .done
	ld a, [wPartyCount]
	dec a
	ld hl, .OnlyHaveOneMonText
	jp z, .done
	ld hl, .WhichMonText
	call PrintText
	xor a
	ld [wUpdateSpritesEnabled], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wMenuItemToSwap], a
	call DisplayPartyMenu
	push af
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	pop af
	call ReloadTilesetTilePatterns
	ld hl, .AllRightThenText
	jp c, .done
	callfar KnowsHMMove
	call ReloadTilesetTilePatterns
	ld hl, .CantAcceptMonWithHMText
	jp c, .done
	xor a
	ld [wPartyAndBillsPCSavedMenuItem], a
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	call ReloadTilesetTilePatterns
	ld hl, .WillLookAfterMonText
	call PrintText
	ld a, 1
	ld [wDayCareInUse], a
	ld a, PARTY_TO_DAYCARE
	ld [wMoveMonType], a
	call MoveMon
	xor a
	ld [wRemoveMonFromBox], a
	call RemovePokemon
	ld a, [wCurPartySpecies]
	call PlayCry
	ld hl, .ComeSeeMeInAWhileText
	jp .done

.daycareInUse
	xor a
	ld hl, wDayCareMonName
	call GetPartyMonName
	ld a, DAYCARE_DATA
	ld [wMonDataLocation], a
	call LoadMonData
	callfar CalcLevelFromExperience
	ld a, d
	cp MAX_LEVEL
	jr c, .skipCalcExp

	ld d, MAX_LEVEL
	callfar CalcExperience
	ld hl, wDayCareMonExp
	ldh a, [hExperience]
	ld [hli], a
	ldh a, [hExperience + 1]
	ld [hli], a
	ldh a, [hExperience + 2]
	ld [hl], a
	ld d, MAX_LEVEL

.skipCalcExp
	xor a
	ld [wDayCareNumLevelsGrown], a
	ld hl, wDayCareMonBoxLevel
	ld a, [hl]
	ld [wDayCareStartLevel], a
	cp d
	ld [hl], d
	ld hl, .MonNeedsMoreTimeText
	jr z, .next
	ld a, [wDayCareStartLevel]
	ld b, a
	ld a, d
	sub b
	ld [wDayCareNumLevelsGrown], a
	ld hl, .MonHasGrownText

.next
	call PrintText
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	ld hl, .NoRoomForMonText
	jp z, .leaveMonInDayCare
	ld de, wDayCareTotalCost
	xor a
	ld [de], a
	inc de
	ld [de], a
	ld hl, wDayCarePerLevelCost
	ld a, $1
	ld [hli], a
	ld [hl], $0
	ld a, [wDayCareNumLevelsGrown]
	inc a
	ld b, a
	ld c, 2
.calcPriceLoop
	push hl
	push de
	push bc
	predef AddBCDPredef
	pop bc
	pop de
	pop hl
	dec b
	jr nz, .calcPriceLoop
	ld hl, .OweMoneyText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld hl, .AllRightThenText
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .leaveMonInDayCare
	ld hl, wDayCareTotalCost
	ldh [hMoney], a
	ld a, [hli]
	ldh [hMoney + 1], a
	ld a, [hl]
	ldh [hMoney + 2], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NotEnoughMoneyText
	jp .leaveMonInDayCare

.enoughMoney
	xor a
	ld [wDayCareInUse], a
	ld hl, wDayCareNumLevelsGrown
	ld [hli], a
	inc hl
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, .HeresYourMonText
	call PrintText
	ld a, DAYCARE_TO_PARTY
	ld [wMoveMonType], a
	call MoveMon
	ld a, [wDayCareMonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wPartyCount]
	dec a
	push af
	ld bc, wPartyMon2 - wPartyMon1
	push bc
	ld hl, wPartyMon1Moves
	call AddNTimes
	ld d, h
	ld e, l
	ld a, 1
	ld [wLearningMovesFromDayCare], a
	predef WriteMonMoves
	pop bc
	pop af

; set mon's HP to max
	ld hl, wPartyMon1HP
	call AddNTimes
	ld d, h
	ld e, l
	ld bc, wPartyMon1MaxHP - wPartyMon1HP
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	ld a, [wCurPartySpecies]
	call PlayCry
	ld hl, .GotMonBackText
	jr .done

.leaveMonInDayCare
	ld a, [wDayCareStartLevel]
	ld [wDayCareMonBoxLevel], a

.done
	call PrintText
	jp TextScriptEnd

.IntroText:
	text_far _DaycareGentlemanIntroText
	text_end

.WhichMonText:
	text_far _DaycareGentlemanWhichMonText
	text_end

.WillLookAfterMonText:
	text_far _DaycareGentlemanWillLookAfterMonText
	text_end

.ComeSeeMeInAWhileText:
	text_far _DaycareGentlemanComeSeeMeInAWhileText
	text_end

.MonHasGrownText:
	text_far _DaycareGentlemanMonHasGrownText
	text_end

.OweMoneyText:
	text_far _DaycareGentlemanOweMoneyText
	text_end

.GotMonBackText:
	text_far _DaycareGentlemanGotMonBackText
	text_end

.MonNeedsMoreTimeText:
	text_far _DaycareGentlemanMonNeedsMoreTimeText
	text_end

.AllRightThenText:
	text_far _DaycareGentlemanAllRightThenText
.ComeAgainText:
	text_far _DaycareGentlemanComeAgainText
	text_end

.NoRoomForMonText:
	text_far _DaycareGentlemanNoRoomForMonText
	text_end

.OnlyHaveOneMonText:
	text_far _DaycareGentlemanOnlyHaveOneMonText
	text_end

.CantAcceptMonWithHMText:
	text_far _DaycareGentlemanCantAcceptMonWithHMText
	text_end

.HeresYourMonText:
	text_far _DaycareGentlemanHeresYourMonText
	text_end

.NotEnoughMoneyText:
	text_far _DaycareGentlemanNotEnoughMoneyText
	text_end
	
DaycareMelanieText:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	CheckEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
	jp nz, .gotStarter
	ld a, [wPlayerStarter]
	cp STARTER3
	jr z, .giveHeartStone
	ld hl, MelanieITakeCareOfPokemonText
	call PrintText
	ld a, [wBeatGymFlags]
	bit BIT_CASCADEBADGE, a
	jr z, .done
	ld hl, MelanieOffersStarterText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, STARTER3
	ld [wNamedObjectIndex], a
	ld [wCurPartySpecies], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, STARTER3, 10
	call GivePokemon
	jr nc, .done
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, MelanieTakeCareOfStarterText
	call PrintText
	SetEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
.done
	jp TextScriptEnd
.giveHeartStone
	ld hl, MelanieHeartStoneText
	call PrintText
	lb bc, RARE_CANDY, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, MelanieGotHeartStoneText
	call PrintText
	SetEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
	jp TextScriptEnd
.bag_full
	ld hl, MelanieBagFullText
	jr .done

.refused
	ld hl, MelanieRefusedText
	jr .done2
.gotStarter
	ld hl, MelanieHowIsStarterText
.done2
	call PrintText
	jp TextScriptEnd

MelanieITakeCareOfPokemonText:
	text_far MelanieText1
	text_waitbutton
	text_end

MelanieOffersStarterText:
	text_far MelanieText2
	text_end

MelanieTakeCareOfStarterText:
	text_far MelanieText3
	text_waitbutton
	text_end

MelanieHowIsStarterText:
	text_far MelanieText4
	text_waitbutton
	text_end

MelanieRefusedText:
	text_far MelanieText5
	text_waitbutton
	text_end
	
MelanieHeartStoneText:
	text_far _MelanieText6
	text_end
	
MelanieGotHeartStoneText:
	text_far _VermilionCityReceivedHeartStoneText
	sound_get_item_1
	text_end
	
MelanieBagFullText:
	text_far _MelanieText7
	text_end
	
BulbasaurText:
	text_far _BulbasaurText
	text_asm
	ld a, BULBASAUR
	call PlayCry
	jp TextScriptEnd

OddishText:
	text_far _OddishText
	text_asm
	ld a, ODDISH
	call PlayCry
	jp TextScriptEnd

SandshrewText:
	text_far _SandshrewText
	text_asm
	ld a, SANDSHREW
	call PlayCry
	jp TextScriptEnd
