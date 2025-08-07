	db DEX_GOLDUCK ; pokedex id

	db  80,  82,  78,  85,  95
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 17
	m_tutor 25,26,27
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     \
	     SURF,         STRENGTH,     FLASH,        \
	     WATERFALL
	; end

	db BANK(GolduckPicFront)
	assert BANK(GolduckPicFront) == BANK(GolduckPicBack)
