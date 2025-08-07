	db DEX_WEAVILE ; pokedex id

	db  70, 120,  65, 125,  45
	;   hp  atk  def  spd  spc

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/weavile.pic", 0, 1 ; sprite dimensions
	dw WeavilePicFront, WeavilePicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 10,11,13
	m_tutor 17
	m_tutor 26,30
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH,     FLASH
	; end

	db BANK(WeavilePicFront)
	assert BANK(WeavilePicFront) == BANK(WeavilePicBack)
