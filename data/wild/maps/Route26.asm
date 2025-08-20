Route26WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 15, RATICATE
	db 15, ARBOK
	db 14, RATICATE
	db 16, ARBOK
	db 16, PONYTA
	db 17, PONYTA
	db 15, DODUO
	db 14, DODUO
	db 15, DODRIO
	db 16, DODRIO
ENDC
IF DEF(_BLUE)
	db 15, RATICATE
	db 15, SANDSLASH
	db 14, RATICATE
	db 16, SANDSLASH
	db 16, PONYTA
	db 17, PONYTA
	db 15, DODUO
	db 14, DODUO
	db 15, DODRIO
	db 16, DODRIO
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
