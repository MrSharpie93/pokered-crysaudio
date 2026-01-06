_Route4CooltrainerF1Text::
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

_Route4CooltrainerF2BattleText::
	text "I came to get my"
	line "mushroom #MON!"
	done

_Route4CooltrainerF2EndBattleText::
	text "Oh! My cute"
	line "mushroom #MON!"
	prompt

_Route4CooltrainerF2AfterBattleText::
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

_Route4MtMoonSignText::
	text "MT.MOON"
	line "Tunnel Entrance"
	done

_Route4SignText::
	text "ROUTE 4"
	line "MT.MOON -"
	cont "CERULEAN CITY"
	
	para "…"
	
	para "There's something"
	line "scribbled on the"
	cont "sign:"
	
	para "“BLUE was"
	line "here! RED"
	cont "is a loser!”"
	done
	
_Route4HikerGiveEscapeRopeText::
	text "Heading into"
	line "MT.MOON?"
	
	para "Cave exploration"
	line "can be dangerous"
	cont "if you're not"
	cont "prepared."
	
	para "Here, take this."
	prompt
	
_Route4HikerGotEscapeRopeText::
	text "If you ever find"
	line "yourself lost in"
	cont "any cave, just"
	cont "use that ESCAPE"
	cont "ROPE, and you'll"
	cont "be out in a jiffy!"
	
	para "It's very durable,"
	line "so you can reuse"
	cont "it as much as you"
	cont "need."
	done
	
_Route4HikerBagFullText::
	text "Seems you're"
	line "overprepared."
	done
	
_ReceivedEscapeRopeText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end
	
_MegaPunchGuyText::
	text "A punch of brutal"
	line "ferocity!"

	para "Packed with"
	line "destructive power!"
	
	para "When the chips"
	line "are down, MEGA"
	cont "PUNCH is the"
	cont "ultimate move!"
	
	para "I know you agree,"
	line "so consider this:"
	prompt
	
_MegaKickGuyText::
	text "A kick of brutal"
	line "ferocity!"

	para "Packed with"
	line "destructive power!"
	
	para "When you get right"
	line "down to it, MEGA"
	cont "KICK is the"
	cont "ultimate move!"
	
	para "I know you agree,"
	line "so consider this:"
	prompt
