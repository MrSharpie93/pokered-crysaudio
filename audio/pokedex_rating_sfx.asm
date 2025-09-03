PlayPokedexRatingSfx::
	ldh a, [hDexRatingNumMonsOwned]
	ld c, $0
	ld hl, OwnedMonValues
.getSfxPointer
	cp [hl]
	jr c, .gotSfxPointer
	inc c
	inc hl
	jr .getSfxPointer
.gotSfxPointer
	push bc
	ld a, SFX_STOP_ALL_MUSIC
;	ld [wNewSoundID], a
	call PlaySoundWaitForCurrent
	pop bc
	ld b, $0
	ld hl, PokedexRatingSfxPointers
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld c, [hl]
	call PlaySound
	jp PlayDefaultMusic

PokedexRatingSfxPointers:
	db SFX_YOU_SUCK,           0 ; BANK(SFX_Denied_1)
	db SFX_POKEDEX_RATING,     0 ; BANK(SFX_Pokedex_Rating_1)
	db SFX_GET_ITEM_1,         0 ; BANK(SFX_Get_Item1_1)
	db SFX_GSC_DEX_80_109,     0 ; BANK(SFX_Caught_Mon)
	db SFX_GSC_DEX_140_169,    0 ; BANK(SFX_Level_Up)
	db SFX_GSC_DEX_170_199,    0 ; BANK(SFX_Get_Key_Item_1)
	db SFX_GSC_DEX_200_229,    0 ; BANK(SFX_Get_Item2_1)
	db SFX_GSC_DEX_230PLUS,    0
	db SFX_GSC_DEX_230PLUS,    0

OwnedMonValues:
	db 20, 50, 80, 110, 140, 170, 200, 230, $ff
