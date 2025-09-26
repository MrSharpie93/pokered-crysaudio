PrepareOakSpeech:
	ld a, [wLetterPrintingDelayFlags]
	push af
	ld a, [wOptions]
	push af
	; Retrieve BIT_DEBUG_MODE set in DebugMenu for StartNewGameDebug.
	; BUG: StartNewGame carries over BIT_ALWAYS_ON_BIKE from previous save files,
	; which causes CheckForceBikeOrSurf to not return.
	; To fix this in debug builds, reset BIT_ALWAYS_ON_BIKE here or in StartNewGame.
	; In non-debug builds, the instructions can be removed.
	ld a, [wStatusFlags6]
	push af
	ld hl, wPlayerName
	ld bc, wBoxDataEnd - wPlayerName
	xor a
	call FillMemory
	ld hl, wSpriteDataStart
	ld bc, wSpriteDataEnd - wSpriteDataStart
	xor a
	call FillMemory
	pop af
	ld [wStatusFlags6], a
	pop af
	ld [wOptions], a
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld a, [wOptionsInitialized]
	and a
	call z, InitOptions
	; These debug names are used for StartNewGameDebug.
	; TestBattle uses the debug names from DebugMenu.
	; A variant of this process is performed in PrepareTitleScreen.
	ld hl, DebugNewGamePlayerName
	ld de, wPlayerName
	ld bc, NAME_LENGTH
	call CopyData
	ld hl, DebugNewGameRivalName
	ld de, wRivalName
	ld bc, NAME_LENGTH
	jp CopyData

OakSpeech:
	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld a, 0 ; BANK(Music_Routes2)
	ld c, a
	ld a, MUSIC_ROUTES2
	call PlayMusic
	call ClearScreen
	call LoadTextBoxTilePatterns
	call PrepareOakSpeech
	predef InitPlayerData2
	ld hl, wNumBoxItems
	ld a, POTION
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantity], a
	call AddItemToInventory
	ld a, [wDefaultMap]
	ld [wDestinationMap], a
	call PrepareForSpecialWarp
	xor a
	ldh [hTileAnimations], a
; ~$~ADDED: Masculine and feminine protagonists.~$~
	ld hl, PlayerStyleText  ; added to the same file as the other oak text
  	call PrintText     ; show this text
  	call PlayerStyleChoice ; added routine at the end of this file
   	ld a, [wCurrentMenuItem]
   	ld [wPlayerStyle], a ; store player's appearance. 00 for masculine, 01 for feminine
; ~$~ADDED: Starter choice happens at game start.~$~
	ld hl, FavoriteColorText
	call PrintText
	call StarterChoice
	ld a, [wCurrentMenuItem]
   	ld [wFavoriteColor], a
;;;
	ld a, [wStatusFlags6]
	bit BIT_DEBUG_MODE, a
	jp nz, .skipSpeech
	call ClearScreen ; clear the screen before resuming normal intro
;;;	
	ld de, ProfOakPic
	lb bc, BANK(ProfOakPic), $00
	call IntroDisplayPicCenteredOrUpperRight
	call FadeInIntroPic
	ld hl, OakSpeechText1
	call PrintText
	call GBFadeOutToWhite
	call ClearScreen
	ld a, NIDORINO
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	call GetMonHeader
	hlcoord 6, 4
	call LoadFlippedFrontSpriteByMonIndex
	call MovePicLeft
	ld hl, OakSpeechText2
	call PrintText
	call GBFadeOutToWhite
	call ClearScreen
; ~$~ADDED: Masculine and feminine protagonists.~$~
	ld de, PlayerPicFront
	lb bc, BANK(PlayerPicFront), $00
	ld a, [wPlayerStyle]
	and a
	jr z, .Masculine1
	ld de, PlayerFPicFront
	lb bc, BANK(PlayerFPicFront), $00
	.Masculine1:
	call IntroDisplayPicCenteredOrUpperRight
;;;
	call MovePicLeft
	ld hl, IntroducePlayerText
	call PrintText
	call ChoosePlayerName
	call GBFadeOutToWhite
	call ClearScreen
	ld de, Rival1Pic
	lb bc, BANK(Rival1Pic), $00
	call IntroDisplayPicCenteredOrUpperRight
	call FadeInIntroPic
	ld hl, IntroduceRivalText
	call PrintText
	call ChooseRivalName
.skipSpeech
	call GBFadeOutToWhite
	call ClearScreen
; ~$~ADDED: Masculine and feminine protagonists.~$~
	ld de, PlayerPicFront
	lb bc, BANK(PlayerPicFront), $00
	ld a, [wPlayerStyle]
	and a
	jr z, .Masculine2
	ld de, PlayerFPicFront
	lb bc, BANK(PlayerFPicFront), $00
	.Masculine2:
	call IntroDisplayPicCenteredOrUpperRight
;;;
	call GBFadeInFromWhite
	ld a, [wStatusFlags6] ; ~$~CHANGED: RedStar/BlueStar debug changes.~$~
	bit BIT_DEBUG_MODE, a
	jr nz, .next
	ld a, [wStatusFlags3]
	and a ; ???
	jr nz, .next
	ld hl, OakSpeechText3
	call PrintText
.next
	ldh a, [hLoadedROMBank]
	push af
	ld a, SFX_SHRINK
	call PlaySound
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld c, 4
	call DelayFrames
; ~$~ADDED: Masculine and feminine protagonists.~$~
	ld de, PlayerSprite
	ld hl, vSprites
	lb bc, BANK(PlayerSprite), $0C
	ld a, [wPlayerStyle]
	and a
	jr z, .Masculine3
	ld de, PlayerFSprite
	lb bc, BANK(PlayerFSprite), $0C
.Masculine3
	ld hl, vSprites
	call CopyVideoData
	ld de,ShrinkPic1
	lb bc, BANK(ShrinkPic1), $00
	call IntroDisplayPicCenteredOrUpperRight
;;;
	ld c, 4
	call DelayFrames
	ld de, ShrinkPic2
	lb bc, BANK(ShrinkPic2), $00
	call IntroDisplayPicCenteredOrUpperRight
	call ResetPlayerSpriteData
	ldh a, [hLoadedROMBank]
	push af
;	ld a, 0 ; BANK(Music_PalletTown)
;	ld [wAudioROMBank], a
;	ld [wAudioSavedROMBank], a

	ld a, 10
	ld [wMusicFade], a
	xor a
	ld [wMusicFadeID], a

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld c, 20
	call DelayFrames
	hlcoord 6, 5
	ld b, 7
	ld c, 7
	call ClearScreenArea
	call LoadTextBoxTilePatterns
	ld a, 1
	ld [wUpdateSpritesEnabled], a
	ld c, 50
	call DelayFrames
	call GBFadeOutToWhite
	jp ClearScreen
OakSpeechText1:
	text_far _OakSpeechText1
	text_end
OakSpeechText2:
	text_far _OakSpeechText2A
	;~$~FIXED~$~ BUG: The cry played does not match the sprite displayed.
	sound_cry_nidorina
	text_far _OakSpeechText2B
	text_end
IntroducePlayerText:
	text_far _IntroducePlayerText
	text_end
IntroduceRivalText:
	text_far _IntroduceRivalText
	text_end
OakSpeechText3:
	text_far _OakSpeechText3
	text_end
PlayerStyleText: ; ~$~ADDED: Masculine and feminine protagonists.~$~
	text_far _PlayerStyleText
	text_end
FavoriteColorText: ; ~$~ADDED: Starter choice happens at game start.~$~
	text_far _FavoriteColorText
	text_end

FadeInIntroPic:
	ld hl, IntroFadePalettes
	ld b, 6
.next
	ld a, [hli]
	ldh [rBGP], a
	ld c, 10
	call DelayFrames
	dec b
	jr nz, .next
	ret

IntroFadePalettes:
	dc 1, 1, 1, 0
	dc 2, 2, 2, 0
	dc 3, 3, 3, 0
	dc 3, 3, 2, 0
	dc 3, 3, 1, 0
	dc 3, 2, 1, 0

MovePicLeft:
	ld a, 119
	ldh [rWX], a
	call DelayFrame

	ld a, %11100100
	ldh [rBGP], a
.next
	call DelayFrame
	ldh a, [rWX]
	sub 8
	cp $FF
	ret z
	ldh [rWX], a
	jr .next

DisplayPicCenteredOrUpperRight:
	call GetPredefRegisters
IntroDisplayPicCenteredOrUpperRight:
; b = bank
; de = address of compressed pic
; c: 0 = centred, non-zero = upper-right
	push bc
	ld a, b
	call UncompressSpriteFromDE
	ld hl, sSpriteBuffer1
	ld de, sSpriteBuffer0
	ld bc, $310
	call CopyData
	ld de, vFrontPic
	call InterlaceMergeSpriteBuffers
	pop bc
	ld a, c
	and a
	hlcoord 15, 1
	jr nz, .next
	hlcoord 6, 4
.next
	xor a
	ldh [hStartTileID], a
	predef_jump CopyUncompressedPicToTilemap
	
; ~$~ADDED: Masculine and feminine protagonists.~$~
PlayerStyleChoice::
	call SaveScreenTilesToBuffer1
	call InitPlayerStyleTextBoxParameters
	jr DisplayPlayerStyleChoice

InitPlayerStyleTextBoxParameters::
	ld a, $1 ; loads the value for the unused North/West choice, but that was changed.
	ld [wTwoOptionMenuID], a
	coord hl, 13, 7 
	ld bc, $80e
	ret

DisplayPlayerStyleChoice::
	ld a, $14
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jp LoadScreenTilesFromBuffer1

; ~$~ADDED: Masculine and feminine protagonists.~$~
StarterChoice::
	call SaveScreenTilesToBuffer1
	jr DisplayStarterChoice

DisplayStarterChoice::
	ld a, STARTER_CHOICE
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, wTopMenuItemY
	ld a, 7
	ld [hli], a ; top menu item Y
	ld a, 13
	ld [hli], a ; top menu item X
	xor a
	ld [hli], a ; current menu item ID
	inc hl
	ld a, $2
	ld [hli], a ; wMaxMenuItem
	ld a, B_BUTTON | A_BUTTON
	ld [hli], a ; wMenuWatchedKeys
	xor a
	ld [hl], a ; wLastMenuItem
	call HandleMenuInput
	bit BIT_B_BUTTON, a
	jr nz, .defaultOption ; if B was pressed, choose Bulbasaur
; A was pressed
	call PlaceUnfilledArrowMenuCursor
	ld a, [wCurrentMenuItem]
	jp LoadScreenTilesFromBuffer1
.defaultOption
	xor a
	ld [wCurrentMenuItem], a
	jp LoadScreenTilesFromBuffer1
