	db DEX_POLIWHIRL ; pokedex id

	db  65,  65,  65,  90,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp

	INCBIN "gfx/pokemon/front/poliwhirl.pic", 0, 1 ; sprite dimensions
	dw PoliwhirlPicFront, PoliwhirlPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 18,24
	m_tutor 25,28
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    \
	     DOUBLE_TEAM,  \
	     \
	     ZEN_HEADBUTT, REST,         \
	     \
	     SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(PoliwhirlPicFront)
	assert BANK(PoliwhirlPicFront) == BANK(PoliwhirlPicBack)
