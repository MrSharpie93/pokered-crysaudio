DisplayDexRating:
	ld hl, wPokedexSeen
	ld b, wPokedexSeenEnd - wPokedexSeen
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hDexRatingNumMonsSeen], a
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hDexRatingNumMonsOwned], a
	ld hl, DexRatingsTable
.findRating
	ld a, [hli]
	ld b, a
	ldh a, [hDexRatingNumMonsOwned]
	cp b
	jr c, .foundRating
	inc hl
	inc hl
	jr .findRating
.foundRating
	ld a, [hli]
	ld h, [hl]
	ld l, a ; load text pointer into hl
	CheckAndResetEventA EVENT_HALL_OF_FAME_DEX_RATING
	jr nz, .hallOfFame
	push hl
	ld hl, DexCompletionText
	call PrintText
	pop hl
	call PrintText
	farcall PlayPokedexRatingSfx
	jp WaitForTextScrollButtonPress
.hallOfFame
	ld de, wDexRatingNumMonsSeen
	ldh a, [hDexRatingNumMonsSeen]
	ld [de], a
	inc de
	ldh a, [hDexRatingNumMonsOwned]
	ld [de], a
	inc de
.copyRatingTextLoop
	ld a, [hli]
	cp "@"
	jr z, .doneCopying
	ld [de], a
	inc de
	jr .copyRatingTextLoop
.doneCopying
	ld [de], a
	ret

DexCompletionText:
	text_far _DexCompletionText
	text_end

DexRatingsTable:
	dbw 10, DexRatingText_Own0To9
	dbw 20, DexRatingText_Own10To19
	dbw 35, DexRatingText_Own20To34
	dbw 50, DexRatingText_Own35To49
	dbw 65, DexRatingText_Own50To64
	dbw 80, DexRatingText_Own65To79
	dbw 95, DexRatingText_Own80To94
	dbw 110, DexRatingText_Own95To109
	dbw 125, DexRatingText_Own110To124
	dbw 140, DexRatingText_Own125To139
	dbw 155, DexRatingText_Own140To154
	dbw 170, DexRatingText_Own155To169
	dbw 185, DexRatingText_Own170To184
	dbw 200, DexRatingText_Own185To199
	dbw 215, DexRatingText_Own200To214
	dbw 230, DexRatingText_Own215To229
	dbw 248, DexRatingText_Own230To247
	dbw NUM_POKEMON + 1, DexRatingText_Complete

DexRatingText_Own0To9:
	text_far _DexRatingText_Own0To9
	text_end

DexRatingText_Own10To19:
	text_far _DexRatingText_Own10To19
	text_end

DexRatingText_Own20To34:
	text_far _DexRatingText_Own20To34
	text_end

DexRatingText_Own35To49:
	text_far _DexRatingText_Own35To49
	text_end

DexRatingText_Own50To64:
	text_far _DexRatingText_Own50To64
	text_end

DexRatingText_Own65To79:
	text_far _DexRatingText_Own65To79
	text_end

DexRatingText_Own80To94:
	text_far _DexRatingText_Own80To94
	text_end

DexRatingText_Own95To109:
	text_far _DexRatingText_Own95To109
	text_end

DexRatingText_Own110To124:
	text_far _DexRatingText_Own110To124
	text_end

DexRatingText_Own125To139:
	text_far _DexRatingText_Own125To139
	text_end

DexRatingText_Own140To154:
	text_far _DexRatingText_Own140To154
	text_end

DexRatingText_Own155To169:
	text_far _DexRatingText_Own155To169
	text_end

DexRatingText_Own170To184:
	text_far _DexRatingText_Own170To184
	text_end

DexRatingText_Own185To199:
	text_far _DexRatingText_Own185To199
	text_end

DexRatingText_Own200To214:
	text_far _DexRatingText_Own200To214
	text_end

DexRatingText_Own215To229:
	text_far _DexRatingText_Own215To229
	text_end
	
DexRatingText_Own230To247:
	text_far _DexRatingText_Own230To247
	text_end
	
DexRatingText_Complete:
	text_far _DexRatingText_Complete
	text_end
