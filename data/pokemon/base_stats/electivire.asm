	db DEX_ELECTIVIRE ; pokedex id

	db  75, 123,  67,  95,  85
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/electivire.pic", 0, 1 ; sprite dimensions
	dw ElectivirePicFront, ElectivirePicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
	m_tutor 9,10,13,14
	m_tutor 18,19
	m_tutor 26,27,28,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   \
	     STRENGTH,     FLASH
	; end

	db BANK(ElectivirePicFront)
	assert BANK(ElectivirePicFront) == BANK(ElectivirePicBack)
