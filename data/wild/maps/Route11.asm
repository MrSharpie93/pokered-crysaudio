Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  4, EKANS     ; 19.9%
	db  4, SPEAROW   ; 19.9%
	db  3, MAREEP    ; 15.2%
	db  3, DROWZEE   ;  9.8%
	db  3, SPEAROW   ;  9.8%
	db  2, DROWZEE   ;  9.8%
	db  5, EKANS     ;  5.1%
	db  4, MAREEP    ;  5.1%
	db  4, SANDSHREW ;  4.3%
	db  5, SANDSHREW ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, SANDSHREW ; 19.9%
	db  4, SPEAROW   ; 19.9%
	db  3, MAREEP    ; 15.2%
	db  3, DROWZEE   ;  9.8%
	db  3, SPEAROW   ;  9.8%
	db  2, DROWZEE   ;  9.8%
	db  5, SANDSHREW ;  5.1%
	db  4, MAREEP    ;  5.1%
	db  4, EKANS     ;  4.3%
	db  5, EKANS     ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
