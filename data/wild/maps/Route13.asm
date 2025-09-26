Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db  5, SKIPLOOM   ; 19.9%
	db  5, NIDORINA   ; 19.9%
	db  3, TANGELA    ; 15.2%
	db  4, FARFETCHD  ;  9.8%
	db 12, GLOOM      ;  9.8%
	db  4, SKARMORY   ;  9.8%
	db  3, FARFETCHD  ;  5.1%
	db 11, GLOOM      ;  5.1%
	db 12, WEEPINBELL ;  4.3%
	db 11, WEEPINBELL ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, SKIPLOOM   ; 19.9%
	db  5, NIDORINO   ; 19.9%
	db  3, TANGELA    ; 15.2%
	db  4, FARFETCHD  ;  9.8%
	db 12, WEEPINBELL ;  9.8%
	db  4, SKARMORY   ;  9.8%
	db  3, FARFETCHD  ;  5.1%
	db 11, WEEPINBELL ;  5.1%
	db 12, GLOOM      ;  4.3%
	db 11, GLOOM      ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, SLOWPOKE  ; 19.9%
	db  5, SLOWPOKE  ; 19.9%
	db  5, SLOWPOKE  ; 15.2%
	db  5, SLOWPOKE  ;  9.8%
	db  5, SLOWPOKE  ;  9.8%
	db  5, SLOWPOKE  ;  9.8%
	db  5, SLOWPOKE  ;  5.1%
	db 10, SLOWBRO   ;  5.1%
	db 10, SLOWBRO   ;  4.3%
	db 10, SLOWBRO   ;  1.2%
	end_water_wildmons
