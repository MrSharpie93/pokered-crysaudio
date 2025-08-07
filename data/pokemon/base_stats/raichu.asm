	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 110,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	; move tutor compatibility flags
	m_tutor 3,4,5,6,8
	m_tutor 9,10,13,14
	m_tutor 19
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     \
	     FLY,          SURF,         STRENGTH,     FLASH
	; end

	db BANK(RaichuPicFront)
	assert BANK(RaichuPicFront) == BANK(RaichuPicBack)
