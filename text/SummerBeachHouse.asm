_SurfinDudeGiveSurfboardText::
	text "Whoa!"

	para "Your #MON may"
	line "know how to SURF,"
	cont "but do you?"

	para "Take this, and"
	line "catch some gnarly"
	cont "waves!"
	prompt

_SurfinDudeReceivedSurfboardText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_SurfinDudeGotSurfboardText::
	text "Sup, brah?"
	
	para "How're the waves?"
	done

_SurfinDudeBagFullText::
	text "No space?"
	line "Bummer, man…"
	done

_SummerBeachHousePikachuText::
	text "PIKACHU: Pikaa"
	done

_SummerBeachHousePoster1Text::
	text "30 years of waves!"
	line "SURFIN' DUDE"
	done

_SummerBeachHousePoster2Text::
	text "SUMMER BEACH HOUSE"
	line "#MON welcome!"
	done

_SummerBeachHousePoster3Text::
	text "The sea unites"
	line "all in surfdom!"
	done

_SummerBeachHousePrinterText::
	text "Tons of books"
	line "about surfing!"

	para "And a single book"
	line "about printer"
	cont "maintenance?"
	done
