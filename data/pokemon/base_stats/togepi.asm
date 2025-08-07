	db DEX_TOGEPI ; pokedex id

	db  35,  20,  65,  20,  65
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/togepi.pic", 0, 1 ; sprite dimensions
	dw TogepiPicFront, TogepiPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,8
	m_tutor 9,10,11,13,14,15
	m_tutor 0
	m_tutor 25,26,27,28,32
	db GROWTH_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(TogepiPicFront)
	assert BANK(TogepiPicFront) == BANK(TogepiPicBack)
