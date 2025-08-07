	db DEX_MAWILE ; pokedex id

	db  50,  95,  95,  50,  55
	;   hp  atk  def  spd  spc

	db STEEL, FAIRY ; type
	db 45 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/mawile.pic", 0, 1 ; sprite dimensions
	dw MawilePicFront, MawilePicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 20,22
	m_tutor 31
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     FLASH_CANNON, SOLARBEAM,    \
	     SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     SLUDGE_BOMB,  FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   DAZZLINGLEAM, \
	     CUT,          STRENGTH
	; end

	db BANK(MawilePicFront)
	assert BANK(MawilePicFront) == BANK(MawilePicBack)
