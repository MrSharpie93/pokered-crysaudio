	db DEX_CLEFFA ; pokedex id

	db  50,  25,  28,  15,  45
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 37 ; base exp

	INCBIN "gfx/pokemon/front/cleffa.pic", 0, 1 ; sprite dimensions
	dw CleffaPicFront, CleffaPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,7,8
	m_tutor 9,10,11,13,14,15
	m_tutor 0
	m_tutor 25,26,27,28,32
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(CleffaPicFront)
	assert BANK(CleffaPicFront) == BANK(CleffaPicBack)
