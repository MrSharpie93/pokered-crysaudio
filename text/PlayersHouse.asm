_PlayersHouseMomsLetterText::
	text "It's a letter"
	line "from MOM:"

	para "“Hi sweetie!"
	line "Good luck on your"
	cont "trip to KANTO!"
	
	para "I'm going to be"
	line "away on business"
	cont "for a while, but I"
	cont "left some things"
	cont "to take with you"
	cont "when you leave."
	
	para "Love you, and see"
	line "you soon! --MOM”"
	prompt
	
_PlayersHouseGotSuppliesText::
	text "<PLAYER> packed"
	line "up the supplies!@"
	text_end

_PlayersHouseTVBigLebowskiMovieText::
	text "There's a movie"
	line "on TV. Some dude"
	cont "is complaining"
	cont "about a rug."

	para "I should get"
	line "going soon…"
	done
	
_PlayersHousePCText::
	text "It's your old"
	line "clunker PC."
IF DEF(_DEBUG)
	para "boolProp setEvent"
	line "BECAME-CHAMPION"
ELSE
	para "It can't do much"
	line "besides play"
	cont "SOLITAIRE…"
ENDC
	done
	
_ChangeAppearanceText::
	text "It's a mirror."
	
	para "Change your"
	line "appearance?"
	done

_AppearanceChangedText::
	text "Just a second…"
	done

_AppearanceKeptText::
	text "Maybe later."
	done
