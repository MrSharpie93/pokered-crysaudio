PlayersHouse_Script:
	jp EnableAutoTextBoxDrawing

PlayersHouse_TextPointers:
	def_text_pointers
	dw_const PlayersHouseMomsLetterText, TEXT_PLAYERSHOUSE_MOMS_LETTER
	dw_const PlayersHouseTVText,         TEXT_PLAYERSHOUSE_TV
	dw_const PlayersHousePCText,         TEXT_PLAYERSHOUSE_PC
	dw_const PlayersHouseMirrorText,     TEXT_PLAYERSHOUSE_MIRROR

PlayersHouseMomsLetterText:
	text_asm
	ld hl, .MomsLetterText
	call PrintText
	CheckAndSetEvent EVENT_GOT_SUPPLIES_FROM_MOM
	jr nz, .done
	lb bc, TOWN_MAP, 1
	call GiveItem
	lb bc, POTION, 1
	call GiveItem
	lb bc, ETHER, 1
	call GiveItem
	ld hl, .GotSuppliesText
	call PrintText
.done
	jp TextScriptEnd
	
.MomsLetterText:
	text_far _PlayersHouseMomsLetterText
	text_end
	
.GotSuppliesText:
	text_far _PlayersHouseGotSuppliesText
	sound_get_key_item
	text_end

PlayersHouseTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, .WrongSideText
	jr nz, .got_text
	ld hl, .BigLebowskiMovieText
.got_text
	call PrintText
	jp TextScriptEnd

.BigLebowskiMovieText:
	text_far _PlayersHouseTVBigLebowskiMovieText
	text_end

.WrongSideText:
	text_far _RedsHouse1FTVWrongSideText
	text_end
	
PlayersHousePCText:
	text_far _PlayersHousePCText
IF DEF(_DEBUG)
	text_asm
	SetEvent EVENT_BECAME_CHAMPION
	jp TextScriptEnd
ENDC
	text_end
	
PlayersHouseMirrorText:
	text_asm
	ld hl, .ChangeAppearanceText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .doNotChangeAppearance
	ld a, [wPlayerStyle]
	xor $01
	ld [wPlayerStyle], a
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .AppearanceChangedText
	call PrintText
	call GBFadeOutToBlack
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	jr .done
.doNotChangeAppearance
	ld hl, .AppearanceKeptText
	call PrintText
.done
	jp TextScriptEnd
	
.ChangeAppearanceText:
	text_far _ChangeAppearanceText
	text_end
	
.AppearanceChangedText:
	text_far _AppearanceChangedText
	text_end

.AppearanceKeptText:
	text_far _AppearanceKeptText
	text_end
