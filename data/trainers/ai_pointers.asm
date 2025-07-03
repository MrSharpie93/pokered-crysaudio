TrainerAIPointers:
	table_width 3, TrainerAIPointers
	; one entry per trainer class
	; first byte, number of times (per Pokémon) it can occur
	; next two bytes, pointer to AI subroutine for trainer class
	; subroutines are defined in engine/battle/trainer_ai.asm
	dbw 3, GenericAI ; Youngster
	dbw 3, GenericAI ; Bug Catcher
	dbw 3, GenericAI ; Lass
	dbw 3, GenericAI ; Sailor
	dbw 3, GenericAI ; Jr. Trainer♂
	dbw 3, GenericAI ; Jr. Trainer♀
	dbw 3, GenericAI ; Pokemaniac
	dbw 3, GenericAI ; Super Nerd
	dbw 3, GenericAI ; Hiker
	dbw 3, GenericAI ; Biker
	dbw 3, GenericAI ; Burglar
	dbw 3, GenericAI ; Engineer
	dbw 3, GenericAI ; ~$~Jessie & James~$~
	dbw 3, GenericAI ; Fisher
	dbw 3, GenericAI ; Swimmer♂
	dbw 3, GenericAI ; Cue Ball
	dbw 3, GenericAI ; Gambler
	dbw 3, GenericAI ; Beauty
	dbw 3, GenericAI ; Psychic
	dbw 3, GenericAI ; Rocker
	dbw 3, JugglerAI ; Juggler
	dbw 3, GenericAI ; Tamer
	dbw 3, GenericAI ; Birdkeeper
	dbw 2, BlackbeltAI ; Blackbelt
	dbw 3, GenericAI ; Green
	dbw 3, GenericAI ; Prof. Oak
	dbw 1, GenericAI ; Chief
	dbw 3, GenericAI ; Scientist
	dbw 1, GiovanniAI ; Giovanni
	dbw 3, GenericAI ; Rocket
	dbw 2, CooltrainerMAI ; Cooltrainer♂
	dbw 1, CooltrainerFAI ; Cooltrainer♀
	dbw 2, BrunoAI ; Bruno
	dbw 5, BrockAI ; Brock
	dbw 1, MistyAI ; Misty
	dbw 1, LtSurgeAI ; Surge
	dbw 1, ErikaAI ; Erika
	dbw 2, KogaAI ; Koga
	dbw 2, BlaineAI ; Blaine
	dbw 1, SabrinaAI ; Sabrina
	dbw 3, GenericAI ; Gentleman
	dbw 1, Rival2AI ; Blue
	dbw 1, Rival3AI ; Red
	dbw 2, LoreleiAI ; Lorelei
	dbw 3, GenericAI ; Channeler
	dbw 2, AgathaAI ; Agatha
	dbw 1, LanceAI ; Lance
; ~$~ADDED: New trainers.~$~
	dbw 3, GenericAI ; Swimmer♀
	dbw 3, GenericAI ; Officer Jenny
	dbw 3, GenericAI ; George
	dbw 3, GenericAI ; Imakuni?
	dbw 3, GenericAI ; Zinnia
	assert_table_length NUM_TRAINERS