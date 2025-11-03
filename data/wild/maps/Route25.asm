Route25WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  4, WEEDLE     ; 19.9%
	db  4, PIDGEY     ; 19.9%
	db  3, HOPPIP     ; 15.2%
	db  2, HOPPIP     ;  9.8%
	db  4, ODDISH     ;  9.8%
	db  3, ABRA       ;  9.8%
	db  2, PIDGEY     ;  5.1%
	db  5, PIDGEOTTO  ;  5.1%
	db  3, VENONAT    ;  4.3%
	db  2, ABRA       ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, CATERPIE   ; 19.9%
	db  4, PIDGEY     ; 19.9%
	db  3, HOPPIP     ; 15.2%
	db  2, HOPPIP     ;  9.8%
	db  4, BELLSPROUT ;  9.8%
	db  3, ABRA       ;  9.8%
	db  2, PIDGEY     ;  5.1%
	db  5, PIDGEOTTO  ;  5.1%
	db  3, VENONAT    ;  4.3%
	db  2, ABRA       ;  1.2%
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
