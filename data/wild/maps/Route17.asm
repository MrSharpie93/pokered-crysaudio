Route17WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  4, DODUO     ; 19.9%
	db  4, GRIMER    ; 19.9%
	db  4, PONYTA    ; 15.2%
	db  3, DODUO     ;  9.8%
	db  3, GRIMER    ;  9.8%
	db  3, SALANDIT  ;  9.8%
	db  2, SALANDIT  ;  5.1%
	db  3, PONYTA    ;  5.1%
	db  3, CROAGUNK  ;  4.3%
	db  2, CROAGUNK  ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, DODUO     ; 19.9%
	db  4, GRIMER    ; 19.9%
	db  4, PONYTA    ; 15.2%
	db  3, DODUO     ;  9.8%
	db  3, GRIMER    ;  9.8%
	db  3, CROAGUNK  ;  9.8%
	db  2, CROAGUNK  ;  5.1%
	db  3, PONYTA    ;  5.1%
	db  3, SALANDIT  ;  4.3%
	db  2, SALANDIT  ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
