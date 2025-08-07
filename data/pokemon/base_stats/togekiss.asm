	db DEX_TOGEKISS ; pokedex id

	db  85,  50,  95,  80, 115
	;   hp  atk  def  spd  spc

	db FAIRY, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/togekiss.pic", 0, 1 ; sprite dimensions
	dw TogekissPicFront, TogekissPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,8
	m_tutor 9,10,11,13,14,15
	m_tutor 21
	m_tutor 25,26,27,28,32
	db GROWTH_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         THUNDER_WAVE, \
	     STEEL_WING,   DAZZLINGLEAM, \
	     FLY,          FLASH
	; end

	db BANK(TogekissPicFront)
	assert BANK(TogekissPicFront) == BANK(TogekissPicBack)
