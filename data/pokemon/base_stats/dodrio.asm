	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 110,  60
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	; move tutor compatibility flags
	m_tutor 5
	m_tutor 10,13
	m_tutor 21
	m_tutor 0
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     REST,         \
	     STEEL_WING,   \
	     FLY
	; end

	db BANK(DodrioPicFront)
	assert BANK(DodrioPicFront) == BANK(DodrioPicBack)
