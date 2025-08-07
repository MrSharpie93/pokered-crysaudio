	db DEX_MILTANK ; pokedex id

	db  95,  80, 105, 100,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/miltank.pic", 0, 1 ; sprite dimensions
	dw MiltankPicFront, MiltankPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14
	m_tutor 18,20,22,23,24
	m_tutor 25,28,29
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   \
	     SURF,         STRENGTH
	; end

	db BANK(MiltankPicFront)
	assert BANK(MiltankPicFront) == BANK(MiltankPicBack)
