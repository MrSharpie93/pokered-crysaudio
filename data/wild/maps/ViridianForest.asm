ViridianForestWildMons:
	def_grass_wildmons 8 ; encounter rate
IF DEF(_RED)
	db  2, WEEDLE   ; 19.9%
	db  3, KAKUNA   ; 19.9%
	db  2, CATERPIE ; 15.2%
	db  3, WEEDLE   ;  9.8%
	db  3, VENONAT  ;  9.8%
	db  3, JOLTIK   ;  9.8%
	db  3, METAPOD  ;  5.1%
	db  2, PICHU    ;  5.1%
	db  2, PICHU    ;  4.3%
	db  3, PIKACHU  ;  1.2%
ENDC
IF DEF(_BLUE)
	db  2, CATERPIE ; 19.9%
	db  3, METAPOD  ; 19.9%
	db  2, WEEDLE   ; 15.2%
	db  3, CATERPIE ;  9.8%
	db  3, VENONAT  ;  9.8%
	db  3, JOLTIK   ;  9.8%
	db  3, KAKUNA   ;  5.1%
	db  2, PICHU    ;  5.1%
	db  2, PICHU    ;  4.3%
	db  3, PIKACHU  ;  1.2%
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
