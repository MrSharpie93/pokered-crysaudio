	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  45
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,11,12,13,14,15
	m_tutor 0
	m_tutor 25,28,32
	db GROWTH_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     STRENGTH,     FLASH
	; end

	db BANK(JigglypuffPicFront)
	assert BANK(JigglypuffPicFront) == BANK(JigglypuffPicBack)
