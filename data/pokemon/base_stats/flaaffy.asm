	db DEX_FLAAFFY ; pokedex id

	db  70,  55,  55,  45,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/flaaffy.pic", 0, 1 ; sprite dimensions
	dw FlaaffyPicFront, FlaaffyPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,8
	m_tutor 9,10,13,14
	m_tutor 19
	m_tutor 26,27
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     STRENGTH,     FLASH
	; end

	db BANK(FlaaffyPicFront)
	assert BANK(FlaaffyPicFront) == BANK(FlaaffyPicBack)
