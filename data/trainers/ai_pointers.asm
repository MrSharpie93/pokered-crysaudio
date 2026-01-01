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
	dbw 1, PotionAI  ; Jr. Trainer♂
	dbw 1, PotionAI  ; Jr. Trainer♀
	dbw 1, XDefendAI ; Pokemaniac
	dbw 2, FullHealAI ; Super Nerd
	dbw 2, FullHealAI ; Hiker
	dbw 3, GenericAI ; Biker
	dbw 1, XSpeedAI  ; Burglar
	dbw 1, MetalCoatAI ; Engineer
	dbw 1, SuperPotionAI ; ~$~Jessie & James~$~
	dbw 3, GenericAI ; Fisher
	dbw 3, GenericAI ; Swimmer♂
	dbw 1, XDefendAI ; Cue Ball
	dbw 1, DireHitAI ; Gambler
	dbw 1, FullRestoreAI ; Beauty
	dbw 3, GenericAI ; Psychic
	dbw 3, GenericAI ; Rocker
	dbw 3, JugglerAI ; Juggler
	dbw 1, DireHitAI ; Tamer
	dbw 3, GenericAI ; Birdkeeper
	dbw 1, XAttackAI ; Blackbelt
	dbw 3, PotionAI  ; Green
	dbw 3, GenericAI ; Prof. Oak
	dbw 1, SwitchOrHyperPotionAI ; Chief
	dbw 1, GuardSpecAI ; Scientist
	dbw 2, SwitchOrFullRestoreAI ; Giovanni
	dbw 3, GenericAI ; Rocket
	dbw 1, SwitchOrSuperPotionAI ; Cooltrainer♂
	dbw 1, SwitchOrSuperPotionAI ; Cooltrainer♀
	dbw 3, XAttackAI ; Bruno
	dbw 3, PotionOrFullHealAI ; Brock
	dbw 1, XSpecialAI ; Misty
	dbw 2, XSpeedAI ; Surge
	dbw 3, PotionOrFullHealAI ; Erika
	dbw 1, KingsRockAI ; Koga
	dbw 2, SuperPotionAI ; Blaine
	dbw 1, HyperPotionAI ; Sabrina
	dbw 1, FullRestoreAI ; Gentleman
	dbw 2, SwitchOrFullRestoreAI ; Blue
	dbw 2, SwitchOrFullRestoreAI ; Red
	dbw 2, SwitchOrHyperPotionAI ; Lorelei
	dbw 1, GuardSpecAI ; Channeler
	dbw 2, SwitchOrHyperPotionAI ; Agatha
	dbw 1, SwitchOrFullRestoreAI ; Lance
; ~$~ADDED: New trainers.~$~
	dbw 3, GenericAI ; Swimmer♀
	dbw 1, PotionOrFullHealAI ; Officer Jenny
	dbw 3, XSpecialAI ; George
	dbw 2, SwitchOrSuperPotionAI ; Imakuni?
	dbw 2, SwitchOrFullRestoreAI ; Zinnia
	assert_table_length NUM_TRAINERS