	db DEX_DEWGONG ; pokedex id

	db  90,  70,  80,  70,  95
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,13
	m_tutor 0
	m_tutor 25,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      SAFEGUARD,    \
	     IRON_TAIL,    \
	     SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     \
	     ZEN_HEADBUTT, REST,         \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(DewgongPicFront)
	assert BANK(DewgongPicFront) == BANK(DewgongPicBack)
