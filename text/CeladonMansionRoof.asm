_CurseStoryText::
	text "Let me recount a"
	line "terrifying tale…"
	
	para "Once upon a time,"
	line "there was a little"
	cont "boy who was given"
	cont "a new BICYCLE…"

	para "He wanted to try"
	line "it right away…"

	para "He was having so"
	line "much fun that he"
	cont "didn't notice the"
	cont "sun had set…"

	para "While riding home"
	line "in the pitch-black"
	cont "night, the bike"
	cont "suddenly slowed!"

	para "The pedals became"
	line "heavy!"

	para "When he stopped"
	line "pedaling, the bike"
	cont "began slipping"
	cont "backwards!"

	para "It was as if the"
	line "bike were cursed"
	cont "and trying to drag"
	cont "him into oblivion!"

	para "…"

	para "…"

	para "SHRIEEEEK!"

	para "The boy had been"
	line "riding uphill on"
	cont "CYCLING ROAD!"

	para "…"
	line "Ba-dum ba-dum!"

	para "For listening so"
	line "patiently, you may"
	cont "take this--TM04!"
	prompt
	
_ReceivedTM04Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM04ExplanationText::
	text "TM04 is CURSE."

	para "It's a terrifying"
	line "move that slowly"
	cont "whittles down the"
	cont "victim's HP."
	
	para "Or does it…?"
	done

_TM04NoRoomText::
	text "No room in your"
	line "bag? Now that's"
	cont "scary!"
	done

_CeladonMansionRoofHouseSignText::
	text "I KNOW EVERYTHING!"
	done
	
_CeladonMansionRoofGraffitiText::
	text "There's graffiti"
	line "on the wall…"
	
	para "“OAK is a--"
	
	para "Well, you can't"
	line "read that word"
	cont "aloud in a kid's"
	cont "game…"
	done
