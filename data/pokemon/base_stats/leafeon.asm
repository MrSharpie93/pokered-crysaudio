	db DEX_LEAFEON ; pokedex id

	db  65, 110, 130,  65,  60
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,15
	m_tutor 0
	m_tutor 26,32
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     BULLET_SEED,  REST,         \
		 \
		 CUT,          STRENGTH,     FLASH
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
