	db DEX_BLISSEY ; pokedex id

	db 255,  10,  10,  55, 135
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/blissey.pic", 0, 1 ; sprite dimensions
	dw BlisseyPicFront, BlisseyPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,11,13,14,15
	m_tutor 18,19,24
	m_tutor 25,26,28,32
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   DAZZLINGLEAM, ICICLE_CRASH, \
	     STRENGTH,     FLASH
	; end

	db BANK(BlisseyPicFront)
	assert BANK(BlisseyPicFront) == BANK(BlisseyPicBack)
