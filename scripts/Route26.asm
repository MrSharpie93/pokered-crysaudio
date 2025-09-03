Route26_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route26TrainerHeaders
	ld de, Route26_ScriptPointers
	ld a, [wRoute26CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute26CurScript], a
	ret

Route26_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE26_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE26_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE26_END_BATTLE

Route26_TextPointers:
	def_text_pointers
	dw_const Route26CoolTrainerM1Text,       TEXT_ROUTE26_COOLTRAINER_M1
	dw_const Route26CoolTrainerM2Text,       TEXT_ROUTE26_COOLTRAINER_M2
	dw_const Route26CoolTrainerF1Text,       TEXT_ROUTE26_COOLTRAINER_F1
	dw_const Route26CoolTrainerF2Text,       TEXT_ROUTE26_COOLTRAINER_F2
	dw_const Route26PsychicText,             TEXT_ROUTE26_YOUNGSTER
	dw_const Route26FisherText,              TEXT_ROUTE26_FISHER
	dw_const PickUpItemText,                 TEXT_ROUTE26_METAL_COAT
	dw_const PickUpItemText,                 TEXT_ROUTE26_MAX_ELIXER
	dw_const Route26SignText,                TEXT_ROUTE26_SIGN

Route26TrainerHeaders:
	def_trainers
Route26TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_0, 3, Route26CoolTrainerM1BattleText, Route26CoolTrainerM1EndBattleText, Route26CoolTrainerM1AfterBattleText
Route26TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_1, 4, Route26CoolTrainerM2BattleText, Route26CoolTrainerM2EndBattleText, Route26CoolTrainerM2AfterBattleText
Route26TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_2, 4, Route26CoolTrainerF1BattleText, Route26CoolTrainerF1EndBattleText, Route26CoolTrainerF1AfterBattleText
Route26TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_3, 4, Route26CoolTrainerF2BattleText, Route26CoolTrainerF2EndBattleText, Route26CoolTrainerF2AfterBattleText
Route26TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_4, 3, Route26PsychicBattleText, Route26PsychicEndBattleText, Route26PsychicAfterBattleText
Route26TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_26_TRAINER_5, 2, Route26FisherBattleText, Route26FisherEndBattleText, Route26FisherAfterBattleText
	db -1 ; end

Route26CoolTrainerM1Text:
	text_asm
	ld hl, Route26TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route26CoolTrainerM1BattleText:
	text_far _Route26CoolTrainerM1BattleText
	text_end

Route26CoolTrainerM1EndBattleText:
	text_far _Route26CoolTrainerM1EndBattleText
	text_end

Route26CoolTrainerM1AfterBattleText:
	text_far _Route26CoolTrainerM1AfterBattleText
	text_end

Route26CoolTrainerM2Text:
	text_asm
	ld hl, Route26TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route26CoolTrainerM2BattleText:
	text_far _Route26CoolTrainerM2BattleText
	text_end

Route26CoolTrainerM2EndBattleText:
	text_far _Route26CoolTrainerM2EndBattleText
	text_end

Route26CoolTrainerM2AfterBattleText:
	text_far _Route26CoolTrainerM2AfterBattleText
	text_end

Route26CoolTrainerF1Text:
	text_asm
	ld hl, Route26TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route26CoolTrainerF1BattleText:
	text_far _Route26CoolTrainerF1BattleText
	text_end

Route26CoolTrainerF1EndBattleText:
	text_far _Route26CoolTrainerF1EndBattleText
	text_end

Route26CoolTrainerF1AfterBattleText:
	text_far _Route26CoolTrainerF1AfterBattleText
	text_end

Route26CoolTrainerF2Text:
	text_asm
	ld hl, Route26TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route26CoolTrainerF2BattleText:
	text_far _Route26CoolTrainerF2BattleText
	text_end

Route26CoolTrainerF2EndBattleText:
	text_far _Route26CoolTrainerF2EndBattleText
	text_end

Route26CoolTrainerF2AfterBattleText:
	text_far _Route26CoolTrainerF2AfterBattleText
	text_end

Route26PsychicText:
	text_asm
	ld hl, Route26TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route26PsychicBattleText:
	text_far _Route26PsychicBattleText
	text_end

Route26PsychicEndBattleText:
	text_far _Route26PsychicEndBattleText
	text_end

Route26PsychicAfterBattleText:
	text_far _Route26PsychicAfterBattleText
	text_end

Route26FisherText:
	text_asm
	ld hl, Route26TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route26FisherBattleText:
	text_far _Route26FisherBattleText
	text_end

Route26FisherEndBattleText:
	text_far _Route26FisherEndBattleText
	text_end

Route26FisherAfterBattleText:
	text_far _Route26FisherAfterBattleText
	text_end

Route26SignText:
	text_far _Route26SignText
	text_end
