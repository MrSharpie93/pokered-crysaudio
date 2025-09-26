TohjoFallsWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db  6, ZUBAT     ; 19.9%
	db  5, SLOWPOKE  ; 19.9%
	db  4, CROAGUNK  ; 15.2%
	db  6, PARAS     ;  9.8%
	db  5, NOIBAT    ;  9.8%
	db  5, ZUBAT     ;  9.8%
	db  5, PARAS     ;  5.1%
	db  2, BELDUM    ;  5.1%
	db  4, SALANDIT  ;  4.3%
	db  3, SALANDIT  ;  1.2%
ENDC
IF DEF(_BLUE)
	db  6, ZUBAT     ; 19.9%
	db  5, SLOWPOKE  ; 19.9%
	db  4, SALANDIT  ; 15.2%
	db  6, PARAS     ;  9.8%
	db  5, NOIBAT    ;  9.8%
	db  5, ZUBAT     ;  9.8%
	db  5, PARAS     ;  5.1%
	db  2, BELDUM    ;  5.1%
	db  4, CROAGUNK  ;  4.3%
	db  3, CROAGUNK  ;  1.2%
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
