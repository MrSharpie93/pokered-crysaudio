	db DEX_SCIZOR ; pokedex id

	db  70, 130, 100,  65,  55
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/scizor.pic", 0, 1 ; sprite dimensions
	dw ScizorPicFront, ScizorPicBack

	; move tutor compatibility flags
	m_tutor 8
	m_tutor 10,13
	m_tutor 22
	m_tutor 26,30
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     FLASH_CANNON, \
	     \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         \
	     STEEL_WING,   \
	     CUT,          FLY,          STRENGTH
	; end

	db BANK(ScizorPicFront)
	assert BANK(ScizorPicFront) == BANK(ScizorPicBack)
