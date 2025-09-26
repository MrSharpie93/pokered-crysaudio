Route14WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  6, FEAROW     ; 19.9%
	db  6, NIDORINO   ; 19.9%
	db  2, DITTO      ; 15.2%
	db  3, FARFETCHD  ;  9.8%
	db 11, GLOOM      ;  9.8%
	db  3, SKARMORY   ;  9.8%
	db  2, FARFETCHD  ;  5.1%
	db 10, GLOOM      ;  5.1%
	db 11, WEEPINBELL ;  4.3%
	db 10, WEEPINBELL ;  1.2%
ENDC
IF DEF(_BLUE)
	db  6, FEAROW     ; 19.9%
	db  6, NIDORINA   ; 19.9%
	db  2, DITTO      ; 15.2%
	db  3, FARFETCHD  ;  9.8%
	db 11, WEEPINBELL ;  9.8%
	db  3, SKARMORY   ;  9.8%
	db  2, FARFETCHD  ;  5.1%
	db 10, WEEPINBELL ;  5.1%
	db 11, GLOOM      ;  4.3%
	db 10, GLOOM      ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
