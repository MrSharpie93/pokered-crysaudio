PlayBattleMusic::
	xor a
	ld [wMusicFade], a
	ld [wLowHealthAlarm], a
	dec a ; SFX_STOP_ALL_MUSIC
;	ld [wNewSoundID], a
	call PlaySound
	call DelayFrame
	ld c, 0 ; BANK(Music_GymLeaderBattle)
	ld a, [wGymLeaderNo]
	and a
	jr z, .notGymLeaderBattle
	ld a, MUSIC_GYM_LEADER_BATTLE
	jr .playSong
.notGymLeaderBattle
	ld a, [wIsTrainerBattle] ; ~$~CHANGED: Trainers are not Pokemon.~$~
	and a
	jr z, .wildBattle
	ld a, [wCurOpponent]
	cp OPP_RIVAL3
	jr z, .redBattle
	cp OPP_RIVAL2
	jr z, .blueBattle
	cp OPP_RIVAL1
	jr z, .greenBattle
	cp OPP_ROCKET
	jr z, .rocketBattle
	cp OPP_JESSIE_JAMES
	jr z, .rocketBattle
	cp OPP_GIOVANNI
	jr z, .rocketBattle
.normalTrainerBattle
	ld a, MUSIC_TRAINER_BATTLE
	jr .playSong
.redBattle
	ld a, MUSIC_RED_BATTLE
	jr .playSong
.blueBattle
	ld a, MUSIC_FINAL_BATTLE
	jr .playSong
.greenBattle
	ld a, MUSIC_GREEN_BATTLE
	jr .playSong
.rocketBattle
	ld a, MUSIC_ROCKET_BATTLE
	jr .playSong
.wildBattle
	ld a, MUSIC_WILD_BATTLE
.playSong
	jp PlayMusic
