	db DEX_TRAPINCH ; pokedex id

	db  45, 100,  45,  10,  45
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 73 ; base exp

	INCBIN "gfx/pokemon/front/trapinch.pic", 0, 1 ; sprite dimensions
	dw TrapinchPicFront, TrapinchPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13
	m_tutor 18,24
	m_tutor 27
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(TrapinchPicFront)
	assert BANK(TrapinchPicFront) == BANK(TrapinchPicBack)
