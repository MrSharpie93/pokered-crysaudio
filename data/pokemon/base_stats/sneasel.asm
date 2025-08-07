	db DEX_SNEASEL ; pokedex id

	db  55,  95,  55, 115,  35
	;   hp  atk  def  spd  spc

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/sneasel.pic", 0, 1 ; sprite dimensions
	dw SneaselPicFront, SneaselPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 10,11,13
	m_tutor 17
	m_tutor 26,30
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH,     FLASH
	; end

	db BANK(SneaselPicFront)
	assert BANK(SneaselPicFront) == BANK(SneaselPicBack)
