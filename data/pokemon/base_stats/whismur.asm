	db DEX_WHISMUR ; pokedex id

	db  64,  51,  23,  28,  51
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/whismur.pic", 0, 1 ; sprite dimensions
	dw WhismurPicFront, WhismurPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14
	m_tutor 0
	m_tutor 25
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         \
	     \
	     STRENGTH
	; end

	db BANK(WhismurPicFront)
	assert BANK(WhismurPicFront) == BANK(WhismurPicBack)
