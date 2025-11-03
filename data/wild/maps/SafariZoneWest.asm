SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db  4, VENONAT    ; 19.9%
	db  4, PARAS      ; 19.9%
	db  3, LICKITUNG  ; 15.2%
	db  4, TAUROS     ;  9.8%
	db  3, SCYTHER    ;  9.8%
	db  2, BONSLY     ;  9.8%
	db  3, TAUROS     ;  5.1%
	db  3, PINSIR     ;  5.1%
	db  4, MILTANK    ;  4.3%
	db  3, MILTANK    ;  1.2%
ENDC
IF DEF(_BLUE)
	db  4, VENONAT    ; 19.9%
	db  4, PARAS      ; 19.9%
	db  3, LICKITUNG  ; 15.2%
	db  4, MILTANK    ;  9.8%
	db  3, PINSIR     ;  9.8%
	db  2, BONSLY     ;  9.8%
	db  3, MILTANK    ;  5.1%
	db  3, SCYTHER    ;  5.1%
	db  4, TAUROS     ;  4.3%
	db  3, TAUROS     ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 10 ; encounter rate
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
