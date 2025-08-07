	db DEX_PORYGONZ ; pokedex id

	db  85,  80,  70,  90, 135
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/porygonz.pic", 0, 1 ; sprite dimensions
	dw PorygonZPicFront, PorygonZPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,11,13,14,15
	m_tutor 22
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     FLASH_CANNON, SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     \
	     FLASH
	; end

	db BANK(PorygonZPicFront)
	assert BANK(PorygonZPicFront) == BANK(PorygonZPicBack)
