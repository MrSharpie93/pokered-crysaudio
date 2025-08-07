	db DEX_IGGLYBUFF ; pokedex id

	db  90,  30,  15,  15,  40
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 39 ; base exp

	INCBIN "gfx/pokemon/front/igglybuff.pic", 0, 1 ; sprite dimensions
	dw IgglybuffPicFront, IgglybuffPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,7,8
	m_tutor 9,10,11,13,14,15
	m_tutor 0
	m_tutor 25,28,32
	db GROWTH_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(IgglybuffPicFront)
	assert BANK(IgglybuffPicFront) == BANK(IgglybuffPicBack)
