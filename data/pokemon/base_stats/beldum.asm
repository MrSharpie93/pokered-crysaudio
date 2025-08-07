	db DEX_BELDUM ; pokedex id

	db  40,  55,  80,  30,  35
	;   hp  atk  def  spd  spc

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 103 ; base exp

	INCBIN "gfx/pokemon/front/beldum.pic", 0, 1 ; sprite dimensions
	dw BeldumPicFront, BeldumPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 0
	m_tutor 22
	m_tutor 0
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm ZEN_HEADBUTT 
	; end

	db BANK(BeldumPicFront)
	assert BANK(BeldumPicFront) == BANK(BeldumPicBack)
