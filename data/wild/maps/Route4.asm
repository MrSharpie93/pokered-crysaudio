Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db  4, SPEAROW   ; 19.9%
	db  4, RATTATA   ; 19.9%
	db  3, MANKEY    ; 15.2%
	db  4, EKANS     ;  9.8%
	db  3, PSYDUCK   ;  9.8%
	db  3, EKANS     ;  9.8%
	db  3, RATTATA   ;  5.1%
	db  3, SPEAROW   ;  5.1%
	db  4, SANDSHREW ;  4.3%
	db  3, SANDSHREW ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, SPEAROW   ; 19.9%
	db  4, RATTATA   ; 19.9%
	db  3, MANKEY    ; 15.2%
	db  4, SANDSHREW ;  9.8%
	db  3, PSYDUCK   ;  9.8%
	db  3, SANDSHREW ;  9.8%
	db  3, RATTATA   ;  5.1%
	db  3, SPEAROW   ;  5.1%
	db  4, EKANS     ;  4.3%
	db  3, EKANS     ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, GOLDEEN   ; 19.9%
	db  5, GOLDEEN   ; 19.9%
	db  5, GOLDEEN   ; 15.2%
	db  5, GOLDEEN   ;  9.8%
	db  5, GOLDEEN   ;  9.8%
	db  5, GOLDEEN   ;  9.8%
	db  5, GOLDEEN   ;  5.1%
	db 10, SEAKING   ;  5.1%
	db 10, SEAKING   ;  4.3%
	db 10, SEAKING   ;  1.2%
	end_water_wildmons
