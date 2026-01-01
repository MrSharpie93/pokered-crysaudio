_DexCompletionText::
	text "#DEX comp-"
	line "letion is:"

	para "@"
	text_decimal hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	text_decimal hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	prompt

_DexRatingText_Own0To9::
	text "You still have"
	line "lots to do."
	cont "Look for #MON"
	cont "in grassy areas!"
	done

_DexRatingText_Own10To19::
	text "Good. I see you"
	line "understand how to"
	cont "use # BALLS."
	done

_DexRatingText_Own20To34::
	text "You still need"
	line "more #MON!"
	cont "Try to catch"
	cont "other species!"
	done

_DexRatingText_Own35To49::
	text "You're getting"
	line "good at this."

	para "But you have a"
	line "long way to go."
	done

_DexRatingText_Own50To64::
	text "You need to fill"
	line "up the #DEX."

	para "Catch different"
	line "kinds of #MON!"
	done

_DexRatingText_Own65To79::
	text "You're trying--I"
	line "can see that."

	para "Your #DEX is"
	line "coming together."
	done

_DexRatingText_Own80To94:: ; I'm leaving this with the typo, it's hilarious.~$~
	text "Ho! This is geting"
	line "even better!"
	done

_DexRatingText_Own95To109::
	text "To evolve, some"
	line "#MON grow,"
	cont "others use STONEs"
	cont "or other items."
	done

_DexRatingText_Own110To124::
	text "Have you gotten a"
	line "fishing ROD? You"
	cont "can catch #MON"
	cont "by fishing."
	done

_DexRatingText_Own125To139::
	text "Excellent! You"
	line "seem to like col-"
	cont "lecting things!"
	done

_DexRatingText_Own140To154::
	text "Your #DEX is"
	line "filling up. Keep"
	cont "up the good work!"
	done

_DexRatingText_Own155To169::
	text "You even have the"
	line "evolved forms of"
	cont "#MON! Super!"
	done

_DexRatingText_Own170To184::
	text "Excellent! Trade"
	line "with friends to"
	cont "get some more!"
	done

_DexRatingText_Own185To199::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_DexRatingText_Own200To214::
	text "Wow! You've hit"
	line "200! Your #DEX"
	cont "is looking great!"
	done

_DexRatingText_Own215To229::
	text "You've found so"
	line "many #MON!"

	para "You've really"
	line "helped my studies!"
	done
	
_DexRatingText_Own230To247::
	text "Magnificent! You"
	line "could become a"
	cont "#MON professor"
	cont "right now!"
	done
	
_DexRatingText_Complete::
	text "Whoa! A perfect"
	line "#DEX! I've"
	cont "dreamt about this!"
	
	para "Congratulations!"
	done
