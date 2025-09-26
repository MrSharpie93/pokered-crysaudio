SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db  5, VENONAT    ; 19.9%
	db  4, RHYHORN    ; 19.9%
	db  2, EXEGGCUTE  ; 15.2%
	db  2, GLIGAR     ;  9.8%
	db  2, SCYTHER    ;  9.8%
	db 10, PARASECT   ;  9.8%
	db  2, HERACROSS  ;  5.1%
	db  2, PINSIR     ;  5.1%
	db  3, CHANSEY    ;  4.3%
	db  2, CHANSEY    ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, VENONAT    ; 19.9%
	db  4, RHYHORN    ; 19.9%
	db  2, EXEGGCUTE  ; 15.2%
	db  2, GLIGAR     ;  9.8%
	db  2, PINSIR     ;  9.8%
	db 10, PARASECT   ;  9.8%
	db  2, HERACROSS  ;  5.1%
	db  2, SCYTHER    ;  5.1%
	db  3, CHANSEY    ;  4.3%
	db  2, CHANSEY    ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, SHELLDER  ; 19.9%
	db  5, SHELLDER  ; 19.9%
	db  5, SHELLDER  ; 15.2%
	db  5, SHELLDER  ;  9.8%
	db  5, SHELLDER  ;  9.8%
	db  5, SHELLDER  ;  9.8%
	db  5, SHELLDER  ;  5.1%
	db 10, DRATINI   ;  5.1%
	db 10, DRATINI   ;  4.3%
	db 10, DRATINI   ;  1.2%
	end_water_wildmons
