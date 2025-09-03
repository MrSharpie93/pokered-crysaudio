; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - AttackAnimationPointers (see data/moves/animations.asm)
; - MoveSoundTable (see data/moves/sfx.asm)
	const_def
	const NO_MOVE      ; 00
	const POUND        ; 01
	const KARATE_CHOP  ; 02
	const DOUBLE_HIT   ; 03 was DOUBLESLAP
	const BULLET_PUNCH ; 04 was COMET_PUNCH
	const MEGA_PUNCH   ; 05
	const PAY_DAY      ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const SCRATCH      ; 0a
	const VICEGRIP     ; 0b
	const GUILLOTINE   ; 0c
	const RAZOR_WIND   ; 0d
	const SWORDS_DANCE ; 0e
	const CUT          ; 0f
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const HURRICANE    ; 12 was WHIRLWIND
	const FLY          ; 13
	const BIND         ; 14 also WRAP
	const BREAK_SWIPE  ; 15 was SLAM
	const VINE_WHIP    ; 16
	const STOMP        ; 17
	const DOUBLE_KICK  ; 18
	const MEGA_KICK    ; 19
	const BLAZE_KICK   ; 1a was JUMP_KICK
	const ROLLING_KICK ; 1b
	const SAND_ATTACK  ; 1c
	const HEADBUTT     ; 1d
	const HORN_ATTACK  ; 1e
	const FURY_ATTACK  ; 1f also FURY_SWIPES
	const SMART_STRIKE ; 20 was HORN_DRILL
	const TACKLE       ; 21
	const BODY_SLAM    ; 22
	const WHIRLPOOL    ; 23 was WRAP
	const TAKE_DOWN    ; 24
	const THRASH       ; 25
	const DOUBLE_EDGE  ; 26
	const TAIL_WHIP    ; 27
	const POISON_STING ; 28
	const TWINEEDLE    ; 29
	const PIN_MISSILE  ; 2a
	const LEER         ; 2b
	const BITE         ; 2c
	const GROWL        ; 2d
	const HOWL         ; 2e was ROAR
	const SING         ; 2f
	const SUPERSONIC   ; 30
	const SONICBOOM    ; 31
	const DISABLE      ; 32
	const ACID         ; 33
	const EMBER        ; 34
	const FLAMETHROWER ; 35
	const MIST         ; 36
	const WATER_GUN    ; 37
	const HYDRO_PUMP   ; 38
	const SURF         ; 39
	const ICE_BEAM     ; 3a
	const BLIZZARD     ; 3b
	const PSYBEAM      ; 3c
	const BUBBLEBEAM   ; 3d
	const AURORA_BEAM  ; 3e
	const HYPER_BEAM   ; 3f
	const PECK         ; 40
	const DRILL_PECK   ; 41
	const SUBMISSION   ; 42 sorta-kinda also SUPERPOWER, CLOSE_COMBAT
	const LOW_SWEEP    ; 43 was LOW_KICK
	const COUNTER      ; 44
	const SEISMIC_TOSS ; 45
	const STRENGTH     ; 46
	const GIGA_DRAIN   ; 47 was ABSORB
	const MEGA_DRAIN   ; 48
	const LEECH_SEED   ; 49
	const GROWTH       ; 4a
	const RAZOR_LEAF   ; 4b
	const SOLARBEAM    ; 4c
	const POISONPOWDER ; 4d
	const STUN_SPORE   ; 4e
	const SLEEP_POWDER ; 4f
	const PETAL_DANCE  ; 50
	const STRING_SHOT  ; 51
	const DRAGONBREATH ; 52 was DRAGON_RAGE
	const FIRE_SPIN    ; 53
	const THUNDERSHOCK ; 54
	const THUNDERBOLT  ; 55
	const THUNDER_WAVE ; 56
	const THUNDER      ; 57
	const ROCK_THROW   ; 58
	const EARTHQUAKE   ; 59
	const FISSURE      ; 5a
	const DIG          ; 5b
	const TOXIC        ; 5c
	const CONFUSION    ; 5d
	const PSYCHIC_M    ; 5e
	const HYPNOSIS     ; 5f
	const MEDITATE     ; 60
	const AGILITY      ; 61
	const QUICK_ATTACK ; 62
	const OUTRAGE      ; 63 was RAGE
	const TELEPORT     ; 64
	const NIGHT_SHADE  ; 65
	const MIMIC        ; 66
	const SCREECH      ; 67
	const DOUBLE_TEAM  ; 68
	const RECOVER      ; 69 also MORNING_SUN, SYNTHESIS, MOONLIGHT, SLACK_OFF
	const HARDEN       ; 6a also DEFENSE_CURL, WITHDRAW
	const MINIMIZE     ; 6b
	const SMOKESCREEN  ; 6c
	const CONFUSE_RAY  ; 6d
	const IRON_DEFENSE ; 6e was WITHDRAW
	const PROTECT      ; 6f was DEFENSE_CURL
	const BARRIER      ; 70
	const LIGHT_SCREEN ; 71
	const HAZE         ; 72
	const REFLECT      ; 73
	const FOCUS_ENERGY ; 74
	const METEOR_MASH  ; 75 was BIDE
	const METRONOME    ; 76
	const MIRROR_MOVE  ; 77 also COPYCAT
	const SELFDESTRUCT ; 78
	const EGG_BOMB     ; 79
	const LICK         ; 7a
	const SMOG         ; 7b
	const SLUDGE       ; 7c
	const BONE_CLUB    ; 7d
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const CLAMP        ; 80
	const SWIFT        ; 81
	const GIGA_IMPACT  ; 82 was SKULL_BASH
	const ICICLE_SPEAR ; 83 was SPIKE_CANNON
	const ASTONISH     ; 84 was CONSTRICT
	const AMNESIA      ; 85
	const COSMIC_POWER ; 86 was KINESIS
	const SOFTBOILED   ; 87 also MILK_DRINK
	const HI_JUMP_KICK ; 88
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const POISON_GAS   ; 8b
	const BULLET_SEED  ; 8c was BARRAGE
	const LEECH_LIFE   ; 8d
	const LOVELY_KISS  ; 8e
	const SKY_ATTACK   ; 8f also BRAVE_BIRD
	const TRANSFORM    ; 90
	const WATER_PULSE  ; 91 was BUBBLE
	const DIZZY_PUNCH  ; 92
	const SPORE        ; 93
	const FLASH        ; 94
	const ZEN_HEADBUTT ; 95 was PSYWAVE
	const SPLASH       ; 96
	const ACID_ARMOR   ; 97
	const CRABHAMMER   ; 98
	const EXPLOSION    ; 99
	const DRAGON_CLAW  ; 9a was FURY_SWIPES
	const BONEMERANG   ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const POISON_FANG  ; 9e was HYPER_FANG
	const SHARPEN      ; 9f works like HONE_CLAWS
	const CONVERSION   ; a0
	const TRI_ATTACK   ; a1
	const SUPER_FANG   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const STRUGGLE     ; a5
; ~$~ADDED: New moves.~$~
	const CURSE        ; a6
	const COTTON_SPORE ; a7
	const POWDER_SNOW  ; a8
	const MACH_PUNCH   ; a9
	const SCARY_FACE   ; aa
	const FEINT_ATTACK ; ab
	const SWEET_KISS   ; ac
	const SLUDGE_BOMB  ; ad
	const MUD_SLAP     ; ae
	const ZAP_CANNON   ; af
	const ICY_WIND     ; b0
	const CHARM        ; b1
	const SPARK        ; b2
	const STEEL_WING   ; b3
	const HEAL_BELL    ; b4
	const SAFEGUARD    ; b5
	const DYNAMICPUNCH ; b6
	const MEGAHORN     ; b7
	const RAPID_SPIN   ; b8
	const IRON_TAIL    ; b9
	const METAL_CLAW   ; ba
	const CROSS_CHOP   ; bb
	const TWISTER      ; bc
	const CRUNCH       ; bd
	const MIRROR_COAT  ; be
	const EXTREMESPEED ; bf
	const ANCIENTPOWER ; c0
	const SHADOW_BALL  ; c1
	const WILL_O_WISP  ; c2
	const HYPER_VOICE  ; c3
	const FAKE_TEARS   ; c4
	const ROCK_TOMB    ; c5
	const SILVER_WIND  ; c6
	const METAL_SOUND  ; c7
	const SIGNAL_BEAM  ; c8
	const SAND_TOMB    ; c9
	const SHEER_COLD   ; ca
	const AERIAL_ACE   ; cb
	const MUD_SHOT     ; cc
	const MAGICAL_LEAF ; cd
	const DRAGON_DANCE ; ce
	const SHOCK_WAVE   ; cf
	const SUCKER_PUNCH ; d0
	const FLARE_BLITZ  ; d1
	const POISON_JAB   ; d2
	const DARK_PULSE   ; d3
	const NIGHT_SLASH  ; d4
	const AIR_SLASH    ; d5
	const X_SCISSOR    ; d6
	const BUG_BUZZ     ; d7
	const DRAGON_PULSE ; d8
	const POWER_GEM    ; d9
	const DRAIN_PUNCH  ; da
	const FOCUS_BLAST  ; db
	const ENERGY_BALL  ; dc
	const EARTH_POWER  ; dd
	const NASTY_PLOT   ; de
	const ICE_SHARD    ; df
	const SHADOW_CLAW  ; e0
	const THUNDER_FANG ; e1
	const ICE_FANG     ; e2
	const FIRE_FANG    ; e3
	const SHADOW_SNEAK ; e4
	const FLASH_CANNON ; e5
	const POWER_WHIP   ; e6
	const ROCK_WRECKER ; e7
	const GUNK_SHOT    ; e8
	const IRON_HEAD    ; e9
	const STONE_EDGE   ; ea
	const OMINOUS_WIND ; eb
	const FLAME_CHARGE ; ec
	const SCALD        ; ed
	const HEX          ; ee
	const INFERNO      ; ef
	const BULLDOZE     ; f0
	const ELECTROWEB   ; f1
	const WILD_CHARGE  ; f2
	const PSYSTRIKE    ; f3
	const SNARL        ; f4
	const ICICLE_CRASH ; f5
	const DISARM_VOICE ; f6
	const DRAIN_KISS   ; f7
	const PLAY_ROUGH   ; f8
	const MOONBLAST    ; f9
	const BOOMBURST    ; fa
	const DAZZLINGLEAM ; fb
	const INFESTATION  ; fc
	const BRUTAL_SWING ; fd
	const LIQUIDATION  ; fe
DEF NUM_ATTACKS EQU const_value - 1

DEF CANNOT_MOVE EQU $ff

	; ~$~CHANGED: Separate move anims from other battle anims.~$~
	const_def
	const NO_ANIM
	const SHOWPIC_ANIM
	const STATUS_AFFECTED_ANIM
	const ANIM_A8
	const ENEMY_HUD_SHAKE_ANIM
	const TRADE_BALL_DROP_ANIM
	const TRADE_BALL_SHAKE_ANIM
	const TRADE_BALL_TILT_ANIM
	const TRADE_BALL_POOF_ANIM
	const XSTATITEM_ANIM ; use X Attack/Defense/Speed/Special
	const XSTATITEM_DUPLICATE_ANIM
	const SHRINKING_SQUARE_ANIM
	const ANIM_B1
	const ANIM_B2
	const ANIM_B3
	const ANIM_B4
	const ANIM_B5
	const AMNESIA_ENEMY_ANIM ; ~$~ADDED: PureRGB improved Amnesia animation.~$~
	const BURN_ANIM ; ~$~ADDED: PureRGB burn animation.~$~
	const PARALYSIS_ANIM ; ~$~Renamed this to clarify what it points to.~$~
	const ANIM_B9
	const PSN_ANIM ; Plays when a monster is burned or poisoned
	const NASTY_PLOT_ENEMY_ANIM
	const SLP_PLAYER_ANIM
	const SLP_ANIM ; sleeping monster
	const CONF_PLAYER_ANIM ; ~$~CHANGED: This is used for both sides when it's their turn.~$~
	const CONF_ANIM ; ~$~CHANGED: This is used for when a move inflicts confusion.~$~
	const SLIDE_DOWN_ANIM
	const TOSS_ANIM ; toss Poké Ball
	const SHAKE_ANIM ; shaking Poké Ball when catching monster
	const POOF_ANIM ; puff of smoke
	const BLOCKBALL_ANIM ; trainer knocks away Poké Ball
	const GREATTOSS_ANIM ; toss Great Ball
	const ULTRATOSS_ANIM ; toss Ultra Ball or Master Ball
	const SHAKE_SCREEN_ANIM
	const HIDEPIC_ANIM ; monster disappears
	const ROCK_ANIM ; throw rock
	const BAIT_ANIM ; throw bait

DEF NUM_ALT_ANIMS EQU const_value - 1
