Route3WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db  3, PIDGEY     ; 19.9%
	db  3, SPEAROW    ; 19.9%
	db  3, NIDORAN_M  ; 15.2%
	db  4, PIDGEY     ;  9.8%
	db  4, SPEAROW    ;  9.8%
	db  4, MANKEY     ;  9.8%
	db  3, IGGLYBUFF  ;  5.1%
	db  3, NIDORAN_F  ;  5.1%
	db  3, JIGGLYPUFF ;  4.3%
	db  4, JIGGLYPUFF ;  1.2%
ENDC
IF DEF(_BLUE)
	db  3, PIDGEY     ; 19.9%
	db  3, SPEAROW    ; 19.9%
	db  3, NIDORAN_F  ; 15.2%
	db  4, PIDGEY     ;  9.8%
	db  4, SPEAROW    ;  9.8%
	db  4, MANKEY     ;  9.8%
	db  3, IGGLYBUFF  ;  5.1%
	db  3, NIDORAN_M  ;  5.1%
	db  3, JIGGLYPUFF ;  4.3%
	db  4, JIGGLYPUFF ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
