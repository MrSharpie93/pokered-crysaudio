; super rod encounters
SuperRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .BeginningGroup
	dbw VIRIDIAN_CITY,       .BeginningGroup
	dbw CERULEAN_CITY,       .CeruleanGroup
	dbw VERMILION_CITY,      .VermilionGroup
	dbw CELADON_CITY,        .GrimerGroup
	dbw FUCHSIA_CITY,        .GyaradosGroup
	dbw CINNABAR_ISLAND,     .SeaRouteGroup
	dbw NEW_BARK_TOWN,       .BeginningGroup
	dbw ROUTE_4,             .CeruleanGroup
	dbw ROUTE_6,             .VermilionGroup
	dbw ROUTE_10,            .Group5
	dbw ROUTE_11,            .VermilionGroup
	dbw ROUTE_12,            .SilenceBridgeGroup
	dbw ROUTE_13,            .SilenceBridgeGroup
	dbw ROUTE_17,            .SilenceBridgeGroup
	dbw ROUTE_18,            .SilenceBridgeGroup
	dbw ROUTE_19,            .SeaRouteGroup
	dbw ROUTE_20,            .SeaRouteGroup
	dbw ROUTE_21,            .SeaRouteGroup
	dbw ROUTE_22,            .Group2
	dbw ROUTE_23,            .VictoryRoadGroup
	dbw ROUTE_24,            .CeruleanGroup
	dbw ROUTE_25,            .CeruleanGroup
	dbw ROUTE_26,            .VictoryRoadGroup
	dbw ROUTE_27,            .VictoryRoadGroup
	dbw ROUTE_28,            .VictoryRoadGroup
	dbw CERULEAN_GYM,        .CeruleanGroup
	dbw VERMILION_DOCK,      .VermilionGroup
	dbw SEAFOAM_ISLANDS_B3F, .SeaRouteGroup
	dbw SEAFOAM_ISLANDS_B4F, .SeaRouteGroup
	dbw SAFARI_ZONE_EAST,    .SafariGroup
	dbw SAFARI_ZONE_NORTH,   .SafariGroup
	dbw SAFARI_ZONE_WEST,    .SafariGroup
	dbw SAFARI_ZONE_CENTER,  .SafariGroup
;	dbw CERULEAN_CAVE_2F,    .EndGameGroup ; Game Freak this map doesn't have water.~$~
	dbw CERULEAN_CAVE_B1F,   .EndGameGroup
	dbw CERULEAN_CAVE_1F,    .EndGameGroup
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.BeginningGroup:
	db 2
	db 10, TENTACOOL
	db 10, POLIWAG

.Group2:
	db 2
	db 10, GOLDEEN
	db 10, POLIWAG

.CeruleanGroup:
	db 3
	db 10, PSYDUCK
	db 10, GOLDEEN
	db 10, KRABBY

.VermilionGroup:
	db 3
	db 10, KRABBY
	db 10, SHELLDER
	db 10, TENTACOOL

.Group5:
	db 2
	db 15, POLIWHIRL
	db 10, SLOWPOKE

.SafariGroup:
	db 4
	db 10, DRATINI
	db 10, TURBAN
	db 10, PSYDUCK
	db 10, SLOWPOKE

.SilenceBridgeGroup:
	db 4
	db 10, TENTACOOL
	db 10, SHELLDER
	db 10, GOLDEEN
	db 10, MAGIKARP

.SeaRouteGroup:
	db 4
	db 10, STARYU
	db 10, HORSEA
	db 10, SHELLDER
	db 10, TENTACOOL

.VictoryRoadGroup:
	db 4
	db 20, POLIWHIRL
	db 20, SEAKING
	db 20, KINGLER
	db 10, DRAGONAIR

.GyaradosGroup:
	db 4
	db 15, MAGIKARP
	db 15, KRABBY
	db 15, GOLDEEN
	db 10, GYARADOS
	
.GrimerGroup:
	db 3
	db  5, GRIMER
	db 10, GRIMER
	db 15, GRIMER
	
.EndGameGroup:
	db 4
	db 30, SLOWBRO
	db 30, SEADRA
	db 30, GYARADOS
	db 30, DRAGONAIR
