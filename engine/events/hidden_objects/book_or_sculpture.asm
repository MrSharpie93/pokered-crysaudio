BookOrSculptureText::
	text_asm
	ld hl, PokemonBooksText
	ld a, [wCurMapTileset]
	cp MANSION ; Celadon Mansion tileset
	jr nz, .notMansion
	lda_coord 8, 6
	cp $38
	jr z, .diglett
.notMansion
	cp MART
	jr nz, .ok
	lda_coord 8, 6
	cp $34
	jr nz, .ok
.diglett
	ld hl, DiglettSculptureText
.ok
	call PrintText
	jp TextScriptEnd

PokemonBooksText:
	text_far _PokemonBooksText
	text_end

DiglettSculptureText:
	text_far _DiglettSculptureText
	text_end
