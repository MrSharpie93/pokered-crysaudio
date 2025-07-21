; pokemon ids
; indexes for:
; - MonsterNames (see data/pokemon/names.asm)
; - EvosMovesPointerTable (see data/pokemon/evos_moves.asm)
; - CryData (see data/pokemon/cries.asm)
; - PokedexOrder (see data/pokemon/dex_order.asm)
; - PokedexEntryPointers (see data/pokemon/dex_entries.asm)
	const_def
	const NO_MON             ; $00
	const RHYDON             ; $01
	const KANGASKHAN         ; $02
	const NIDORAN_M          ; $03
	const CLEFAIRY           ; $04
	const SPEAROW            ; $05
	const VOLTORB            ; $06
	const NIDOKING           ; $07
	const SLOWBRO            ; $08
	const IVYSAUR            ; $09
	const EXEGGUTOR          ; $0A
	const LICKITUNG          ; $0B
	const EXEGGCUTE          ; $0C
	const GRIMER             ; $0D
	const GENGAR             ; $0E
	const NIDORAN_F          ; $0F
	const NIDOQUEEN          ; $10
	const CUBONE             ; $11
	const RHYHORN            ; $12
	const LAPRAS             ; $13
	const ARCANINE           ; $14
	const MEW                ; $15
	const GYARADOS           ; $16
	const SHELLDER           ; $17
	const TENTACOOL          ; $18
	const GASTLY             ; $19
	const SCYTHER            ; $1A
	const STARYU             ; $1B
	const BLASTOISE          ; $1C
	const PINSIR             ; $1D
	const TANGELA            ; $1E
	const_skip               ; $1F SCIZOR
	const_skip               ; $20 YOSHI
	const GROWLITHE          ; $21
	const ONIX               ; $22
	const FEAROW             ; $23
	const PIDGEY             ; $24
	const SLOWPOKE           ; $25
	const KADABRA            ; $26
	const GRAVELER           ; $27
	const CHANSEY            ; $28
	const MACHOKE            ; $29
	const MR_MIME            ; $2A
	const HITMONLEE          ; $2B
	const HITMONCHAN         ; $2C
	const ARBOK              ; $2D
	const PARASECT           ; $2E
	const PSYDUCK            ; $2F
	const DROWZEE            ; $30
	const GOLEM              ; $31
	const_skip               ; $32 HERACROSS
	const MAGMAR             ; $33
	const_skip               ; $34 MAGMORTAR
	const ELECTABUZZ         ; $35
	const MAGNETON           ; $36
	const KOFFING            ; $37
	const_skip               ; $38 SNEASEL
	const MANKEY             ; $39
	const SEEL               ; $3A
	const DIGLETT            ; $3B
	const TAUROS             ; $3C
	const_skip               ; $3D WHISMUR
	const_skip               ; $3E LOUDRED
	const_skip               ; $3F EXPLOUD
	const FARFETCHD          ; $40
	const VENONAT            ; $41
	const DRAGONITE          ; $42
	const_skip               ; $43 MAMOSWINE
	const_skip               ; $44 SWINUB
	const_skip               ; $45 PILOSWINE
	const DODUO              ; $46
	const POLIWAG            ; $47
	const JYNX               ; $48
	const MOLTRES            ; $49
	const ARTICUNO           ; $4A
	const ZAPDOS             ; $4B
	const DITTO              ; $4C
	const MEOWTH             ; $4D
	const KRABBY             ; $4E
	const_skip               ; $4F BAGON
	const_skip               ; $50 SHELGON
	const_skip               ; $51 SALAMENCE
	const VULPIX             ; $52
	const NINETALES          ; $53
	const PIKACHU            ; $54
	const RAICHU             ; $55
	const_skip               ; $56 GOROCHU
	const_skip               ; $57 MAWILE
	const DRATINI            ; $58
	const DRAGONAIR          ; $59
	const KABUTO             ; $5A
	const KABUTOPS           ; $5B
	const HORSEA             ; $5C
	const SEADRA             ; $5D
	const_skip               ; $5E SKARMORY
	const_skip               ; $5F HOUNDOUR
	const SANDSHREW          ; $60
	const SANDSLASH          ; $61
	const OMANYTE            ; $62
	const OMASTAR            ; $63
	const JIGGLYPUFF         ; $64
	const WIGGLYTUFF         ; $65
	const EEVEE              ; $66
	const FLAREON            ; $67
	const JOLTEON            ; $68
	const VAPOREON           ; $69
	const MACHOP             ; $6A
	const ZUBAT              ; $6B
	const EKANS              ; $6C
	const PARAS              ; $6D
	const POLIWHIRL          ; $6E
	const POLIWRATH          ; $6F
	const WEEDLE             ; $70
	const KAKUNA             ; $71
	const BEEDRILL           ; $72
	const_skip               ; $73 HOUNDOOM
	const DODRIO             ; $74
	const PRIMEAPE           ; $75
	const DUGTRIO            ; $76
	const VENOMOTH           ; $77
	const DEWGONG            ; $78
	const_skip               ; $79 KINGDRA
	const_skip               ; $7A SALANDIT
	const CATERPIE           ; $7B
	const METAPOD            ; $7C
	const BUTTERFREE         ; $7D
	const MACHAMP            ; $7E
	const_skip               ; $7F SALAZZLE
	const GOLDUCK            ; $80
	const HYPNO              ; $81
	const GOLBAT             ; $82
	const MEWTWO             ; $83
	const SNORLAX            ; $84
	const MAGIKARP           ; $85
	const_skip               ; $86 PORYGON2
	const_skip               ; $87 PORYGONZ
	const MUK                ; $88
	const_skip               ; $89 MIME_JR
	const KINGLER            ; $8A
	const CLOYSTER           ; $8B
	const_skip               ; $8C TYROGUE
	const ELECTRODE          ; $8D
	const CLEFABLE           ; $8E
	const WEEZING            ; $8F
	const PERSIAN            ; $90
	const MAROWAK            ; $91
	const_skip               ; $92 HITMONTOP
	const HAUNTER            ; $93
	const ABRA               ; $94
	const ALAKAZAM           ; $95
	const PIDGEOTTO          ; $96
	const PIDGEOT            ; $97
	const STARMIE            ; $98
	const BULBASAUR          ; $99
	const VENUSAUR           ; $9A
	const TENTACRUEL         ; $9B
	const_skip               ; $9C SMOOCHUM
	const GOLDEEN            ; $9D
	const SEAKING            ; $9E
	const_skip               ; $9F ELEKID
	const_skip               ; $A0 MAGBY
	const_skip               ; $A1 MILTANK
	const_skip               ; $A2 BLISSEY
	const PONYTA             ; $A3
	const RAPIDASH           ; $A4
	const RATTATA            ; $A5
	const RATICATE           ; $A6
	const NIDORINO           ; $A7
	const NIDORINA           ; $A8
	const GEODUDE            ; $A9
	const PORYGON            ; $AA
	const AERODACTYL         ; $AB
	const_skip               ; $AC REGIROCK
	const MAGNEMITE          ; $AD
	const_skip               ; $AE REGICE
	const_skip               ; $AF REGISTEEL
	const CHARMANDER         ; $B0
	const SQUIRTLE           ; $B1
	const CHARMELEON         ; $B2
	const WARTORTLE          ; $B3
	const CHARIZARD          ; $B4
	const_skip               ; $B5 ELECTIVIRE
	const FOSSIL_KABUTOPS    ; $B6
	const FOSSIL_AERODACTYL  ; $B7
	const MON_GHOST          ; $B8 REGIGIGAS
	const ODDISH             ; $B9
	const GLOOM              ; $BA
	const VILEPLUME          ; $BB
	const BELLSPROUT         ; $BC
	const WEEPINBELL         ; $BD
	const VICTREEBEL         ; $BE
; ~$~ADDED: New Pokemon.~$~
;	const DUSKULL            ; $BF
;	const DUSCLOPS           ; $C0
;	const DUSKNOIR           ; $C1
;	const LARVITAR           ; $C2
;	const PUPITAR            ; $C3
;	const TYRANITAR          ; $C4
;	const TRAPINCH           ; $C5
;	const VIBRAVA            ; $C6
;	const FLYGON             ; $C7
;	const CHIMEOW            ; $C8
;	const BELLUNA            ; $C9
;	const CROAGUNK           ; $CA
;	const TOXICROAK          ; $CB
;	const MAGNEZONE          ; $CC
;	const LICKILICKY         ; $CD
;	const RHYPERIOR          ; $CE
;	const TANGROWTH          ; $CF
;	const CROBAT             ; $D0
;	const JOLTIK             ; $D1
;	const GALVANTULA         ; $D2
;	const PICHU              ; $D3
;	const CLEFFA             ; $D4
;	const IGGLYBUFF          ; $D5
;	const TOGEPI             ; $D6
;	const TOGETIC            ; $D7
;	const TOGEKISS           ; $D8
;	const WEAVILE            ; $D9
;	const MAREEP             ; $DA
;	const FLAAFFY            ; $DB
;	const AMPHAROS           ; $DC
;	const BELLOSSOM          ; $DD
;	const MUNCHLAX           ; $DE
;	const BONSLY             ; $DF
;	const SUDOWOODO          ; $E0
;	const POLITOED           ; $E1
;	const HOPPIP             ; $E2
;	const SKIPLOOM           ; $E3
;	const JUMPLUFF           ; $E4
;	const LITWICK            ; $E5
;	const LAMPENT            ; $E6
;	const CHANDELURE         ; $E7
;	const SYLVEON            ; $E8
;	const LEAFEON            ; $E9
;	const GLACEON            ; $EA
;	const ESPEON             ; $EB
;	const UMBREON            ; $EC
;	const MURKROW            ; $ED
;	const SLOWKING           ; $EE
;	const BELDUM             ; $EF
;	const METANG             ; $F0
;	const METAGROSS          ; $F1
;	const HONCHKROW          ; $F2
;	const HAPPINY            ; $F3
;	const SPIRITOMB          ; $F4
;	const TURBAN             ; $F5
;	const GLIGAR             ; $F6
;	const STEELIX            ; $F7
;	const NOIBAT             ; $F8
;	const NOIVERN            ; $F9
;	const GLISCOR            ; $FA
;	const THUFIZER           ; $FB
;	const MISSINGNO          ; $FC
;	const MON_GHOST          ; $FD
;	const WHITE_HAND         ; $FE

DEF NUM_POKEMON_INDEXES EQU const_value - 1

; starters
DEF STARTER1 EQU CHARMANDER
DEF STARTER2 EQU SQUIRTLE
DEF STARTER3 EQU BULBASAUR

; ghost Marowak in Pokémon Tower
DEF RESTLESS_SOUL EQU MAROWAK;SPIRITOMB
