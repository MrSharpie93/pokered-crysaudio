VictoryRoad1FWildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  8, MACHOKE    ; 19.9%
	db  8, GRAVELER   ; 19.9%
	db  9, GOLBAT     ; 15.2%
	db  9, ARBOK      ;  9.8%
	db  9, MAROWAK    ;  9.8%
	db 10, ONIX       ;  9.8%
	db  8, ARBOK      ;  5.1%
	db  8, HITMONLEE  ;  5.1%
	db  9, SANDSLASH  ;  4.3%
	db  8, SANDSLASH  ;  1.2%
ENDC
IF DEF(_BLUE)
	db  8, MACHOKE    ; 19.9%
	db  8, GRAVELER   ; 19.9%
	db  9, GOLBAT     ; 15.2%
	db  9, SANDSLASH  ;  9.8%
	db  9, MAROWAK    ;  9.8%
	db 10, ONIX       ;  9.8%
	db  8, SANDSLASH  ;  5.1%
	db  8, HITMONLEE  ;  5.1%
	db  9, ARBOK      ;  4.3%
	db  8, ARBOK      ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
