	db DEX_TYRANITAR ; pokedex id

	db 100, 134, 110,  61,  95
	;   hp  atk  def  spd  spc

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
	m_tutor 9,10,13,14,16
	m_tutor 17,18,20,22,24
	m_tutor 25,31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DARK_PULSE,   ROCK_SLIDE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH
	; end

	db BANK(TyranitarPicFront)
	assert BANK(TyranitarPicFront) == BANK(TyranitarPicBack)
