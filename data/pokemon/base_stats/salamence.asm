	db DEX_SALAMENCE ; pokedex id

	db  95, 135,  80, 100,  90
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/salamence.pic", 0, 1 ; sprite dimensions
	dw SalamencePicFront, SalamencePicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,16
	m_tutor 17,18,20,22,24
	m_tutor 26,29,30,31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         \
	     STEEL_WING,   ROCK_SLIDE,   \
	     CUT,          FLY,          STRENGTH
	; end

	db BANK(SalamencePicFront)
	assert BANK(SalamencePicFront) == BANK(SalamencePicBack)
