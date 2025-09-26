Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  3, RATTATA  ; 19.9%
	db  3, PIDGEY   ; 19.9%
	db  4, PIDGEY   ; 15.2%
	db  3, HOPPIP   ;  9.8%
	db  4, HOPPIP   ;  9.8%
	db  3, WEEDLE   ;  9.8%
	db  3, CATERPIE ;  5.1%
	db  2, CATERPIE ;  5.1%
	db  2, WEEDLE   ;  4.3%
	db  2, WEEDLE   ;  1.2%
ENDC
IF DEF(_BLUE)
	db  3, RATTATA  ; 19.9%
	db  3, PIDGEY   ; 19.9%
	db  4, PIDGEY   ; 15.2%
	db  3, HOPPIP   ;  9.8%
	db  4, HOPPIP   ;  9.8%
	db  3, CATERPIE ;  9.8%
	db  3, WEEDLE   ;  5.1%
	db  2, WEEDLE   ;  5.1%
	db  2, CATERPIE ;  4.3%
	db  2, CATERPIE ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
