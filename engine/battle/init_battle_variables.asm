InitBattleVariables:
	ldh a, [hTileAnimations]
	ld [wSavedTileAnimations], a

;joenote - make the trainer pokeballs red
	ld hl, wPlayerHPBarColor
	ld a, HP_BAR_RED
	ld [hli], a ; wPlayerHPBarColor
	ld [hl], a ; wEnemyHPBarColor

	xor a
	ld [wWasTrainerBattle], a ; ~$~CHANGED: Trainers are not Pokemon.~$~
	ld [wActionResultOrTookBattleTurn], a
	ld [wBattleResult], a
	ld hl, wPartyAndBillsPCSavedMenuItem
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wListScrollOffset], a
	ld [wCriticalHitOrOHKO], a
	ld [wBattleMonSpecies], a
	ld [wPartyGainExpFlags], a
	ld [wPlayerMonNumber], a
	ld [wEscapedFromBattle], a
	ld [wMapPalOffset], a
;;;;;;;;;; PureRGBnote: ADDED: clear various new AI-related variables.
	ld [wAIMoveSpamAvoider], a
	ld [wAITargetMonType1], a
	ld [wAITargetMonType2], a
	ld [wAITargetMonStatus], a
;	ld hl, wPlayerHPBarColor
;	ld [hli], a ; wPlayerHPBarColor
;	ld [hl], a ; wEnemyHPBarColor
	ld hl, wCanEvolveFlags
	ld b, wMiscBattleDataEnd - wMiscBattleData
.loop
	ld [hli], a
	dec b
	jr nz, .loop
;	inc a ; POUND ; ~$~ Why'd they even do this?~$~
;	ld [wTestBattlePlayerSelectedMove], a
	ld a, [wCurMap]
	cp SAFARI_ZONE_EAST
	jr c, .notSafariBattle
	cp SAFARI_ZONE_CENTER_REST_HOUSE
	jr nc, .notSafariBattle
	ld a, BATTLE_TYPE_SAFARI
	ld [wBattleType], a
.notSafariBattle
	jpfar PlayBattleMusic
