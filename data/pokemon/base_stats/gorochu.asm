	db DEX_GOROCHU ; pokedex id

	db  65, 130,  65,  70, 110
	;   hp  atk  def  spd  spc

	db ELECTRIC, FIGHTING ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/gorochu.pic", 0, 1 ; sprite dimensions
	dw GorochuPicFront, GorochuPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,6,8
	m_tutor 9,10,13,14
	m_tutor 18,19,20,22
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   \
	     FLY,          SURF,         STRENGTH,     FLASH
	; end

	db BANK(GorochuPicFront)
	assert BANK(GorochuPicFront) == BANK(GorochuPicBack)
