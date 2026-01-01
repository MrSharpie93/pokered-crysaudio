PokemonFanClub_Script:
	jp EnableAutoTextBoxDrawing

PokemonFanClub_CheckHelixFossil:
; check if the Helix Fossil is in your bag
	ld b, HELIX_FOSSIL
	jp IsItemInBag
	
PokemonFanClub_CheckDomeFossil:
; check if the Dome Fossil is in your bag
	ld b, DOME_FOSSIL
	jp IsItemInBag

PokemonFanClub_TextPointers:
	def_text_pointers
	dw_const PokemonFanClubPikachuFanText,   TEXT_POKEMONFANCLUB_PIKACHU_FAN
	dw_const PokemonFanClubSeelFanText,      TEXT_POKEMONFANCLUB_SEEL_FAN
	dw_const PokemonFanClubHelixText,        TEXT_POKEMONFANCLUB_PIKACHU
	dw_const PokemonFanClubHelixText,        TEXT_POKEMONFANCLUB_SEEL
	dw_const PokemonFanClubChairmanText,     TEXT_POKEMONFANCLUB_CHAIRMAN
	dw_const PokemonFanClubReceptionistText, TEXT_POKEMONFANCLUB_RECEPTIONIST
	dw_const PokemonFanClubSign1Text,        TEXT_POKEMONFANCLUB_SIGN_1
	dw_const PokemonFanClubSign2Text,        TEXT_POKEMONFANCLUB_SIGN_2

PokemonFanClubPikachuFanText:
	text_asm
	CheckEvent EVENT_PIKACHU_FAN_BOAST
	jr nz, .mineisbetter
	ld hl, .NormalText
	call PrintText
	SetEvent EVENT_SEEL_FAN_BOAST
	jr .done
.mineisbetter
	ld hl, .BetterText
	call PrintText
	ResetEvent EVENT_PIKACHU_FAN_BOAST
.done
	jp TextScriptEnd

.NormalText:
	text_far _PokemonFanClubPikachuFanNormalText
	text_end

.BetterText:
	text_far _PokemonFanClubPikachuFanBetterText
	text_end

PokemonFanClubSeelFanText:
	text_asm
	CheckEvent EVENT_SEEL_FAN_BOAST
	jr nz, .mineisbetter
	ld hl, .NormalText
	call PrintText
	SetEvent EVENT_PIKACHU_FAN_BOAST
	jr .done
.mineisbetter
	ld hl, .BetterText
	call PrintText
	ResetEvent EVENT_SEEL_FAN_BOAST
.done
	jp TextScriptEnd

.NormalText:
	text_far _PokemonFanClubSeelFanNormalText
	text_end

.BetterText:
	text_far _PokemonFanClubSeelFanBetterText
	text_end

;PokemonFanClubPikachuText:
;	text_asm
;	ld hl, .Text
;	call PrintText
;	ld a, PIKACHU
;	call PlayCry
;	call WaitForSoundToFinish
;	jp TextScriptEnd
;
;.Text
;	text_far _PokemonFanClubPikachuText
;	text_end
;
;PokemonFanClubSeelText:
;	text_asm
;	ld hl, .Text
;	call PrintText
;	ld a, SEEL
;	call PlayCry
;	call WaitForSoundToFinish
;	jp TextScriptEnd
;
;.Text:
PokemonFanClubHelixText:
	text_far _PokemonFanClubSeelText
	text_end

PokemonFanClubChairmanText:
	text_asm
	call PokemonFanClub_CheckDomeFossil
	jr nz, .burnTheHeretic
	
	call PokemonFanClub_CheckHelixFossil
	jr nz, .praiseHisName
	
	CheckEvent EVENT_GOT_BIKE_VOUCHER
	jr nz, .nothingleft

	ld hl, .IntroText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .nothanks

	; tell the story
	ld hl, .StoryText
	call PrintText
	lb bc, BIKE_VOUCHER, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .BikeVoucherText
	call PrintText
	SetEvent EVENT_GOT_BIKE_VOUCHER
	jr .done
.bag_full
	ld hl, .BagFullText
;	call PrintText
	jr .printAndDone
.nothanks
	ld hl, .NoStoryText
;	call PrintText
	jr .printAndDone
.nothingleft
	ld hl, .FinalText
.printAndDone
	call PrintText
.done
	jp TextScriptEnd
.praiseHisName
	ld hl, .AskForHelixText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .nothanks
	
	ld hl, .GaveHelixText
	call PrintText
	lb bc, MIST_STONE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .BikeVoucherText
	call PrintText
	
	ld a, HELIX_FOSSIL
	ldh [hItemToRemoveID], a
	farcall RemoveItemByID
	jr .done
.burnTheHeretic
	ld hl, .LeaderPreBattleText
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, 0
	ld c, a
	ld a, MUSIC_MEET_EVIL_TRAINER
	call PlayMusic
	call Delay3
	ld a, OPP_GENTLEMAN
	ld [wCurOpponent], a
	ld a, 4
	ld [wTrainerNo], a
	ld a, 1
	ld [wIsTrainerBattle], a
	
	ld hl, .LeaderDefeatedText
	ld de, .LeaderVictoryText
	call SaveEndBattleTextPointers
	jr .done

.IntroText:
	text_far _PokemonFanClubChairmanIntroText
	text_end

.StoryText:
	text_far _PokemonFanClubChairmanStoryText
	text_end

.BikeVoucherText:
	text_far _PokemonFanClubReceivedBikeVoucherText
	sound_get_key_item
	text_far _PokemonFanClubExplainBikeVoucherText
	text_end

.NoStoryText:
	text_far _PokemonFanClubNoStoryText
	text_end

.FinalText:
	text_far _PokemonFanClubChairFinalText
	text_end

.BagFullText:
	text_far _PokemonFanClubBagFullText
	text_end

.AskForHelixText
	text_far _PokemonFanClubChairAskForHelixText
	text_end

.GaveHelixText
	text_far _PokemonFanClubChairGaveHelixText
	text_end
	
.LeaderPreBattleText
	text_far _LeaderPreBattleText
	text_end

.LeaderDefeatedText
	text_far _LeaderDefeatedText
	text_end

.LeaderVictoryText
	text_far _LeaderVictoryText
	text_end

PokemonFanClubReceptionistText:
	text_far _PokemonFanClubReceptionistText
	text_end

PokemonFanClubSign1Text:
	text_far _PokemonFanClubSign1Text
	text_end

PokemonFanClubSign2Text:
	text_far _PokemonFanClubSign2Text
	text_end
