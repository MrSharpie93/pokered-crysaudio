Route26HealHouse_Script:
	jp EnableAutoTextBoxDrawing

Route26HealHouse_TextPointers:
	def_text_pointers
	dw_const Route26HealHouseBeautyText, TEXT_ROUTE26HEALHOUSE_BEAUTY

Route26HealHouseBeautyText:
	text_asm
	call Route26HealHouseBeautyHealScript
	jp TextScriptEnd

Route26HealHouseBeautyHealScript:
	ld hl, Route26HealHouseBeautyYouShouldRestText
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
;	ld [wNewSoundID], a
	call PlayMusic

	call WaitForSongToFinish
;.next
;	ld a, [wChannelSoundIDs]
;	cp MUSIC_PKMN_HEALED
;	jr z, .next

	ld a, [wMapMusicSoundID]
;	ld [wNewSoundID], a
	call PlayMusic
	call GBFadeInFromWhite
	ld hl, Route26HealHouseBeautyLookingGreatText
	jp PrintText

Route26HealHouseBeautyYouShouldRestText:
	text_far _Route26HealHouseRestAWhileText
	text_end
Route26HealHouseBeautyLookingGreatText:
	text_far _Route26HealHouseKeepAtItText
	text_end
