	db DEX_VILEPLUME ; pokedex id

	db  75,  80,  85,  50, 110
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

	; move tutor compatibility flags
	m_tutor 4,5
	m_tutor 10,13,15
	m_tutor 23
	m_tutor 32
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   SAFEGUARD,    \
	     SOLARBEAM,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     SLUDGE_BOMB,  \
	     BULLET_SEED,  REST,         \
	     DAZZLINGLEAM, \
	     CUT,          STRENGTH,     FLASH
	; end

	db BANK(VileplumePicFront)
	assert BANK(VileplumePicFront) == BANK(VileplumePicBack)
