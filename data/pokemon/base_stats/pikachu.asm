	db DEX_PIKACHU ; pokedex id

	db  35,  55,  40,  90,  50
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	; move tutor compatibility flags
	m_tutor 3,4,5,6,8
	m_tutor 9,10,13,14
	m_tutor 19
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     \
	     FLY,          SURF,         STRENGTH,     FLASH
	; end

	db BANK(PikachuPicFront)
	assert BANK(PikachuPicFront) == BANK(PikachuPicBack)
