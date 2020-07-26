_CeruleanGymFirstFightIntroText::
	text "Welcome, <PLAYER>!"
	
	para "Think I'm gonna"
	line "go easy on you,"
	cont "just because you"
	cont "helped me out?"
	
	para "Not a chance!"
	line "You gotta work"
	cont "hard if you want"
	cont "the results to"
	cont "mean anything!"
	
	para "I train every"
	line "day- both my body"
	cont "and my #MON!"
	
	para "I pick only the"
	line "fastest #MON!"
	cont "Gives me a goal"
	cont "to chase after!"
	
	para "You're free to"
	line "work out, but"
	cont "I get the feeling"
	cont "you'd rather have"
	cont "a #MON battle!"
	
	prompt

_CeruleanGymHowManyBadgesText::
	text "So, how many"
	line "other GYMs have"
	cont "you trained at?"
	cont "Let's see those"
	cont "badges!  ..."
	
	para "You've got @"
	TX_NUM wEffectiveNumBadgesOwned, 1, 1
	text "?"
	line "Cool! I can dig"
	cont "it! I love to"
	cont "see ambition!"
	
	para "Then I'll use... "
	line "these #MON!"
		
	para "Let's get right"
	line "to it. Think you"
	cont "can keep up?"
	
	para "I'm excited to"
	line "see if you break"
	cont "a sweat!"
	
	done

_CeruleanGymHowManyBadgesText0::
	text "So, how many"
	line "other GYMs have"
	cont "you trained at?"
	cont "Let's see those"
	cont "badges!  ..."
	
	para "None yet?!"
	line "All RIGHT!"
	cont "It's never too"
	cont "late to start!"
	
	para "Let's get right"
	line "to it. Think you"
	cont "can keep up?"
	
	para "I'm excited to"
	line "see if you break"
	cont "a sweat!"

	done

_CeruleanGymWinText::
	text "Oh dang!"
	line "I lost?!"
	
	para "I sure wasn't"
	line "expecting to be"
	cont "the one on the"
	cont "floor!"

	para "Good hustle!"
	line "You've earned the"
	cont "JET BADGE!"
	
	done

_CeruleanGymRematchText::
	text "Hey, I know you!"
	line "<PLAYER>! Welcome"
	cont "back!"
	
	para "Gonna work out"
	line "for a bit?"
	
	para "... A rematch?!"
	line "Dang, already?"
	
	para "Fine! I've been"
	line "working on some"
	cont "new strats."
	
	prompt
	
	
_CeruleanGymCantRematchYetText::
	text "Oh hey <PLAYER>,"
	line "you're already"
	cont "ready to fight"
	cont "again?!"
	
	para "Jeez, even I"
	line "need a breather!"
	
	text "You're something"
	line "else! Come back"
	cont "a little later,"
	cont "will ya?"
	
	text "I'm still cooling"
	line "off!"
	
	done 

_CeruleanGymRematchWinText::
	text "No way!"
	
	para "I just can't keep"
	line "up with you!"
	
	para "Good battle!@@"

_CeruleanGymAfterVictoryText::
	text "PHEW!"
	
	para "You've shown me"
	line "you know your"
	cont "way around a"
	cont "#MON battle,"
	cont "in more ways"
	cont "than one!"
	
	para "I'm proud to"
	line "bestow the JET"
	cont "BADGE to anyone"
	cont "who clearly puts"
	cont "in the hours!"
	
	para "Take these, too!"
	
	para "<PLAYER> got 3"
	line "ULTRA BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
	para "They're like a"
	line "#BALL..."
	cont "but better!"
	
	para "Kinda like how"
	line "you're a better"
	cont "trainer today"
	cont "than you were"
	cont "yesterday!"
	
	para "You reached some"
	line "high elevation"
	cont "today, but guess"
	cont "what?!"
	
	para "Tomorrow, you'll"
	line "be even higher!"
	cont "And the next"
	cont "day! And the"
	cont "next!"
	
	para "I want to see"
	line "how high you can"
	cont "go, <PLAYER>."
	cont "Come back and"
	cont "rematch me"
	cont "someday!"
	
	para "There won't be"
	line "a badge I can"
	cont "give you, but"
	cont "the journey is"
	cont "its own reward!"
	
	done

_CeruleanGymAfterRematchText::
	text "I don't know how"
	line "you keep reaching"
	cont "new heights,"
	cont "<PLAYER>!"
	
	para "Surely you're in"
	line "space now!"
	
	para "Thanks for coming"
	line "down for a bit"
	cont "to humor me."
	cont "Have some of"
	cont "these!"
	
	para "<PLAYER> got 3"
	line "GREAT BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
		
	para "Those are GREAT"
	line "BALLs, courtesy"
	cont "of me!"
	
	para "Catch something"
	line "cool with 'em!"
	
	done
	

_CeruleanGymText_5c4c1::
	text ""

	para "Take it! You"
	line "sure earned it!"
	prompt

_CeruleanGymBattleText1::
	text "uu battle1"
	done

_CeruleanGymEndBattleText1::
	text "uu endbattle1"
	prompt

_CeruleanGymAfterBattleText1::
	text "uu afterbattle1"
	done

_CeruleanGymWelcomeHere::
	text "Welcome to the"
	line "CERULEAN GYM."
	
	para "LEADER TOBIAS is"
	line "awaiting any"
	cont "challengers."
	cont "Good luck!"
	done

_CeruleanGymWelcomeEmpty::
	text "Welcome to the"
	line "Cerulean GYM."
	
	para "LEADER LARS is"
	line "not presently"
	cont "available."
	
	para "He went for a"
	line "flight this"
	cont "morning, but"
	cont "hasn't returned"
	cont "yet."
	
	para "He is usually"
	line "back by now, but"
	cont "something must"
	cont "have come up."
	
	para "Sorry!"
	
	done

