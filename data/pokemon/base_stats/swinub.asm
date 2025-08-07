	db DEX_SWINUB ; pokedex id

	db  50,  50,  40,  50,  30
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 225 ; catch rate
	db  78 ; base exp

	INCBIN "gfx/pokemon/front/swinub.pic", 0, 1 ; sprite dimensions
	dw SwinubPicFront, SwinubPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,13
	m_tutor 18,24
	m_tutor 0
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     \
	     LIGHT_SCREEN, PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     STRENGTH
	; end

	db BANK(SwinubPicFront)
	assert BANK(SwinubPicFront) == BANK(SwinubPicBack)
