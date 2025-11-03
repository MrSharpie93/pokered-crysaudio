Route15WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  5, FEAROW     ; 19.9%
	db  5, NIDORINO   ; 19.9%
	db  3, DITTO      ; 15.2%
	db  4, FARFETCHD  ;  9.8%
	db  4, SALANDIT   ;  9.8%
	db  2, SKARMORY   ;  9.8%
	db  3, FARFETCHD  ;  5.1%
	db  3, SALANDIT   ;  5.1%
	db  4, CROAGUNK   ;  4.3%
	db  3, CROAGUNK   ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, FEAROW     ; 19.9%
	db  5, NIDORINA   ; 19.9%
	db  3, DITTO      ; 15.2%
	db  4, FARFETCHD  ;  9.8%
	db  4, CROAGUNK   ;  9.8%
	db  2, SKARMORY   ;  9.8%
	db  3, FARFETCHD  ;  5.1%
	db  3, CROAGUNK   ;  5.1%
	db  4, SALANDIT   ;  4.3%
	db  3, SALANDIT   ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
