Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  4, SKIPLOOM   ; 19.9%
	db  5, RATICATE   ; 19.9%
	db  4, PIDGEOTTO  ; 15.2%
	db  3, JIGGLYPUFF ;  9.8%
	db  4, GROWLITHE  ;  9.8%
	db 10, GLOOM      ;  9.8%
	db  3, GROWLITHE  ;  5.1%
	db  2, JIGGLYPUFF ;  5.1%
	db  3, MURKROW    ;  4.3%
	db  2, MURKROW    ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, SKIPLOOM   ; 19.9%
	db  5, RATICATE   ; 19.9%
	db  4, PIDGEOTTO  ; 15.2%
	db  3, JIGGLYPUFF ;  9.8%
	db  4, GROWLITHE  ;  9.8%
	db 10, WEEPINBELL ;  9.8%
	db  3, GROWLITHE  ;  5.1%
	db  2, JIGGLYPUFF ;  5.1%
	db  3, MURKROW    ;  4.3%
	db  2, MURKROW    ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
