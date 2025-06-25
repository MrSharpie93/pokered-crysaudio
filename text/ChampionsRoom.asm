_ChampionsRoomRivalIntroText::
	text "RED: ..."

	para "...?"

	para "..."

	para "...!"

	para "!!"
	done

_RivalDefeatedText::
	text "!!!"

	para "..."

	para "......"
	prompt

_RivalVictoryText::
	text "..."
	prompt

_ChampionsRoomRivalAfterBattleText::
	text "......"
	done

_ChampionsRoomOakText::
	text "OAK: <PLAYER>!"
	done

_ChampionsRoomOakCongratulatesPlayerText::
	text "OAK: So, you won!"
	line "Congratulations!"
	cont "You're the new"
	cont "#MON LEAGUE"
	cont "champion!"

	para "You've grown up so"
	line "much since you"
	cont "first left with"
	cont "@"
	text_ram wNameBuffer
	text "!"

	para "<PLAYER>, you have"
	line "come of age!"
	done

_ChampionsRoomOakDisappointedWithRivalText::
	text "OAK: <RIVAL>! I'm"
	line "disappointed!"

	para "I came when I"
	line "heard you beat"
	cont "the ELITE FOUR!"

	para "But, when I got"
	line "here, you had"
	cont "already lost!"

	para "<RIVAL>! Do you"
	line "understand why"
	cont "you lost?"

	para "You have forgotten"
	line "to treat your"
	cont "#MON with"
	cont "trust and love!"

	para "Without them, you"
	line "will never become"
	cont "a champ again!"
	done

_ChampionsRoomOakComeWithMeText::
	text "OAK: <PLAYER>!"

	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>!"
	line "Come with me!"
	done
