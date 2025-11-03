_CeladonMartRoofLittleGirlGiveHerWhichDrinkText::
	text "Give her which"
	line "drink?"
	done

_CeladonMartRoofLittleGirlYayFreshWaterText::
	text "Yay!"

	para "FRESH WATER!"

	para "Thank you!"

	para "You can have this"
	line "from me!@"
	text_end

_CeladonMartRoofLittleGirlReceivedTM13Text::
_CeladonMartRoofLittleGirlReceivedTM48Text::
_CeladonMartRoofLittleGirlReceivedTM49Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_CeladonMartRoofLittleGirlTM13ExplanationText::
	text_start

	para "@"
	text_ram wStringBuffer
	text " contains"
	line "REFLECT!"

	para "It weakens the"
	line "power of the foe's"
	cont "physical attacks!@"
	text_end

_CeladonMartRoofLittleGirlYaySodaPopText::
	text "Yay!"

	para "SODA POP!"

	para "Thank you!"

	para "You can have this"
	line "from me!@"
	text_end

;_CeladonMartRoofLittleGirlReceivedTM48Text::
;	text "<PLAYER> received"
;	line "@"
;	text_ram wStringBuffer
;	text "!@"
;	text_end

_CeladonMartRoofLittleGirlTM48ExplanationText::
	text_start

	para "@"
	text_ram wStringBuffer
	text " contains"
	line "LIGHT SCREEN!"

	para "It weakens the"
	line "power of the foe's"
	cont "special attacks!@"
	text_end

_CeladonMartRoofLittleGirlYayLemonadeText::
	text "Yay!"

	para "LEMONADE!"

	para "Thank you!"

	para "You can have this"
	line "from me!@"
	text_end

;_CeladonMartRoofLittleGirlReceivedTM49Text::
;	text "<PLAYER> received"
;	line "TM49!@" ; Why hardcoded???~$~
;	text_end

_CeladonMartRoofLittleGirlTM49ExplanationText::
	text_start

	para "TM49 contains"
	line "SAFEGUARD!"
	
	para "It prevents status"
	line "problems for your"
	cont "#MON!@"
	text_end

_CeladonMartRoofLittleGirlNoRoomText::
	text "How many drinks"
	line "do you have?@"
	text_end

_CeladonMartRoofLittleGirlImNotThirstyText::
	text "No thank you!"
	line "I'm not thirsty"
	cont "after all!@"
	text_end

_CeladonMartRoofSuperNerdText::
	text "My sister is a"
	line "trainer, believe"
	cont "it or not."

	para "But, she's so"
	line "immature, she"
	cont "drives me nuts!"
	done

_CeladonMartRoofLittleGirlImThirstyText::
	text "I'm thirsty!"
	line "I want something"
	cont "to drink!"
	done

_CeladonMartRoofLittleGirlGiveHerADrinkText::
	text "I'm thirsty!"
	line "I want something"
	cont "to drink!"

	para "Give her a drink?"
	done

_CeladonMartRoofCurrentFloorSignText::
	text "ROOFTOP SQUARE:"
	line "VENDING MACHINES"
	done

_VendingMachineText1::
	text "A vending machine!"
	line "Here's the menu!"
	prompt

_VendingMachineText4::
	text "Oops, not enough"
	line "money!"
	done

_VendingMachineText5::
	text_ram wStringBuffer
	text_start
	line "popped out!"
	done

_VendingMachineText6::
	text "There's no more"
	line "room for stuff!"
	done

_VendingMachineText7::
	text "Not thirsty!"
	done
