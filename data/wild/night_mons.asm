HandleNightMons:
	; replace the 1, 4, and 7 grassmon slots
	ld hl, NightWildMonPointers
	ld a, [wCurMap]
	; get wild data for current map
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a       ; hl now points to wild data for current map
	ld a, [hli]
	cp $ff
	ret z
	ld [wGrassMons], a
	ld a, [hli]
	ld [wGrassMons+1], a
	ld a, [hli]
	ld [wGrassMons+6], a
	ld a, [hli]
	ld [wGrassMons+7], a
	ld a, [hli]
	ld [wGrassMons+12], a
	ld a, [hli]
	ld [wGrassMons+13], a
	ret

NightWildMonPointers:
	dw NothingNightMons            ; PALLET_TOWN
	dw NothingNightMons            ; VIRIDIAN_CITY
	dw NothingNightMons            ; PEWTER_CITY
	dw NothingNightMons            ; CERULEAN_CITY
	dw NothingNightMons            ; LAVENDER_TOWN
	dw NothingNightMons            ; VERMILION_CITY
	dw NothingNightMons            ; CELADON_CITY
	dw NothingNightMons            ; FUCHSIA_CITY
	dw NothingNightMons            ; CINNABAR_ISLAND
	dw NothingNightMons            ; INDIGO_PLATEAU
	dw NothingNightMons            ; SAFFRON_CITY
	dw NothingNightMons            ; NEW_BARK_TOWN
	dw Route1NightMons             ; ROUTE_1
	dw Route1NightMons             ; ROUTE_2
	dw Route3NightMons             ; ROUTE_3
	dw Route3NightMons             ; ROUTE_4
	dw Route5NightMons             ; ROUTE_5
	dw Route5NightMons             ; ROUTE_6
	dw Route7NightMons             ; ROUTE_7
	dw Route7NightMons             ; ROUTE_8
	dw NothingNightMons            ; ROUTE_9
	dw NothingNightMons            ; ROUTE_10
	dw Route11NightMons            ; ROUTE_11
	dw Route12NightMons            ; ROUTE_12
	dw Route12NightMons            ; ROUTE_13
	dw Route14NightMons            ; ROUTE_14
	dw Route14NightMons            ; ROUTE_15
	dw Route16NightMons            ; ROUTE_16
	dw Route17NightMons            ; ROUTE_17
	dw NothingNightMons            ; ROUTE_18
	dw NothingNightMons            ; ROUTE_19
	dw NothingNightMons            ; ROUTE_20
	dw Route21NightMons            ; ROUTE_21
	dw Route22NightMons            ; ROUTE_22
	dw Route23NightMons            ; ROUTE_23
	dw Route24NightMons            ; ROUTE_24
	dw Route25NightMons            ; ROUTE_25
	dw Route26NightMons            ; ROUTE_26
	dw Route26NightMons            ; ROUTE_27
	dw Route28NightMons            ; ROUTE_28
	dw Route28NightMons            ; SILVER_CAVE_OUTSIDE
	dw NothingNightMons            ; REDS_HOUSE_1F
	dw NothingNightMons            ; REDS_HOUSE_2F
	dw NothingNightMons            ; BLUES_HOUSE
	dw NothingNightMons            ; OAKS_LAB
	dw NothingNightMons            ; VIRIDIAN_POKECENTER
	dw NothingNightMons            ; VIRIDIAN_MART
	dw NothingNightMons            ; VIRIDIAN_SCHOOL_HOUSE
	dw NothingNightMons            ; VIRIDIAN_NICKNAME_HOUSE
	dw NothingNightMons            ; VIRIDIAN_GYM
	dw NothingNightMons            ; DIGLETTS_CAVE_ROUTE_2
	dw NothingNightMons            ; VIRIDIAN_FOREST_NORTH_GATE
	dw NothingNightMons            ; ROUTE_2_TRADE_HOUSE
	dw NothingNightMons            ; ROUTE_2_GATE
	dw NothingNightMons            ; VIRIDIAN_FOREST_SOUTH_GATE
	dw ForestNightMons             ; VIRIDIAN_FOREST
	dw NothingNightMons            ; MUSEUM_1F
	dw NothingNightMons            ; MUSEUM_2F
	dw NothingNightMons            ; PEWTER_GYM
	dw NothingNightMons            ; PEWTER_NIDORAN_HOUSE
	dw NothingNightMons            ; PEWTER_MART
	dw NothingNightMons            ; PEWTER_SPEECH_HOUSE
	dw NothingNightMons            ; PEWTER_POKECENTER
	dw MtMoonNightMons             ; MT_MOON_1F
	dw MtMoonNightMons             ; MT_MOON_B1F
	dw MtMoonNightMons             ; MT_MOON_B2F
	dw NothingNightMons            ; CERULEAN_TRASHED_HOUSE
	dw NothingNightMons            ; CERULEAN_TRADE_HOUSE
	dw NothingNightMons            ; CERULEAN_POKECENTER
	dw NothingNightMons            ; CERULEAN_GYM
	dw NothingNightMons            ; BIKE_SHOP
	dw NothingNightMons            ; CERULEAN_MART
	dw NothingNightMons            ; MT_MOON_POKECENTER
	dw NothingNightMons            ; ROUTE_26_HEAL_HOUSE
	dw NothingNightMons            ; ROUTE_5_GATE
	dw NothingNightMons            ; UNDERGROUND_PATH_ROUTE_5
	dw NothingNightMons            ; DAYCARE 
	dw NothingNightMons            ; ROUTE_6_GATE
	dw NothingNightMons            ; UNDERGROUND_PATH_ROUTE_6
	dw NothingNightMons            ; PLAYERS_HOUSE
	dw NothingNightMons            ; ROUTE_7_GATE
	dw NothingNightMons            ; UNDERGROUND_PATH_ROUTE_7
	dw NothingNightMons            ; BILLS_GARDEN
	dw NothingNightMons            ; ROUTE_8_GATE
	dw NothingNightMons            ; UNDERGROUND_PATH_ROUTE_8
	dw NothingNightMons            ; ROCK_TUNNEL_POKECENTER
	dw NothingNightMons            ; ROCK_TUNNEL_1F
	dw NothingNightMons            ; POWER_PLANT
	dw NothingNightMons            ; ROUTE_11_GATE_1F
	dw NothingNightMons            ; DIGLETTS_CAVE_ROUTE_11
	dw NothingNightMons            ; ROUTE_11_GATE_2F
	dw NothingNightMons            ; ROUTE_12_GATE_1F
	dw NothingNightMons            ; BILLS_HOUSE
	dw NothingNightMons            ; VERMILION_POKECENTER
	dw NothingNightMons            ; POKEMON_FAN_CLUB
	dw NothingNightMons            ; VERMILION_MART
	dw NothingNightMons            ; VERMILION_GYM
	dw NothingNightMons            ; VERMILION_PIDGEY_HOUSE
	dw NothingNightMons            ; VERMILION_DOCK
	dw NothingNightMons            ; SS_ANNE_1F
	dw NothingNightMons            ; SS_ANNE_2F
	dw NothingNightMons            ; SS_ANNE_3F
	dw NothingNightMons            ; SS_ANNE_B1F
	dw NothingNightMons            ; SS_ANNE_BOW
	dw NothingNightMons            ; SS_ANNE_KITCHEN
	dw NothingNightMons            ; SS_ANNE_CAPTAINS_ROOM
	dw NothingNightMons            ; SS_ANNE_1F_ROOMS
	dw NothingNightMons            ; SS_ANNE_2F_ROOMS
	dw NothingNightMons            ; SS_ANNE_B1F_ROOMS
	dw NothingNightMons            ; MT_MOON_SQUARE
	dw NothingNightMons            ; MT_MOON_SQUARE_SHOP
	dw NothingNightMons            ; ROUTE_27_HOUSE
	dw NothingNightMons            ; VICTORY_ROAD_1F
	dw NothingNightMons            ; UNUSED_MAP_6D
	dw NothingNightMons            ; UNUSED_MAP_6E
	dw NothingNightMons            ; UNUSED_MAP_6F
	dw NothingNightMons            ; UNUSED_MAP_70
	dw NothingNightMons            ; LANCES_ROOM
	dw NothingNightMons            ; UNUSED_MAP_72
	dw NothingNightMons            ; UNUSED_MAP_73
	dw NothingNightMons            ; UNUSED_MAP_74
	dw NothingNightMons            ; UNUSED_MAP_75
	dw NothingNightMons            ; HALL_OF_FAME
	dw NothingNightMons            ; UNDERGROUND_PATH_NORTH_SOUTH
	dw NothingNightMons            ; CHAMPIONS_ROOM
	dw NothingNightMons            ; UNDERGROUND_PATH_WEST_EAST
	dw NothingNightMons            ; CELADON_MART_1F
	dw NothingNightMons            ; CELADON_MART_2F
	dw NothingNightMons            ; CELADON_MART_3F
	dw NothingNightMons            ; CELADON_MART_4F
	dw NothingNightMons            ; CELADON_MART_ROOF
	dw NothingNightMons            ; CELADON_MART_ELEVATOR
	dw NothingNightMons            ; CELADON_MANSION_1F
	dw NothingNightMons            ; CELADON_MANSION_2F
	dw NothingNightMons            ; CELADON_MANSION_3F
	dw NothingNightMons            ; CELADON_MANSION_ROOF
	dw NothingNightMons            ; CELADON_MANSION_ROOF_HOUSE
	dw NothingNightMons            ; CELADON_POKECENTER
	dw NothingNightMons            ; CELADON_GYM
	dw NothingNightMons            ; GAME_CORNER
	dw NothingNightMons            ; CELADON_MART_5F
	dw NothingNightMons            ; GAME_CORNER_PRIZE_ROOM
	dw NothingNightMons            ; CELADON_DINER
	dw NothingNightMons            ; CELADON_CHIEF_HOUSE
	dw NothingNightMons            ; CELADON_HOTEL
	dw NothingNightMons            ; LAVENDER_POKECENTER
	dw NothingNightMons            ; POKEMON_TOWER_1F
	dw NothingNightMons            ; POKEMON_TOWER_2F
	dw NothingNightMons            ; POKEMON_TOWER_3F
	dw NothingNightMons            ; POKEMON_TOWER_4F
	dw NothingNightMons            ; POKEMON_TOWER_5F
	dw NothingNightMons            ; POKEMON_TOWER_6F
	dw NothingNightMons            ; POKEMON_TOWER_7F
	dw NothingNightMons            ; MR_FUJIS_HOUSE
	dw NothingNightMons            ; LAVENDER_MART
	dw NothingNightMons            ; LAVENDER_CUBONE_HOUSE
	dw NothingNightMons            ; FUCHSIA_MART
	dw NothingNightMons            ; FUCHSIA_BILLS_GRANDPAS_HOUSE
	dw NothingNightMons            ; FUCHSIA_POKECENTER
	dw NothingNightMons            ; WARDENS_HOUSE
	dw NothingNightMons            ; SAFARI_ZONE_GATE
	dw NothingNightMons            ; FUCHSIA_GYM
	dw NothingNightMons            ; FUCHSIA_MEETING_ROOM
	dw SeafoamIslandsNightMons     ; SEAFOAM_ISLANDS_B1F
	dw SeafoamIslandsNightMons     ; SEAFOAM_ISLANDS_B2F
	dw SeafoamIslandsNightMons     ; SEAFOAM_ISLANDS_B3F
	dw SeafoamIslandsNightMons     ; SEAFOAM_ISLANDS_B4F
	dw NothingNightMons            ; VERMILION_OLD_ROD_HOUSE
	dw NothingNightMons            ; FUCHSIA_GOOD_ROD_HOUSE
	dw NothingNightMons            ; POKEMON_MANSION_1F
	dw NothingNightMons            ; CINNABAR_GYM
	dw NothingNightMons            ; CINNABAR_LAB
	dw NothingNightMons            ; CINNABAR_LAB_TRADE_ROOM
	dw NothingNightMons            ; CINNABAR_LAB_METRONOME_ROOM
	dw NothingNightMons            ; CINNABAR_LAB_FOSSIL_ROOM
	dw NothingNightMons            ; CINNABAR_POKECENTER
	dw NothingNightMons            ; CINNABAR_MART
	dw NothingNightMons            ; ROUTE_28_STEEL_WING_HOUSE
	dw NothingNightMons            ; INDIGO_PLATEAU_LOBBY
	dw NothingNightMons            ; COPYCATS_HOUSE_1F
	dw NothingNightMons            ; COPYCATS_HOUSE_2F
	dw NothingNightMons            ; FIGHTING_DOJO
	dw NothingNightMons            ; SAFFRON_GYM
	dw NothingNightMons            ; SAFFRON_PIDGEY_HOUSE
	dw NothingNightMons            ; SAFFRON_MART
	dw NothingNightMons            ; SILPH_CO_1F
	dw NothingNightMons            ; SAFFRON_POKECENTER
	dw NothingNightMons            ; MR_PSYCHICS_HOUSE
	dw NothingNightMons            ; ROUTE_15_GATE_1F
	dw NothingNightMons            ; ROUTE_15_GATE_2F
	dw NothingNightMons            ; ROUTE_16_GATE_1F
	dw NothingNightMons            ; ROUTE_16_GATE_2F
	dw NothingNightMons            ; ROUTE_16_FLY_HOUSE
	dw NothingNightMons            ; ROUTE_12_SUPER_ROD_HOUSE
	dw NothingNightMons            ; ROUTE_18_GATE_1F
	dw NothingNightMons            ; ROUTE_18_GATE_2F
	dw SeafoamIslandsNightMons     ; SEAFOAM_ISLANDS_1F
	dw NothingNightMons            ; ROUTE_22_GATE
	dw NothingNightMons            ; VICTORY_ROAD_2F
	dw NothingNightMons            ; ROUTE_12_GATE_2F
	dw NothingNightMons            ; VERMILION_TRADE_HOUSE
	dw NothingNightMons            ; DIGLETTS_CAVE
	dw NothingNightMons            ; VICTORY_ROAD_3F
	dw NothingNightMons            ; ROCKET_HIDEOUT_B1F
	dw NothingNightMons            ; ROCKET_HIDEOUT_B2F
	dw NothingNightMons            ; ROCKET_HIDEOUT_B3F
	dw NothingNightMons            ; ROCKET_HIDEOUT_B4F
	dw NothingNightMons            ; ROCKET_HIDEOUT_ELEVATOR
	dw EndgameNightMons            ; SILVER_CAVE_1F
	dw EndgameNightMons            ; SILVER_CAVE_2F
	dw NothingNightMons            ; SILVER_CAVE_3F
;	dw NothingNightMons            ; SILPH_CO_2F
;	dw NothingNightMons            ; SILPH_CO_3F
;	dw NothingNightMons            ; SILPH_CO_4F
;	dw NothingNightMons            ; SILPH_CO_5F
	dw NothingNightMons            ; SILVER_CAVE_ITEM_ROOMS
	dw NothingNightMons            ; TOHJO_FALLS
	dw NothingNightMons            ; SILPH_CO_8F
	dw NothingNightMons            ; POKEMON_MANSION_2F
	dw NothingNightMons            ; POKEMON_MANSION_3F
	dw NothingNightMons            ; POKEMON_MANSION_B1F
	dw NothingNightMons            ; SAFARI_ZONE_EAST
	dw NothingNightMons            ; SAFARI_ZONE_NORTH
	dw NothingNightMons            ; SAFARI_ZONE_WEST
	dw NothingNightMons            ; SAFARI_ZONE_CENTER
	dw NothingNightMons            ; SAFARI_ZONE_CENTER_REST_HOUSE
	dw NothingNightMons            ; SAFARI_ZONE_SECRET_HOUSE
	dw NothingNightMons            ; SAFARI_ZONE_WEST_REST_HOUSE
	dw NothingNightMons            ; SAFARI_ZONE_EAST_REST_HOUSE
	dw NothingNightMons            ; SAFARI_ZONE_NORTH_REST_HOUSE
	dw EndgameNightMons            ; CERULEAN_CAVE_2F
	dw EndgameNightMons            ; CERULEAN_CAVE_B1F
	dw EndgameNightMons            ; CERULEAN_CAVE_1F
	dw NothingNightMons            ; NAME_RATERS_HOUSE
	dw NothingNightMons            ; CERULEAN_BADGE_HOUSE
	dw NothingNightMons            ; SILVER_CAVE_POKECENTER
	dw NothingNightMons            ; ROCK_TUNNEL_B1F
	dw NothingNightMons            ; HIDDEN_FOREST
	dw NothingNightMons            ; SILPH_CO_10F
	dw NothingNightMons            ; SILPH_CO_11F
	dw NothingNightMons            ; SILPH_CO_ELEVATOR
	dw NothingNightMons            ; UNUSED_MAP_ED
	dw NothingNightMons            ; UNUSED_MAP_EE
	dw NothingNightMons            ; TRADE_CENTER
	dw NothingNightMons            ; COLOSSEUM
	dw NothingNightMons            ; UNUSED_MAP_F1
	dw NothingNightMons            ; UNUSED_MAP_F2
	dw NothingNightMons            ; UNUSED_MAP_F3
	dw NothingNightMons            ; UNUSED_MAP_F4
	dw NothingNightMons            ; LORELEIS_ROOM
	dw NothingNightMons            ; BRUNOS_ROOM
	dw NothingNightMons            ; AGATHAS_ROOM
	dw NothingNightMons            ; SUMMER_BEACH_HOUSE

NothingNightMons:
	db $ff
	
ForestNightMons:
IF DEF(_RED)
	db 2, WEEDLE     ; 19.9% (1)
	db 3, VENONAT    ;  9.8% (4)
	db 2, VENONAT    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 2, CATERPIE   ; 19.9% (1)
	db 3, VENONAT    ;  9.8% (4)
	db 2, VENONAT    ;  5.1% (7)
ENDC

MtMoonNightMons:
	db 4, ZUBAT      ; 19.9% (1)
	db 3, PARAS      ;  9.8% (4)
	db 2, CLEFFA     ;  5.1% (7)
	
SeafoamIslandsNightMons:
	db 12, GOLBAT     ; 19.9% (1)
	db  3, SNEASEL    ;  9.8% (4)
	db  4, SNEASEL    ;  5.1% (7)

Route1NightMons:
	db 2, RATTATA    ; 19.9% (1)
	db 2, ZUBAT      ;  9.8% (4)
	db 3, ZUBAT      ;  5.1% (7)

Route3NightMons:
	db 3, ZUBAT      ; 19.9% (1)
	db 4, RATTATA    ;  9.8% (4)
	db 3, CLEFAIRY   ;  5.1% (7)

Route5NightMons:
IF DEF(_RED)
	db 4, ODDISH     ; 19.9% (1)
	db 4, CHIMEOW    ;  9.8% (4)
	db 3, ODDISH     ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 4, BELLSPROUT ; 19.9% (1)
	db 4, MEOWTH     ;  9.8% (4)
	db 3, BELLSPROUT ;  5.1% (7)
ENDC

Route7NightMons:
EndgameNightMons:
IF DEF(_RED)
	db  4, MURKROW    ; 19.9% (1)
	db  4, CHIMEOW    ;  9.8% (4)
	db 10, GLOOM      ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db  4, MURKROW    ; 19.9% (1)
	db  4, MEOWTH     ;  9.8% (4)
	db 10, WEEPINBELL ;  5.1% (7)
ENDC

Route11NightMons:
IF DEF(_RED)
	db  3, DROWZEE   ; 19.9% (1)
	db  4, EKANS     ;  9.8% (4)
	db  5, EKANS     ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db  3, DROWZEE   ; 19.9% (1)
	db  4, SANDSHREW ;  9.8% (4)
	db  5, SANDSHREW ;  5.1% (7)
ENDC

Route12NightMons:
IF DEF(_RED)
	db 10, GLOOM      ; 19.9% (1)
	db  3, MURKROW    ;  9.8% (4)
	db  2, MURKROW    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 10, WEEPINBELL ; 19.9% (1)
	db  3, MURKROW    ;  9.8% (4)
	db  2, MURKROW    ;  5.1% (7)
ENDC

Route14NightMons:
IF DEF(_RED)
	db 11, GLOOM      ; 19.9% (1)
	db  3, MURKROW    ;  9.8% (4)
	db  2, MURKROW    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 11, WEEPINBELL ; 19.9% (1)
	db  4, MURKROW    ;  9.8% (4)
	db  3, MURKROW    ;  5.1% (7)
ENDC

Route16NightMons:
	db  5, FEAROW     ; 19.9% (1)
	db  3, MURKROW    ;  9.8% (4)
	db  2, MURKROW    ;  5.1% (7)

Route17NightMons:
IF DEF(_RED)
	db  4, MURKROW    ; 19.9% (1)
	db  3, HOUNDOUR   ;  9.8% (4)
	db  2, SALANDIT   ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db  4, MURKROW    ; 19.9% (1)
	db  3, HOUNDOUR   ;  9.8% (4)
	db  2, CROAGUNK   ;  5.1% (7)
ENDC

Route21NightMons:
	db  3, DROWZEE   ; 19.9% (1)
	db  3, TANGELA   ;  9.8% (4)
	db  5, NOIBAT    ;  5.1% (7)

Route22NightMons:
IF DEF(_RED)
	db 3, ZUBAT      ; 19.9% (1)
	db 3, CHIMEOW    ;  9.8% (4)
	db 2, CHIMEOW    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 3, ZUBAT      ; 19.9% (1)
	db 3, MEOWTH     ;  9.8% (4)
	db 2, MEOWTH     ;  5.1% (7)
ENDC

Route23NightMons:
IF DEF(_RED)
	db 10, VENOMOTH   ; 19.9% (1)
	db  5, NOIBAT     ;  9.8% (4)
	db 11, BELLUNA    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 10, VENOMOTH   ; 19.9% (1)
	db  5, NOIBAT     ;  9.8% (4)
	db 11, PERSIAN    ;  5.1% (7)
ENDC

Route24NightMons:
IF DEF(_RED)
	db 4, ODDISH     ; 19.9% (1)
	db 3, WEEDLE     ;  9.8% (4)
	db 3, ODDISH     ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 4, BELLSPROUT ; 19.9% (1)
	db 3, CATERPIE   ;  9.8% (4)
	db 3, BELLSPROUT ;  5.1% (7)
ENDC

Route25NightMons:
IF DEF(_RED)
	db 4, VENONAT    ; 19.9% (1)
	db 2, ODDISH     ;  9.8% (4)
	db 2, BELLSPROUT ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 4, VENONAT    ; 19.9% (1)
	db 2, BELLSPROUT ;  9.8% (4)
	db 2, ODDISH     ;  5.1% (7)
ENDC

Route26NightMons:
	db  5, RATTATA    ; 19.9% (1)
	db  6, MURKROW    ;  9.8% (4)
	db  5, MURKROW    ;  5.1% (7)
	
Route28NightMons:
IF DEF(_RED)
	db 10, SNEASEL    ; 19.9% (1)
	db 10, BELLUNA    ;  9.8% (4)
	db  9, BELLUNA    ;  5.1% (7)
ENDC
IF DEF(_BLUE)
	db 10, SNEASEL    ; 19.9% (1)
	db 10, PERSIAN    ;  9.8% (4)
	db  9, PERSIAN    ;  5.1% (7)
ENDC