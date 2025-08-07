	db DEX_DUSKNOIR ; pokedex id

	db  45, 100, 135,  45, 135
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/dusknoir.pic", 0, 1 ; sprite dimensions
	dw DusknoirPicFront, DusknoirPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,11,13
	m_tutor 17,18
	m_tutor 28,31
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     WILL_O_WISP,  ROCK_TOMB,    \
	     REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
		 STRENGTH,     FLASH
	; end

	db BANK(DusknoirPicFront)
	assert BANK(DusknoirPicFront) == BANK(DusknoirPicBack)
