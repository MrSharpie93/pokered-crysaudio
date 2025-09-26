_BluesHouseDaisyRivalAtLabText::
	text "Oh, hello!"
	line "Have we met? My"
	cont "name is DAISY."
	
	para "You are looking"
	line "for my Grandpa?"
	
	para "His lab is just"
	line "a short walk from"
	cont "here."
	done

_BluesHouseDaisyOfferMapText::
	text "Grandpa asked you"
	line "for help, too?"
	cont "Here, please take"
	cont "this with you!"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_BluesHouseDaisyUseMapText::
	text "That TEA should"
	line "keep you from"
	cont "getting thirsty"
	cont "while you are out."
	done

_BluesHouseDaisyWalkingText::
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

_BluesHouseTownMapText::
	text "It's a big map!"
	line "This is useful!"
	
	para "But you already"
	line "have your map"
	cont "from home."
	
	para "You did remember"
	line "it, didn't you?"
	done
