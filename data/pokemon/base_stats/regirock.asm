	db DEX_REGIROCK ; pokedex id

	db  80, 100, 200,  50,  50
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/regirock.pic", 0, 1 ; sprite dimensions
	dw RegirockPicFront, RegirockPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
	m_tutor 9,10,12,13,14
	m_tutor 18,20,22,24
	m_tutor 0
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(RegirockPicFront)
	assert BANK(RegirockPicFront) == BANK(RegirockPicBack)
