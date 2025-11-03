_PewterGymBrockPostBattleAdviceText:: ; ~$~CHANGED: Yellow version of speech.~$~
	text "There are all"
	line "kinds of trainers"
	cont "in the world!"

	para "Some raise #MON"
	line "for fights. Some"
	cont "see them as pets."

	para "I'm in training to"
	line "become a #MON"
	cont "breeder."

	para "If you take your"
	line "#MON training"
	cont "seriously, go"
	cont "visit the GYM in"
	cont "CERULEAN and test"
	cont "your abilities!"
	done

_PewterGymBrockWaitTakeThisText::
	text "Wait! Take this"
	line "with you!"
	done

_PewterGymReceivedTM34Text::
	text "<PLAYER> received"
	line "TM39!@"
	text_end

_TM34ExplanationText:: ; ~$~CHANGED: Updated Brock's speech about TMs to reflect them being infinite-use.~$~
	text_start

	para "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#MON!"

	para "TMs can be used"
	line "repeatedly, so"
	cont "use them however"
	cont "you like!"

	para "TM39 contains"
	line "ROCK TOMB!"

	para "It hurls boulders"
	line "at the foe and"
	cont "lowers its SPEED."
	done

_PewterGymTM34NoRoomText::
	text "You don't have"
	line "room for this!"
	done

_PewterGymBrockReceivedBoulderBadgeText::
	text "I took"
	line "you for granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"

	para "<PLAYER> received"
	line "the BOULDERBADGE!@"
	text_end
	
_PewterGymBrockVictoryText::
	text "What's"
	line "wrong? Couldn't"
	cont "get past my rock-"
	cont "solid defense?"
	prompt

_PewterGymBrockBoulderBadgeInfoText::
	text_start

	para "That's an official"
	line "#MON LEAGUE"
	cont "BADGE!"

;	para "Its bearer's" ; ~$~REMOVED: Cut this line out for now. Maybe rewrite it later.~$~
;	line "#MON become"
;	cont "more powerful!"

	para "The technique"
	line "FLASH can now be"
	cont "used any time!"
	prompt

_PewterGymCooltrainerMBattleText::
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

_PewterGymCooltrainerMEndBattleText::
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	prompt

_PewterGymCooltrainerMAfterBattleText::
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

_PewterGymGuidePreAdviceText::
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

_PewterGymGuideBeginAdviceText::
	text "All right! Let's"
	line "get happening!"
	prompt

_PewterGymGuideAdviceText::
	text "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

_PewterGymGuideFreeServiceText::
	text "It's a free"
	line "service! Let's"
	cont "get happening!"
	prompt

_PewterGymGuidePostBattleText::
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done
	
_BrockRematchPreBattleText::
	text "It's good to see"
	line "you again."
	
	para "Allow me the"
	line "privilege to face"
	cont "you once more,"
	cont "and show you the"
	cont "true rock-hard"
	cont "strength of my"
	cont "#MON!"
	done
	
_BrockRematchDefeatedText::
	text "I knew"
	line "you were strong,"
	cont "but this…"
	prompt
