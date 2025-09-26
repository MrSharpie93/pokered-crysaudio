Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db  5, MACHOP     ; 19.9%
	db  5, TYROGUE    ; 19.9%
	db 10, DODRIO     ; 15.2%
	db 11, ARBOK      ;  9.8%
	db 10, ARBOK      ;  9.8%
	db 10, PRIMEAPE   ;  9.8%
	db 11, BELLUNA    ;  5.1%
	db 10, BELLUNA    ;  5.1%
	db 11, SANDSLASH  ;  4.3%
	db 10, SANDSLASH  ;  1.2%
ENDC
IF DEF(_BLUE)
	db  5, MACHOP     ; 19.9%
	db  5, TYROGUE    ; 19.9%
	db 10, DODRIO     ; 15.2%
	db 11, SANDSLASH  ;  9.8%
	db 10, SANDSLASH  ;  9.8%
	db 10, PRIMEAPE   ;  9.8%
	db 11, PERSIAN    ;  5.1%
	db 10, PERSIAN    ;  5.1%
	db 11, ARBOK      ;  4.3%
	db 10, ARBOK      ;  1.2%
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
