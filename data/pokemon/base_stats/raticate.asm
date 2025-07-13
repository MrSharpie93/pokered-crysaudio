	db DEX_RATICATE ; pokedex id

	db  55,  81,  60,  97,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	; move tutor compatibility flags
	m_tutor 6,7,8
	m_tutor 10,13,14
	m_tutor 19,23
	m_tutor 26,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     \
	     BULLET_SEED,  ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     \
	     CUT,          STRENGTH
	; end

	db BANK(RaticatePicFront)
	assert BANK(RaticatePicFront) == BANK(RaticatePicBack)
