Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  4, HOPPIP     ; 19.9%
	db  4, PIDGEY     ; 19.9%
	db  3, NIDORAN_M  ; 15.2%
	db  4, JIGGLYPUFF ;  9.8%
	db  3, CHIMEOW    ;  9.8%
	db  4, NIDORAN_F  ;  9.8%
	db  3, ODDISH     ;  5.1%
	db  4, BELLSPROUT ;  5.1%
	db  4, MEOWTH     ;  4.3%
	db  3, MEOWTH     ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, HOPPIP     ; 19.9%
	db  4, PIDGEY     ; 19.9%
	db  3, NIDORAN_F  ; 15.2%
	db  4, JIGGLYPUFF ;  9.8%
	db  3, MEOWTH     ;  9.8%
	db  4, NIDORAN_M  ;  9.8%
	db  3, BELLSPROUT ;  5.1%
	db  4, ODDISH     ;  5.1%
	db  4, CHIMEOW    ;  4.3%
	db  3, CHIMEOW    ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
