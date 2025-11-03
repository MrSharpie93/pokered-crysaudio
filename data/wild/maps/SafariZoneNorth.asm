SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db  5, PARAS      ; 19.9%
	db  3, RHYHORN    ; 19.9%
	db  4, EXEGGCUTE  ; 15.2%
	db  3, TAUROS     ;  9.8%
	db  3, KANGASKHAN ;  9.8%
	db  2, MUNCHLAX   ;  9.8%
	db  2, TAUROS     ;  5.1%
	db  3, HERACROSS  ;  5.1%
	db  3, MILTANK    ;  4.3%
	db  2, MILTANK    ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, PARAS      ; 19.9%
	db  3, RHYHORN    ; 19.9%
	db  4, EXEGGCUTE  ; 15.2%
	db  3, MILTANK    ;  9.8%
	db  3, KANGASKHAN ;  9.8%
	db  2, MUNCHLAX   ;  9.8%
	db  2, MILTANK    ;  5.1%
	db  3, HERACROSS  ;  5.1%
	db  3, TAUROS     ;  4.3%
	db  2, TAUROS     ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 10 ; encounter rate
	db  5, HORSEA    ; 19.9%
	db  5, HORSEA    ; 19.9%
	db  5, HORSEA    ; 15.2%
	db  5, HORSEA    ;  9.8%
	db  5, HORSEA    ;  9.8%
	db  5, HORSEA    ;  9.8%
	db  5, HORSEA    ;  5.1%
	db 10, SEADRA    ;  5.1%
	db 10, SEADRA    ;  4.3%
	db 10, SEADRA    ;  1.2%
	end_water_wildmons
