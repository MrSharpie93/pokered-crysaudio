Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  5, GEODUDE   ; 19.9%
	db  5, SPEAROW   ; 19.9%
	db  4, EKANS     ; 15.2%
	db  5, NIDORINO  ;  9.8%
	db  2, MACHOP    ;  9.8%
	db  5, EKANS     ;  9.8%
	db  2, TYROGUE   ;  5.1%
	db  5, NIDORINA  ;  5.1%
	db  4, SANDSHREW ;  4.3%
	db  5, SANDSHREW ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, GEODUDE   ; 19.9%
	db  5, SPEAROW   ; 19.9%
	db  4, SANDSHREW ; 15.2%
	db  5, NIDORINA  ;  9.8%
	db  2, MACHOP    ;  9.8%
	db  5, SANDSHREW ;  9.8%
	db  2, TYROGUE   ;  5.1%
	db  5, NIDORINO  ;  5.1%
	db  4, EKANS     ;  4.3%
	db  5, EKANS     ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
