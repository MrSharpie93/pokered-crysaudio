MACRO move_choices
	IF _NARG
		db \# ; all args
	ENDC
	db 0 ; end
	DEF list_index += 1
ENDM

; move choice modification methods that are applied for each trainer class
TrainerClassMoveChoiceModifications:
	list_start TrainerClassMoveChoiceModifications
	move_choices 1       ; YOUNGSTER
	move_choices 1       ; BUG CATCHER
	move_choices 1       ; LASS
	move_choices 1,3     ; SAILOR
	move_choices 1,4     ; JR_TRAINER_M
	move_choices 1,4     ; JR_TRAINER_F
	move_choices 1,2,3   ; POKEMANIAC
	move_choices 1,2,3,4 ; SUPER_NERD
	move_choices 1,4     ; HIKER
	move_choices 1,2,3   ; BIKER
	move_choices 1,2,3,4 ; BURGLAR
	move_choices 1,2,3   ; ENGINEER
	move_choices 1,2,3,4 ; JESSIE_JAMES
	move_choices 1,3     ; FISHER
	move_choices 1,3     ; SWIMMER
	move_choices 1,2,3   ; CUE_BALL
	move_choices 1,2     ; GAMBLER
	move_choices 1,3,4   ; BEAUTY
	move_choices 1,2,3,4 ; PSYCHIC_TR
	move_choices 1,3     ; ROCKER
	move_choices 1,2,4   ; JUGGLER
	move_choices 1,2,3   ; TAMER
	move_choices 1,2     ; BIRD_KEEPER
	move_choices 1,2,3   ; BLACKBELT
	move_choices 1,3     ; RIVAL1 (GREEN)
	move_choices 1       ; PROF_OAK
	move_choices 1,2,3,4 ; CHIEF
	move_choices 1,2,4   ; SCIENTIST
	move_choices 1,2,3,4 ; GIOVANNI
	move_choices 1,2,4   ; ROCKET
	move_choices 1,2,3,4 ; COOLTRAINER_M
	move_choices 1,2,3,4 ; COOLTRAINER_F
	move_choices 1,2,3,4 ; BRUNO
	move_choices 1,3     ; BROCK
	move_choices 1,2,3   ; MISTY
	move_choices 1,2,3,4 ; LT_SURGE
	move_choices 1,2,3,4 ; ERIKA
	move_choices 1,2,3,4 ; KOGA
	move_choices 1,2,3,4 ; BLAINE
	move_choices 1,2,3,4 ; SABRINA
	move_choices 1,2,4   ; GENTLEMAN
	move_choices 1,2,3,4 ; RIVAL2 (BLUE)
	move_choices 1,2,3,4 ; RIVAL3 (RED)
	move_choices 1,2,3,4 ; LORELEI
	move_choices 1,4     ; CHANNELER
	move_choices 1,2,3,4 ; AGATHA
	move_choices 1,2,3,4 ; LANCE
; ~$~ADDED: New trainers.~$~
	move_choices 1,3     ; SWIMMER_F
	move_choices 1,3     ; OFFICER
	move_choices 1,2,3   ; GEORGE
	move_choices 1,4     ; IMAKUNI
	move_choices 1,2,3,4 ; ZINNIA
	assert_list_length NUM_TRAINERS
