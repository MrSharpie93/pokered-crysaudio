; Since Generation IV, the move priority ranges from -7 to 5.
; To avoid working with negative numbers, we shift the priority 
; range to be from 0 to 12.
PriorityMovesList: ; ~$~ADDED: Better move priority system.~$~
		db TELEPORT,       1
		db COUNTER,        2
		db MIRROR_COAT,    2
		db BULLET_PUNCH,   8
		db QUICK_ATTACK,   8
		db TRANSFORM,      8 ; Emulates Impostor, and makes Ditto less shitty.~$~
		db MACH_PUNCH,     8
		db SUCKER_PUNCH,   8
		db ICE_SHARD,      8
		db SHADOW_SNEAK,   8
		db EXTREMESPEED,   9
		db PROTECT,       10
        db -1 ; end