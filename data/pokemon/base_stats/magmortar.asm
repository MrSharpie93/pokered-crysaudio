	db DEX_MAGMORTAR ; pokedex id

	db  75,  95,  67,  83, 125
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/magmortar.pic", 0, 1 ; sprite dimensions
	dw MagmortarPicFront, MagmortarPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,6,8
	m_tutor 9,10,13
	m_tutor 18,20,23,24
	m_tutor 28,29,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH,     FLASH
	; end

	db BANK(MagmortarPicFront)
	assert BANK(MagmortarPicFront) == BANK(MagmortarPicBack)
