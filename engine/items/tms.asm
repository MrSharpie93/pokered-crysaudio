; tests if mon [wCurPartySpecies] can learn move [wMoveNum]
CanLearnTM:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetMonHeader
	ld hl, wMonHLearnset
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, TechnicalMachines
.findTMloop
	ld a, [hli]
	cp b
	jr z, .TMfoundLoop
	inc c
	jr .findTMloop
.TMfoundLoop
	pop hl
	ld b, FLAG_TEST
	predef_jump FlagActionPredef

; converts TM/HM number in [wTempTMHM] into move number
; HMs start at 51
TMToMove:
	ld a, [wTempTMHM]
	dec a
	ld hl, TechnicalMachines
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wTempTMHM], a
	ret

INCLUDE "data/moves/tmhm_moves.asm"

; ~$~ADDED: Red++'s Move Tutor functionality.~$~
; tests if mon [wCurPartySpecies] can learn move [wMoveNum]
CanLearnTutor::
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetMonHeader
	ld hl, wMonHMoves
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, MoveTutorMoves
.findTutorLoop
	ld a, [hli]
	cp b
	jr z, .TutorFoundLoop
	inc c
	jr .findTutorLoop
.TutorFoundLoop
	pop hl
	ld b, FLAG_TEST
	predef FlagActionPredef
	ld a, c
	ld [wTempMoveID], a ; bc is not preserved when called from another bank
	ret

; converts Move Tutor number in wNamedObjectIndex into move number
TutorToMove::
	ld a, [wNamedObjectIndex]
	dec a
	ld hl, MoveTutorMoves
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wNamedObjectIndex], a
	ret

INCLUDE "data/moves/move_tutors.asm"
