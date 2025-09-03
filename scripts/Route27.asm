Route27_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route27TrainerHeaders
	ld de, Route27_ScriptPointers
	ld a, [wRoute27CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute27CurScript], a
	ret

Route27_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE27_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE27_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE27_END_BATTLE

Route27_TextPointers:
	def_text_pointers
	dw_const Route27CoolTrainerM1Text,       TEXT_ROUTE27_COOLTRAINER_M1
	dw_const Route27CoolTrainerM2Text,       TEXT_ROUTE27_COOLTRAINER_M2
	dw_const Route27CoolTrainerF1Text,       TEXT_ROUTE27_COOLTRAINER_F1
	dw_const Route27CoolTrainerF2Text,       TEXT_ROUTE27_COOLTRAINER_F2
	dw_const Route27PsychicText,             TEXT_ROUTE27_YOUNGSTER1
	dw_const Route27BirdKeeperText,          TEXT_ROUTE27_YOUNGSTER2
	dw_const PickUpItemText,                 TEXT_ROUTE27_TM_SOLARBEAM
	dw_const PickUpItemText,                 TEXT_ROUTE27_RARE_CANDY
	dw_const Route27FisherText,              TEXT_ROUTE27_FISHER
	dw_const Route27SignText,                TEXT_ROUTE27_SIGN

Route27TrainerHeaders:
	def_trainers
Route27TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_0, 3, Route27CoolTrainerM1BattleText, Route27CoolTrainerM1EndBattleText, Route27CoolTrainerM1AfterBattleText
Route27TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_1, 4, Route27CoolTrainerM2BattleText, Route27CoolTrainerM2EndBattleText, Route27CoolTrainerM2AfterBattleText
Route27TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_2, 4, Route27CoolTrainerF1BattleText, Route27CoolTrainerF1EndBattleText, Route27CoolTrainerF1AfterBattleText
Route27TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_3, 4, Route27CoolTrainerF2BattleText, Route27CoolTrainerF2EndBattleText, Route27CoolTrainerF2AfterBattleText
Route27TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_4, 3, Route27PsychicBattleText, Route27PsychicEndBattleText, Route27PsychicAfterBattleText
Route27TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_27_TRAINER_5, 2, Route27BirdKeeperBattleText, Route27BirdKeeperEndBattleText, Route27BirdKeeperAfterBattleText
	db -1 ; end

Route27CoolTrainerM1Text:
	text_asm
	ld hl, Route27TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route27CoolTrainerM1BattleText:
	text_far _Route27CoolTrainerM1BattleText
	text_end

Route27CoolTrainerM1EndBattleText:
	text_far _Route27CoolTrainerM1EndBattleText
	text_end

Route27CoolTrainerM1AfterBattleText:
	text_far _Route27CoolTrainerM1AfterBattleText
	text_end

Route27CoolTrainerM2Text:
	text_asm
	ld hl, Route27TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route27CoolTrainerM2BattleText:
	text_far _Route27CoolTrainerM2BattleText
	text_end

Route27CoolTrainerM2EndBattleText:
	text_far _Route27CoolTrainerM2EndBattleText
	text_end

Route27CoolTrainerM2AfterBattleText:
	text_far _Route27CoolTrainerM2AfterBattleText
	text_end

Route27CoolTrainerF1Text:
	text_asm
	ld hl, Route27TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route27CoolTrainerF1BattleText:
	text_far _Route27CoolTrainerF1BattleText
	text_end

Route27CoolTrainerF1EndBattleText:
	text_far _Route27CoolTrainerF1EndBattleText
	text_end

Route27CoolTrainerF1AfterBattleText:
	text_far _Route27CoolTrainerF1AfterBattleText
	text_end

Route27CoolTrainerF2Text:
	text_asm
	ld hl, Route27TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route27CoolTrainerF2BattleText:
	text_far _Route27CoolTrainerF2BattleText
	text_end

Route27CoolTrainerF2EndBattleText:
	text_far _Route27CoolTrainerF2EndBattleText
	text_end

Route27CoolTrainerF2AfterBattleText:
	text_far _Route27CoolTrainerF2AfterBattleText
	text_end

Route27PsychicText:
	text_asm
	ld hl, Route27TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route27PsychicBattleText:
	text_far _Route27PsychicBattleText
	text_end

Route27PsychicEndBattleText:
	text_far _Route27PsychicEndBattleText
	text_end

Route27PsychicAfterBattleText:
	text_far _Route27PsychicAfterBattleText
	text_end

Route27BirdKeeperText:
	text_asm
	ld hl, Route27TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route27BirdKeeperBattleText:
	text_far _Route27BirdKeeperBattleText
	text_end

Route27BirdKeeperEndBattleText:
	text_far _Route27BirdKeeperEndBattleText
	text_end

Route27BirdKeeperAfterBattleText:
	text_far _Route27BirdKeeperAfterBattleText
	text_end
	
Route27FisherText:
	text_far _Route27FisherText
	text_end
	
Route27SignText:
	text_far _Route27SignText
	text_end
