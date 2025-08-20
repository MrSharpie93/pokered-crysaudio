; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemPrices (see data/items/prices.asm)
; - TechnicalMachinePrices (see data/items/tm_prices.asm)
; - KeyItemFlags (see data/items/key_items.asm)
; - ItemUsePtrTable (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM       ; $00
	const MASTER_BALL   ; $01
	const ULTRA_BALL    ; $02
	const GREAT_BALL    ; $03
	const POKE_BALL     ; $04
	const TOWN_MAP      ; $05
	const BICYCLE       ; $06
	const SURFBOARD     ; $07
	const SAFARI_BALL   ; $08
	const POKEDEX       ; $09
	const MOON_STONE    ; $0A
	const ANTIDOTE      ; $0B
	const BURN_HEAL     ; $0C
	const ICE_HEAL      ; $0D
	const AWAKENING     ; $0E
	const PARLYZ_HEAL   ; $0F
	const FULL_RESTORE  ; $10
	const MAX_POTION    ; $11
	const HYPER_POTION  ; $12
	const SUPER_POTION  ; $13
	const POTION        ; $14
	const SAFARI_BAIT   ; $15 ; was BOULDERBADGE
	const SAFARI_ROCK   ; $16 ; was CASCADEBADGE
	const SUN_STONE     ; $17 ; was THUNDERBADGE
	const SHINY_STONE   ; $18 ; was RAINBOWBADGE
	const DUSK_STONE    ; $19 ; was SOULBADGE
	const KINGS_ROCK    ; $1A ; was MARSHBADGE
	const METAL_COAT    ; $1B ; was VOLCANOBADGE
	const LINK_CORD     ; $1C ; was EARTHBADGE
	const ESCAPE_ROPE   ; $1D ; now a key item
	const REPEL         ; $1E
	const OLD_AMBER     ; $1F ; now not a key item
	const FIRE_STONE    ; $20
	const THUNDER_STONE ; $21
	const WATER_STONE   ; $22
	const HP_UP         ; $23
	const PROTEIN       ; $24
	const IRON          ; $25
	const CARBOS        ; $26
	const CALCIUM       ; $27
	const RARE_CANDY    ; $28
	const DOME_FOSSIL   ; $29 ; now not a key item
	const HELIX_FOSSIL  ; $2A ; now not a key item
	const SECRET_KEY    ; $2B
	const AXE           ; $2C ; ~$~ADDED~$~
	const BIKE_VOUCHER  ; $2D
	const X_ACCURACY    ; $2E
	const LEAF_STONE    ; $2F
	const CARD_KEY      ; $30
	const NUGGET        ; $31
	const POKE_PEP      ; $32 ; ~$~ADDED~$~
	const POKE_DOLL     ; $33
	const FULL_HEAL     ; $34
	const REVIVE        ; $35
	const MAX_REVIVE    ; $36
	const GUARD_SPEC    ; $37
	const SUPER_REPEL   ; $38
	const MAX_REPEL     ; $39
	const DIRE_HIT      ; $3A
	const COIN          ; $3B
	const FRESH_WATER   ; $3C
	const SODA_POP      ; $3D
	const LEMONADE      ; $3E
	const S_S_TICKET    ; $3F
	const GOLD_TEETH    ; $40
	const X_ATTACK      ; $41
	const X_DEFEND      ; $42
	const X_SPEED       ; $43
	const X_SPECIAL     ; $44
	const COIN_CASE     ; $45 ; ~$~TODO: Having this in your bag doubles trainer payouts.~$~
	const OAKS_PARCEL   ; $46
	const ITEMFINDER    ; $47
	const SILPH_SCOPE   ; $48
	const POKE_FLUTE    ; $49
	const LIFT_KEY      ; $4A
	const EXP_ALL       ; $4B ; now a key item
	const OLD_ROD       ; $4C
	const GOOD_ROD      ; $4D
	const SUPER_ROD     ; $4E
	const PP_UP         ; $4F
	const ETHER         ; $50
	const MAX_ETHER     ; $51
	const ELIXER        ; $52
	const MAX_ELIXER    ; $53
; ~$~ADDED: New items.~$~
	const MOOMOO_MILK   ; $54
	const SLOWPOKETAIL  ; $55
	const RARE_CARD     ; $56
	const ODD_KEYSTONE  ; $57
	const BIRDWHISTLE   ; $58
DEF NUM_ITEMS EQU const_value - 1

; elevator floors use item IDs
	const FLOOR_B2F     ; $59
	const FLOOR_B1F     ; $5A
	const FLOOR_1F      ; $5B
	const FLOOR_2F      ; $5C
	const FLOOR_3F      ; $5D
	const FLOOR_4F      ; $5E
	const FLOOR_5F      ; $5F
	const FLOOR_6F      ; $60
	const FLOOR_7F      ; $61
	const FLOOR_8F      ; $62
	const FLOOR_9F      ; $63
	const FLOOR_10F     ; $64
	const FLOOR_11F     ; $65
	const FLOOR_B4F     ; $66
DEF NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
DEF NUM_TMS EQU 50

DEF __tmhm_value__ = NUM_TMS + 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; $C4
	add_hm FLY          ; $C5
	add_hm SURF         ; $C6
	add_hm STRENGTH     ; $C7
	add_hm FLASH        ; $C8
	add_hm WATERFALL    ; $C9
DEF NUM_HMS EQU const_value - HM01

DEF __tmhm_value__ = 1

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF TM01 EQU const_value
	add_tm DRAIN_PUNCH  ; $CA
	add_tm DRAGON_CLAW  ; $CB
	add_tm SWORDS_DANCE ; $CC
	add_tm CURSE        ; $CD
	add_tm BRUTAL_SWING ; $CE
	add_tm TOXIC        ; $CF
	add_tm OMINOUS_WIND ; $D0
	add_tm BODY_SLAM    ; $D1
	add_tm GIGA_IMPACT  ; $D2
	add_tm DOUBLE_EDGE  ; $D3
	add_tm BUBBLEBEAM   ; $D4
	add_tm SCALD        ; $D5
	add_tm ICE_BEAM     ; $D6
	add_tm BLIZZARD     ; $D7
	add_tm HYPER_BEAM   ; $D8
	add_tm LIGHT_SCREEN ; $D9
	add_tm PROTECT      ; $DA
	add_tm FOCUS_BLAST  ; $DB
	add_tm GIGA_DRAIN   ; $DC
	add_tm SAFEGUARD    ; $DD
	add_tm FLASH_CANNON ; $DE
	add_tm SOLARBEAM    ; $DF
	add_tm IRON_TAIL    ; $E0
	add_tm THUNDERBOLT  ; $E1
	add_tm THUNDER      ; $E2
	add_tm EARTHQUAKE   ; $E3
	add_tm FISSURE      ; $E4
	add_tm DIG          ; $E5
	add_tm PSYCHIC_M    ; $E6
	add_tm SHADOW_BALL  ; $E7
	add_tm X_SCISSOR    ; $E8
	add_tm DOUBLE_TEAM  ; $E9
	add_tm REFLECT      ; $EA
	add_tm POISON_JAB   ; $EB
	add_tm FLAMETHROWER ; $EC
	add_tm SLUDGE_BOMB  ; $ED
	add_tm WILL_O_WISP  ; $EE
	add_tm FIRE_BLAST   ; $EF
	add_tm ROCK_TOMB    ; $F0
	add_tm AERIAL_ACE   ; $F1
	add_tm BULLET_SEED  ; $F2
	add_tm ZEN_HEADBUTT ; $F3
	add_tm HURRICANE    ; $F4
	add_tm REST         ; $F5
	add_tm THUNDER_WAVE ; $F6
	add_tm DARK_PULSE   ; $F7
	add_tm STEEL_WING   ; $F8
	add_tm ROCK_SLIDE   ; $F9
	add_tm DAZZLINGLEAM ; $FA
	add_tm ICICLE_CRASH ; $FB
ASSERT NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
DEF __tmhm_value__ = NUM_TM_HM + 1
DEF UNUSED_TMNUM EQU __tmhm_value__

DEF MAX_HIDDEN_ITEMS EQU 112
DEF MAX_HIDDEN_COINS EQU 16
