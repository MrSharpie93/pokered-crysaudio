	db DEX_TOGETIC ; pokedex id

	db  55,  40,  85,  40, 105
	;   hp  atk  def  spd  spc

	db FAIRY, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/togetic.pic", 0, 1 ; sprite dimensions
	dw TogeticPicFront, TogeticPicBack

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
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         THUNDER_WAVE, \
	     STEEL_WING,   DAZZLINGLEAM, \
	     FLY,          FLASH
	; end

	db BANK(TogeticPicFront)
	assert BANK(TogeticPicFront) == BANK(TogeticPicBack)
