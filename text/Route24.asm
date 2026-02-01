_Route24CooltrainerM1YouBeatOurContestText::
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!@"
	text_end

_Route24CooltrainerM1YouJustEarnedAPrizeText::
	text_start

	para "You just earned a"
	line "fabulous prize!"
	prompt

_Route24CooltrainerM1ReceivedNuggetText::
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route24CooltrainerM1NoRoomText::
	text "You don't have"
	line "any room!"
	done

_Route24CooltrainerM1JoinTeamRocketText::
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"
	done
	
_RefusedRocketText::
	text "Are you sure?"

	para "Come on, please?"

	para "I'm begging you"
	line "to join!"

	para "OK, what if I"
	line "beat you up?"

	para "Does that scare"
	line "you any?"
	done
	
_AcceptedRocketText::
	text "Really? Oh thank"
	line "goodness!"
	
	para "We really need"
	line "all the help we"
	cont "can get right now."
	
	para "Some terrifying"
	line "young trainer in"
	cont "a cap is tearing"
	cont "through our whole"
	cont "operation and…"
	
	para "Wait a second…"
	
	para "I know what you're"
	line "up to, and I won't"
	cont "let you sneak in"
	cont "and destroy us"
	cont "from the inside."
	
	para "Have at you!"
	done

_Route24CooltrainerM1DefeatedText::
	text "Arrgh!"
	line "You are good!"
	prompt

_Route24CooltrainerM1YouCouldBecomeATopLeaderText::
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done

_Route24CooltrainerM2BattleText::
	text "I saw your feat"
	line "from the grass!"
	done
