	db DEX_SUDOWOODO ; pokedex id

	db  70, 100, 115,  30,  65
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/sudowoodo.pic", 0, 1 ; sprite dimensions
	dw SudowoodoPicFront, SudowoodoPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
	m_tutor 9,10,12,13
	m_tutor 18,20,24
	m_tutor 0
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(SudowoodoPicFront)
	assert BANK(SudowoodoPicFront) == BANK(SudowoodoPicBack)
