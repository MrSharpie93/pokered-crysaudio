Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  4, HOPPIP     ; 19.9%
	db  5, RATTATA    ; 19.9%
	db  3, MAREEP     ; 15.2%
	db  3, CHIMEOW    ;  9.8%
	db  2, CHIMEOW    ;  9.8%
	db  5, HOPPIP     ;  9.8%
	db  2, MAREEP     ;  5.1%
	db  5, ABRA       ;  5.1%
	db  3, MEOWTH     ;  4.3%
	db  2, MEOWTH     ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, HOPPIP     ; 19.9%
	db  5, RATTATA    ; 19.9%
	db  3, MAREEP     ; 15.2%
	db  3, MEOWTH     ;  9.8%
	db  2, MEOWTH     ;  9.8%
	db  5, HOPPIP     ;  9.8%
	db  2, MAREEP     ;  5.1%
	db  5, ABRA       ;  5.1%
	db  3, CHIMEOW    ;  4.3%
	db  2, CHIMEOW    ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, PSYDUCK   ; 19.9%
	db  5, PSYDUCK   ; 19.9%
	db  5, PSYDUCK   ; 15.2%
	db  5, PSYDUCK   ;  9.8%
	db  5, PSYDUCK   ;  9.8%
	db  5, PSYDUCK   ;  9.8%
	db  5, PSYDUCK   ;  5.1%
	db 10, GOLDUCK   ;  5.1%
	db 10, GOLDUCK   ;  4.3%
	db 10, GOLDUCK   ;  1.2%
	end_water_wildmons
