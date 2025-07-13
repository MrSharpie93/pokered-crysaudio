	db DEX_SEEL ; pokedex id

	db  65,  45,  55,  45,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/seel.pic", 0, 1 ; sprite dimensions
	dw SeelPicFront, SeelPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,13
	m_tutor 0
	m_tutor 25,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      SAFEGUARD,    \
	     IRON_TAIL,    \
	     SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     \
	     ZEN_HEADBUTT, REST,         \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(SeelPicFront)
	assert BANK(SeelPicFront) == BANK(SeelPicBack)
