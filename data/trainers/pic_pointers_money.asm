MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5, TrainerPicAndMoneyPointers
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money YoungsterPic,    1200
	pic_money BugCatcherPic,    800
	pic_money LassPic,         1200
	pic_money SailorPic,       3000
	pic_money JrTrainerMPic,   2000
	pic_money JrTrainerFPic,   2000
	pic_money PokemaniacPic,   6000
	pic_money SuperNerdPic,    3500
	pic_money HikerPic,        3000
	pic_money BikerPic,        3000
	pic_money BurglarPic,      9000
	pic_money EngineerPic,     6000
	pic_money JessieJamesPic,  3500
	pic_money FisherPic,       2500
	pic_money SwimmerPic,       800
	pic_money CueBallPic,      3000
	pic_money GamblerPic,      7700
	pic_money BeautyPic,       7000
	pic_money PsychicPic,      3000
	pic_money RockerPic,       2000
	pic_money JugglerPic,      3000
	pic_money TamerPic,        5000
	pic_money BirdKeeperPic,   3000
	pic_money BlackbeltPic,    3000
	pic_money Rival1Pic,       5000
	pic_money ProfOakPic,      5000
	pic_money ChiefPic,        9000
	pic_money ScientistPic,    5000
	pic_money GiovanniPic,    12000
	pic_money RocketPic,       3000
	pic_money CooltrainerMPic, 5500
	pic_money CooltrainerFPic, 5500
	pic_money BrunoPic,       12000
	pic_money BrockPic,        9900
	pic_money MistyPic,        9900
	pic_money LtSurgePic,      9900
	pic_money ErikaPic,        9900
	pic_money KogaPic,         9900
	pic_money BlainePic,       9900
	pic_money SabrinaPic,      9900
	pic_money GentlemanPic,    7000
	pic_money Rival2Pic,      12000
	pic_money Rival3Pic,      12000
	pic_money LoreleiPic,     12000
	pic_money ChannelerPic,    2000
	pic_money AgathaPic,      12000
	pic_money LancePic,       12000
; ~$~ADDED: New trainers.~$~	
	pic_money SwimmerFPic,      800
	pic_money OfficerPic,      3000
	pic_money GeorgePic,       9900
	pic_money ImakuniPic,      5500
	pic_money ZinniaPic,      12000
	assert_table_length NUM_TRAINERS