Route27WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db  6, RATTATA   ; 19.9%
	db  7, HOPPIP    ; 19.9%
	db  6, SANDSHREW ; 15.2%
	db  7, DODUO     ;  9.8%
	db  7, PONYTA    ;  9.8%
	db  6, WHISMUR   ;  9.8%
	db  6, DODUO     ;  5.1%
	db  6, PONYTA    ;  5.1%
	db  6, EKANS     ;  4.3%
	db  5, EKANS     ;  1.2%
ENDC
IF DEF(_BLUE)
	db  6, RATTATA   ; 19.9%
	db  7, HOPPIP    ; 19.9%
	db  6, EKANS     ; 15.2%
	db  7, DODUO     ;  9.8%
	db  7, PONYTA    ;  9.8%
	db  6, WHISMUR   ;  9.8%
	db  6, DODUO     ;  5.1%
	db  6, PONYTA    ;  5.1%
	db  6, SANDSHREW ;  4.3%
	db  5, SANDSHREW ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 3 ; encounter rate
	db  5, TENTACOOL  ; 19.9%
	db  5, TENTACOOL  ; 19.9%
	db  5, TENTACOOL  ; 15.2%
	db  5, TENTACOOL  ;  9.8%
	db  5, TENTACOOL  ;  9.8%
	db  5, TENTACOOL  ;  9.8%
	db  5, TENTACOOL  ;  5.1%
	db 10, TENTACRUEL ;  5.1%
	db 10, TENTACRUEL ;  4.3%
	db 10, TENTACRUEL ;  1.2%
	end_water_wildmons
