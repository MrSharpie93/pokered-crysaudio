Route22WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  3, RATTATA   ; 19.9%
	db  3, NIDORAN_M ; 19.9%
	db  4, RATTATA   ; 15.2%
	db  3, MANKEY    ;  9.8%
	db  4, MANKEY    ;  9.8%
	db  3, NIDORAN_F ;  9.8%
	db  3, SPEAROW   ;  5.1%
	db  2, SPEAROW   ;  5.1%
	db  2, NIDORAN_M ;  4.3%
	db  2, NIDORAN_M ;  1.2%
ENDC
IF DEF(_BLUE)
	db  3, RATTATA   ; 19.9%
	db  3, NIDORAN_F ; 19.9%
	db  4, RATTATA   ; 15.2%
	db  3, MANKEY    ;  9.8%
	db  4, MANKEY    ;  9.8%
	db  3, NIDORAN_M ;  9.8%
	db  3, SPEAROW   ;  5.1%
	db  2, SPEAROW   ;  5.1%
	db  2, NIDORAN_F ;  4.3%
	db  2, NIDORAN_F ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, POLIWAG   ; 19.9%
	db  5, POLIWAG   ; 19.9%
	db  5, POLIWAG   ; 15.2%
	db  5, POLIWAG   ;  9.8%
	db  5, POLIWAG   ;  9.8%
	db  5, POLIWAG   ;  9.8%
	db  5, POLIWAG   ;  5.1%
	db 10, POLIWHIRL ;  5.1%
	db 10, POLIWHIRL ;  4.3%
	db 10, POLIWHIRL ;  1.2%
	end_water_wildmons
