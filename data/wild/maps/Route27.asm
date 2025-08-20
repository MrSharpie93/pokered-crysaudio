Route27WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 14, RATICATE
	db 14, ARBOK
	db 13, RATICATE
	db 15, ARBOK
	db 15, PONYTA
	db 16, PONYTA
	db 14, DODUO
	db 13, DODUO
	db 14, DODRIO
	db 15, DODRIO
ENDC
IF DEF(_BLUE)
	db 14, RATICATE
	db 14, SANDSLASH
	db 13, RATICATE
	db 15, SANDSLASH
	db 15, PONYTA
	db 16, PONYTA
	db 14, DODUO
	db 13, DODUO
	db 14, DODRIO
	db 15, DODRIO
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACOOL
	db 15, TENTACRUEL
	db 15, TENTACRUEL
	db 20, TENTACRUEL
	end_water_wildmons
