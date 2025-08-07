	db DEX_KINGDRA ; pokedex id

	db  75,  95,  95,  85,  95
	;   hp  atk  def  spd  spc

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/kingdra.pic", 0, 1 ; sprite dimensions
	dw KingdraPicFront, KingdraPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,13,16
	m_tutor 22
	m_tutor 25,26,27,30
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      \
	     FLASH_CANNON, \
	     \
	     DOUBLE_TEAM,  POISON_JAB,   \
	     \
	     HURRICANE,    REST,         \
	     \
	     SURF,         WATERFALL
	; end

	db BANK(KingdraPicFront)
	assert BANK(KingdraPicFront) == BANK(KingdraPicBack)
