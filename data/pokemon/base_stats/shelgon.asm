	db DEX_SHELGON ; pokedex id

	db  65,  95, 100,  50,  60
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/shelgon.pic", 0, 1 ; sprite dimensions
	dw ShelgonPicFront, ShelgonPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,16
	m_tutor 17,18,22,24
	m_tutor 29,31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     CUT,          STRENGTH
	; end

	db BANK(ShelgonPicFront)
	assert BANK(ShelgonPicFront) == BANK(ShelgonPicBack)
