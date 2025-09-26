PlayersHouse_Script:
	jp EnableAutoTextBoxDrawing

PlayersHouse_TextPointers:
	def_text_pointers
	dw_const PlayersHouseMomsLetterText, TEXT_PLAYERSHOUSE_MOMS_LETTER
	dw_const PlayersHouseTVText,         TEXT_PLAYERSHOUSE_TV
	dw_const PlayersHousePCText,         TEXT_PLAYERSHOUSE_PC

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
	text_end
