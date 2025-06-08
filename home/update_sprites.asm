UpdateSprites:: ; ~$~FIXED: OAM updates can no longer be interrupted by V-Blank.~$~ 
	ld a, [wUpdateSpritesEnabled]
	dec a
	ret nz
	ld hl, hSkipOAMUpdates
	set 0, [hl]
	homecall _UpdateSprites
	ld hl, hSkipOAMUpdates
	res 0, [hl]
	ret
