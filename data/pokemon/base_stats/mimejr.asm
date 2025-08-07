	db DEX_MIME_JR ; pokedex id

	db  20,  25,  45,  60,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 145 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/mimejr.pic", 0, 1 ; sprite dimensions
	dw MimeJrPicFront, MimeJrPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,11,13,14,15
	m_tutor 0
	m_tutor 27,28,32
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(MimeJrPicFront)
	assert BANK(MimeJrPicFront) == BANK(MimeJrPicBack)
