;_OaksLabRivalGrampsIsntAroundText::
;	text "<RIVAL>: Yo"
;	line "<PLAYER>! Gramps"
;	cont "isn't around!"
;	done

;_OaksLabRivalGoAheadAndChooseText::
;	text "<RIVAL>: Heh, I"
;	line "don't need to be"
;	cont "greedy like you!"
;
;	para "Go ahead and"
;	line "choose, <PLAYER>!"
;	done

;_OaksLabRivalMyPokemonLooksStrongerText::
;	text "<RIVAL>: My"
;	line "#MON looks a"
;	cont "lot stronger."
;	done

;_OaksLabThoseArePokeBallsText::
;	text "Those are #"
;	line "BALLs. They"
;	cont "contain #MON!"
;	done

_OaksLabYouWantCharmanderText::
	text "You'll take the"
	line "FIRE #MON,"
	cont "CHARMANDER?"
	done

_OaksLabYouWantSquirtleText::
	text "You'll take the"
	line "WATER #MON,"
	cont "SQUIRTLE?"
	done

_OaksLabYouWantBulbasaurText::
	text "You'll take the"
	line "GRASS #MON,"
	cont "BULBASAUR?"
	done

_OaksLabMonEnergeticText::
	text "This #MON is"
	line "really energetic!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "a @"
	text_ram wNameBuffer
	text "!@"
	text_end
	
_OaksLabNoOtherChoiceText::
	text "Erm… There aren't"
	line "any other options…"
	prompt

_OaksLabThoseArePokeBallsText::
_OaksLabLastMonText::
	text "Oh no, what'd I"
	line "screw up now?"
	done

_OaksLabOak1WhichPokemonDoYouWantText::
	text "OAK: Sorry again,"
	line "<PLAYER>, but this"
	cont "is all that's left."
	done

_OaksLabOak1YourPokemonCanFightText::
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

_OaksLabOak1RaiseYourYoungPokemonText::
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

_OaksLabOak1DeliverParcelText::
	text "OAK: Oh, <PLAYER>!"
	line "Back so soon?"

	para "How is your"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL.@"
	text_end

_OaksLabOak1ParcelThanksText::
	text_start
	para "Ah! It's my order"
	line "from the #MON"
	cont "RESEARCHER CLUB!"
	cont "Thank you!"
	prompt

_OaksLabOak1PokemonAroundTheWorldText::
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

_OaksLabOak1ReceivedPokeballsText::
	text "OAK: Wait, didn't"
	line "they already send"
	cont "this month's"
	cont "supply?"

	para "There must have"
	line "been a mistake…"
	
	para "Here <PLAYER>!"
	line "Take some of these"
	cont "extra # BALLs"
	cont "off my hands!"

	para "<PLAYER> got 10"
	line "# BALLs!@"
	text_end

_OaksLabGivePokeballsExplanationText::
	text_start
	para "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and try"
	cont "to catch it!" ; ~$~FIXED~$~

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

_OaksLabOak1ComeSeeMeSometimesText::
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

_OaksLabOak1HowIsYourPokedexComingText::
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

_OaksLabPokedexText::
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

;_OaksLabOak2Text::
;	text "?"
;	done

_OaksLabGirlText::
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

;_OaksLabRivalFedUpWithWaitingText::
;	text "<RIVAL>: Gramps!"
;	line "I'm fed up with"
;	cont "waiting!"
;	done

_OaksLabOakChooseMonText::
	text "OAK: Oh?"
	line "Who are you?"
IF !DEF(_DEBUG)
	para "<PLAYER>, eh?"
	line "And you say you're"
	cont "from JOHTO?"
	
	para "Well, I wasn't"
	line "expecting any more"
	cont "visitors today."
	cont "What brings you"
	cont "all the way here?"

	para "Ah, you're here"
	line "for a #MON?"

	para "I do admire your"
	line "drive to learn"
	cont "more about the"
	cont "world of #MON…"

	para "There is one"
	line "problem, though…"

	para "My grandson and"
	line "his friend have"
	cont "already been here"
	cont "and claimed two,"
	cont "which leaves just"
	cont "the one."

	para "I do apologize,"
	line "had I known others"
	cont "might come, I'd"
	cont "have prepared a"
	cont "few more."
ENDC
	done

;_OaksLabRivalWhatAboutMeText::
;	text "<RIVAL>: Hey!"
;	line "Gramps! What"
;	cont "about me?"
;	done
;
;_OaksLabOakBePatientText::
;	text "OAK: Be patient!"
;	line "<RIVAL>, you can"
;	cont "have one too!"
;	done

_OaksLabOakDontGoAwayYetText::
	text "OAK: Hmm? Did you"
	line "change your mind?"
	done

;_OaksLabRivalIllTakeThisOneText::
;	text "<RIVAL>: I'll take"
;	line "this one, then!"
;	done
;
;_OaksLabRivalReceivedMonText::
;	text "<RIVAL> received"
;	line "a @"
;	text_ram wNameBuffer
;	text "!@"
;	text_end

_OaksLabRivalIllTakeYouOnText::
	text "OAK: Wait,"
	line "<PLAYER>!"
IF !DEF(_DEBUG)
	para "You have a #MON"
	line "now, but are you"
	cont "familiar with"
	cont "battling?"

	para "I wish my grandson"
	line "hadn't left yet,"
	cont "he's much more"
	cont "enthusiastic about"
	cont "#MON battles."
	
	para "I suppose I can"
	line "teach you myself,"
	cont "then."
ENDC
	done

_OaksLabRivalIPickedTheWrongPokemonText::
	text "I see,"
	line "you have natural"
	cont "talent for this!"
	prompt

_OaksLabRivalAmIGreatOrWhatText::
	text "Oh"
	line "dear, I guess I've"
	cont "still got it…"
	prompt

_OaksLabRivalSmellYouLaterText::
	text "OAK: Good effort,"
	line "<PLAYER>! Battling"
	cont "other #MON will"
	cont "help raise yours!"
	done

;_OaksLabRivalGrampsText::
;	text "<RIVAL>: Gramps!"
;	done
;
;_OaksLabRivalWhatDidYouCallMeForText::
;	text "<RIVAL>: What did"
;	line "you call me for?"
;	done

_OaksLabOakIHaveARequestText::
	text "OAK: Oh right! I"
	line "have a request,"
	cont "if you would."
	done

_OaksLabOakMyInventionPokedexText::
	text "I'm working on a"
	line "complete guide to"
	cont "all the #MON in"
	cont "the world."
	
	para "I've invented a"
	line "device called the"
	cont "#DEX to help."

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

_OaksLabOakGotPokedexText::
	text "OAK: <PLAYER>,"
	line "please take"
	cont "this with you!"

	para "<PLAYER> got"
	line "#DEX from OAK!@"
	text_end

_OaksLabOakThatWasMyDreamText::
	text "This will be an"
	line "arduous task, so"
	cont "I'll need all the"
	cont "help I can get."

	para "But don't worry,"
	line "I will reward you"
	cont "for your help!"
	
	para "Keep an eye out"
	line "for my AIDES,"
	cont "they will track"
	cont "your progress and"
	cont "assist you along"
	cont "the way."

	para "Now get moving!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

;_OaksLabRivalLeaveItAllToMeText::
;	text "<RIVAL>: Alright"
;	line "Gramps! Leave it"
;	cont "all to me!"
;
;	para "<PLAYER>, I hate to"
;	line "say it, but I"
;	cont "don't need you!"
;
;	para "I know! I'll"
;	line "borrow a TOWN MAP"
;	cont "from my sis!"
;
;	para "I'll tell her not"
;	line "to lend you one,"
;	cont "<PLAYER>! Hahaha!"
;	done

_OaksLabScientistText::
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done
	
_ActivateEXPShareText::
	text "Hi, would you like"
	line "to enable sharing"
	cont "battle EXP among"
	cont "your party?"
	done
	
_ItIsDoneText::
	text "Done! Let me know"
	line "if you want to"
	cont "change it back."
	done
	
_NevermindThenText::
	text "Nevermind, then."
	done
	
_DeactivateEXPShareText::
	text "Hi, would you like"
	line "to disable sharing"
	cont "battle EXP among"
	cont "your party?"
	done
