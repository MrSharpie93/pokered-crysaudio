	db DEX_TOXICROAK ; pokedex id

	db  83, 106,  65,  85,  86
	;   hp  atk  def  spd  spc

	db POISON, FIGHTING ; type
	db 75 ; catch rate
	db 181 ; base exp

	INCBIN "gfx/pokemon/front/toxicroak.pic", 0, 1 ; sprite dimensions
	dw ToxicroakPicFront, ToxicroakPicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 18,20,23
	m_tutor 31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(ToxicroakPicFront)
	assert BANK(ToxicroakPicFront) == BANK(ToxicroakPicBack)
