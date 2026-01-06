Route4_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4_ScriptPointers
	ld a, [wRoute4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute4CurScript], a
	ret

Route4_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE4_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE4_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE4_END_BATTLE

Route4_TextPointers:
	def_text_pointers
	dw_const Route4CooltrainerF1Text, TEXT_ROUTE4_COOLTRAINER_F1
	dw_const Route4CooltrainerF2Text, TEXT_ROUTE4_COOLTRAINER_F2
	dw_const PickUpItemText,          TEXT_ROUTE4_TM_WHIRLWIND
	dw_const Route4Hiker1Text,        TEXT_ROUTE4_HIKER1
	dw_const Route4Hiker2Text,        TEXT_ROUTE4_HIKER2
	dw_const Route4Hiker3Text,        TEXT_ROUTE4_HIKER3
	dw_const PokeCenterSignText,      TEXT_ROUTE4_POKECENTER_SIGN
	dw_const Route4MtMoonSignText,    TEXT_ROUTE4_MT_MOON_SIGN
	dw_const Route4SignText,          TEXT_ROUTE4_SIGN

Route4TrainerHeaders:
	def_trainers 2
Route4TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_4_TRAINER_0, 3, Route4CooltrainerF2BattleText, Route4CooltrainerF2EndBattleText, Route4CooltrainerF2AfterBattleText
	db -1 ; end

Route4CooltrainerF1Text:
	text_far _Route4CooltrainerF1Text
	text_end

Route4CooltrainerF2Text:
	text_asm
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4CooltrainerF2BattleText:
	text_far _Route4CooltrainerF2BattleText
	text_end

Route4CooltrainerF2EndBattleText:
	text_far _Route4CooltrainerF2EndBattleText
	text_end

Route4CooltrainerF2AfterBattleText:
	text_far _Route4CooltrainerF2AfterBattleText
	text_end
	
Route4Hiker1Text:
	text_asm
	CheckEvent EVENT_GOT_ESCAPE_ROPE
	jr nz, .gotRope
	ld hl, Route4HikerGiveEscapeRopeText
	call PrintText
	lb bc, ESCAPE_ROPE, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedEscapeRopeText
	call PrintText
	SetEvent EVENT_GOT_ESCAPE_ROPE
.gotRope
	ld hl, Route4HikerGotEscapeRopeText
	call PrintText
	jr .Done
.BagFull
	ld hl, Route4HikerBagFullText
	call PrintText
.Done
	jp TextScriptEnd

Route4MtMoonSignText:
	text_far _Route4MtMoonSignText
	text_end

Route4SignText:
	text_far _Route4SignText
	text_end
	
Route4HikerGiveEscapeRopeText:
	text_far _Route4HikerGiveEscapeRopeText
	text_end
	
Route4HikerGotEscapeRopeText:
	text_far _Route4HikerGotEscapeRopeText
	text_end

Route4HikerBagFullText:
	text_far _Route4HikerBagFullText
	text_end
	
ReceivedEscapeRopeText:
	text_far _ReceivedEscapeRopeText
	sound_get_item_1
	text_end
	
Route4Hiker2Text:
	text_far _MegaPunchGuyText
	text_asm
	ld a, 4 ; MEGA_PUNCH
	ld [wWhichTrade], a
	callfar MoveTutorScript
	jp TextScriptEnd
	
Route4Hiker3Text:
	text_far _MegaKickGuyText
	text_asm
	ld a, 5 ; MEGA_KICK
	ld [wWhichTrade], a
	callfar MoveTutorScript
	jp TextScriptEnd
