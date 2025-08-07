	db DEX_VIBRAVA ; pokedex id

	db  50,  70,  50,  70,  50
	;   hp  atk  def  spd  spc

	db GROUND, DRAGON ; type
	db 120; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/vibrava.pic", 0, 1 ; sprite dimensions
	dw VibravaPicFront, VibravaPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,16
	m_tutor 18,24
	m_tutor 26,27,30
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     REST,         \
	     STEEL_WING,   ROCK_SLIDE,   \
	     FLY,          STRENGTH
	; end

	db BANK(VibravaPicFront)
	assert BANK(VibravaPicFront) == BANK(VibravaPicBack)
