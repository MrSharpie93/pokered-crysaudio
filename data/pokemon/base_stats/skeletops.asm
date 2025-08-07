	db DEX_SKELETOPS ; pokedex id

	db  75, 128,  65, 127,  75
	;   hp  atk  def  spd  spc

	db ROCK, GHOST ; type
	db 30 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/fossilkabutops.pic", 0, 1 ; sprite dimensions
	dw SkeletopsPicFront, SkeletopsPicBack

	; move tutor compatibility flags
	m_tutor 5,6,7
	m_tutor 9,10,11,13
	m_tutor 17,18,20,24
	m_tutor 25,30,31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  \
	     WILL_O_WISP,  ROCK_TOMB,    AERIAL_ACE,   \
	     REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     CUT,          STRENGTH,     FLASH
	; end

	db BANK(SkeletopsPicFront)
	assert BANK(SkeletopsPicFront) == BANK(SkeletopsPicBack)
