; Since Generation IV, the move priority ranges from -7 to 5.
; To avoid working with negative numbers, we shift the priority 
; range to be from 0 to 12.
PriorityMovesList: ; ~$~ADDED: Better move priority system.~$~
		db COUNTER,        1
		db MIRROR_COAT,    1
		db QUICK_ATTACK,   8
		db MACH_PUNCH,     8
		db SUCKER_PUNCH,   8
		db ICE_SHARD,      8
		db SHADOW_SNEAK,   8
		db EXTREMESPEED,   9
        db -1 ; end