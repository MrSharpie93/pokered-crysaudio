MACRO farcall
	ld b, BANK(\1)
	ld hl, \1
	rst _Bankswitch ; ~$~ADDED: Vortyne optimization for bankswitches.~$~
ENDM

MACRO callfar
	ld hl, \1
	ld b, BANK(\1)
	rst _Bankswitch ; ~$~ADDED: Vortyne optimization for bankswitches.~$~
ENDM

MACRO farjp
	ld b, BANK(\1)
	ld hl, \1
	jp Bankswitch
ENDM

MACRO jpfar
	ld hl, \1
	ld b, BANK(\1)
	jp Bankswitch
ENDM

MACRO homecall
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(\1)
	call SetCurBank ; ~$~CHANGED: Pret tutorial optimization for homecalls.~$~
	call \1
	pop af
	call SetCurBank ; ~$~CHANGED: Pret tutorial optimization for homecalls.~$~
ENDM

MACRO homecall_sf ; homecall but save flags by popping into bc instead of af
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(\1)
	call SetCurBank ; ~$~CHANGED: Pret tutorial optimization for homecalls.~$~
	call \1
	pop bc
	ld a, b
	call SetCurBank ; ~$~CHANGED: Pret tutorial optimization for homecalls.~$~
ENDM
