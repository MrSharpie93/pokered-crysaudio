	db DEX_MAREEP ; pokedex id

	db  55,  40,  40,  35,  65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/mareep.pic", 0, 1 ; sprite dimensions
	dw MareepPicFront, MareepPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,14
	m_tutor 19
	m_tutor 26,27
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(MareepPicFront)
	assert BANK(MareepPicFront) == BANK(MareepPicBack)
