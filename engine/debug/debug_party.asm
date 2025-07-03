; ~$~CHANGED: Made several modifications to debug mode to accomodate my testing.~$~
SetDebugNewGameParty: ; unreferenced except in _DEBUG
	ld de, DebugNewGameParty
.loop
	ld a, [de]
	cp -1
	ret z
	ld [wCurPartySpecies], a
	inc de
	ld a, [de]
	ld [wCurEnemyLevel], a
	inc de
	call AddPartyMon
	jr .loop

DebugNewGameParty: ; unreferenced except in _DEBUG
	db MEWTWO, 90
	db MEOWTH, 93
	db HITMONLEE, 45
	db BLASTOISE, 60
	db ARTICUNO, 57
	db PIKACHU, 5
	db -1 ; end

PrepareNewGameDebug: ; dummy except in _DEBUG
IF DEF(_DEBUG)
	ld a, $f0
	ld [wMonDataLocation], a

	; Fly anywhere.
	ld a, $ff
	ld [wTownVisitedFlag], a
	ld [wTownVisitedFlag + 1], a

	; Get all badges except Earth Badge.
	ld a, ~(1 << BIT_EARTHBADGE)
	ld [wObtainedBadges], a
	
	; Get ¥999999.
	ld a, $99
	ld hl, wPlayerMoney
	ld [hli], a
	ld [hli], a
	ld [hl], a

	call SetDebugNewGameParty

	; Mewtwo gets four moves for speedrunning battles.
	ld hl, wPartyMon1Moves
	ld a, PSYCHIC_M
	ld [hli], a
	ld a, THUNDERBOLT
	ld [hli], a
	ld a, ICE_BEAM
	ld [hli], a
	ld a, RECOVER
	ld [hl], a
	ld hl, wPartyMon1PP
	ld a, 20
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 5
	ld [hli], a
;	ld a, 15
	ld [hl], a
	
	; Meowth gets four HM moves.
	ld hl, wPartyMon2Moves
	ld a, FLY
	ld [hli], a
	ld a, CUT
	ld [hli], a
	ld a, SURF
	ld [hli], a
	ld a, STRENGTH
	ld [hl], a
	ld hl, wPartyMon2PP
	ld a, 20
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 5
	ld [hli], a
;	ld a, 15
	ld [hl], a

;	; Jolteon gets Thunderbolt.
;	ld hl, wPartyMon3Moves + 3
;	ld a, THUNDERBOLT
;	ld [hl], a
;	ld hl, wPartyMon3PP + 3
;	ld a, 15
;	ld [hl], a

	; Articuno gets Fly.
	ld hl, wPartyMon5Moves
	ld a, FLY
	ld [hl], a
	ld hl, wPartyMon5PP
	ld a, 15
	ld [hl], a

	; Pikachu gets Surf.
	ld hl, wPartyMon6Moves + 2
	ld a, SURF
	ld [hl], a
	ld hl, wPartyMon6PP + 2
	ld a, 15
	ld [hl], a

	; Get some debug items.
	ld hl, wNumBagItems
	ld de, DebugItemsList
.items_loop
	ld a, [de]
	cp -1
	jr z, .items_end
	ld [wCurItem], a
	inc de
	ld a, [de]
	inc de
	ld [wItemQuantity], a
	call AddItemToInventory
	jr .items_loop
.items_end

	; Complete the Pokédex.
	ld hl, wPokedexOwned
	call DebugSetPokedexEntries
	ld hl, wPokedexSeen
	call DebugSetPokedexEntries
	SetEvent EVENT_GOT_POKEDEX

	; Rival chose Squirtle,
	; Player chose Charmander.
	ld hl, wRivalStarter
	ld a, STARTER2
	ld [hli], a
	inc hl ; hl = wPlayerStarter
	ld a, STARTER1
	ld [hl], a

	ret

DebugSetPokedexEntries:
	ld b, wPokedexOwnedEnd - wPokedexOwned - 1
	ld a, %11111111
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ld [hl], %01111111
	ret

DebugItemsList:
	db BICYCLE, 1
	db FULL_RESTORE, 99
	db FULL_HEAL, 99
	db ESCAPE_ROPE, 99
	db RARE_CANDY, 99
	db MASTER_BALL, 99
	db NUGGET, 99
	db TOWN_MAP, 1
	db SECRET_KEY, 1
	db CARD_KEY, 1
	db S_S_TICKET, 1
	db LIFT_KEY, 1
	db SILPH_SCOPE, 1
	db POKE_FLUTE, 1
	db EXP_ALL, 1
	db OLD_ROD, 1
	db GOOD_ROD, 1
	db SUPER_ROD, 1
	db COIN_CASE, 1
	db REPEL, 2
	db SUPER_REPEL, 1
	db MAX_REPEL, 3
	db -1 ; end

DebugUnusedList:
	db -1 ; end
ELSE
	ret
ENDC
