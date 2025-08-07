	db DEX_GALVANTULA ; pokedex id

	db  70,  77,  60, 108,  97
	;   hp  atk  def  spd  spc

	db BUG, ELECTRIC ; type
	db 75 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/galvantula.pic", 0, 1 ; sprite dimensions
	dw GalvantulaPicFront, GalvantulaPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,14,15
	m_tutor 19
	m_tutor 27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      \
	     \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     \
	     REST,         THUNDER_WAVE, \
	     \
	     CUT,          FLASH
	; end

	db BANK(GalvantulaPicFront)
	assert BANK(GalvantulaPicFront) == BANK(GalvantulaPicBack)
