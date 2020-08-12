_SaffronGymFirstFightIntroText::
	text "Hey <PLAYER>!"
	
	para "So you've met"
	line "the citizens!"
	cont "Great!"

	para "I represent"
	line "them, and so"
	cont "they represent"
	cont "me!"
	
	para "SAFFRON is built"
	line "on the idea that"
	cont "working together,"
	cont "humans and"
	cont "#MON can do"
	cont "anything we set"
	cont "our minds to!"
	
	para "And now, we are"
	line "the most prosper"
	cont "-ous city in all"
	cont "of KANTO! Can't"
	cont "argue with"
	cont "success!"
	
	para "But, I'm sure"
	line "you're not here"
	cont "for a speech. You"
	cont "are looking for"
	cont "a battle!"
	
	para "As gym leader, I"
	line "must accept!"
	
	done

_SaffronGymHowManyBadgesText::
	text "Let's keep it"
	line "fair! How many"
	cont "BADGEs do you"
	cont "have?"
	
	para "@"
	TX_NUM wEffectiveNumBadgesOwned, 1, 1
	text "? Okay!"
	line "I have just the"
	cont "right citizens" 
	cont "in mind for this"
	cont "battle!"
	
	para "Behold! The city"
	line "I call home!"
	
	done

_SaffronGymHowManyBadgesText0::
	text "Let's keep it"
	line "fair! How many"
	cont "BADGEs do you"
	cont "have?"
	
	para "None? Well, you"
	line "saved the best"
	cont "for first!"
	
	para "I have just the"
	line "right citizens" 
	cont "in mind for this"
	cont "battle!"
	
	para "Behold! The city"
	line "I call home!"

	done

_SaffronGymWinText::
	text "Stunning!"
	line "Well played!"
	
	para "Your #MON trust" 
	line "your leadership!"

	para "They did great."
	line "That means this"
	cont "CITIZEN BADGE"
	cont "is theirs!@@"

_SaffronGymRematchText::
	text "Welcome back to"
	line "SAFFRON CITY,"
	cont "<PLAYER>!"
	
	para "My secretary"
	line "has informed me"
	cont "you've returned"
	cont "for a rematch."
	
	para "Ready to face my"
	line "citizens again?"
	
	prompt
	
	
_SaffronGymCantRematchYetText::
	text "<PLAYER>, you"
	line "must learn there"
	cont "is more to life"
	cont "than battles!"
	
	para "Come back later,"
	line "when you are"
	cont "ready to learn!"
	
	done 

_SaffronGymRematchWinText::
	text "Superb!"
	
	para "Your friends are"
	line "very strong"
	cont "indeed!@@"

_SaffronGymAfterVictoryText::
	text "Congratulations,"
	line "<PLAYER>!"
	
	para "The CITIZEN"
	line "BADGE makes your"
	cont "#MON and you "
	cont "honorary citizens"
	cont "of SAFFRON!"
	
	para "Take these, too!"
	
	para "<PLAYER> got 3"
	line "ULTRA BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
	para "We are obligated"
	line "to bestow these"
	cont "in accordance"
	cont "to KANTO LEAGUE"
	cont "policy."
	
	para "Policy I very much"
	line "disagree with,"
	cont "but let's not get"
	cont "into politics!"
	
	done

_SaffronGymAfterRematchText::
	text "It's always"
	line "wonderful to see a"
	cont "strong bond between"
	cont "#MON and their"
	cont "human friends!"
	
	text "Go out in the"
	line "world and meet new"
	cont "friends, and learn"
	cont "from their"
	cont "perspectives!"
	
	para "<PLAYER> got 3"
	line "GREAT BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
		
	para "Those are GREAT"
	line "BALLs, courtesy"
	cont "of the KANTO LEAGUE."
	
	para "Please do not"
	line "attempt to use"
	cont "them within city"
	cont "limits."
	
	done

_SaffronGymText_5c4c1::
	text ""

	para "Take it! You"
	line "sure earned it!"
	prompt

_SaffronGymBattleText1::
	text "uu battle1"
	done

_SaffronGymEndBattleText1::
	text "uu endbattle1"
	prompt

_SaffronGymAfterBattleText1::
	text "uu afterbattle1"
	done

_SaffronGymWelcomeHere::
	text "Welcome to the"
	line "SAFFRON CITY HALL."
	
	para "MAYOR HUGH is"
	line "in right now,"
	cont "if you have an"
	cont "appointment."
	done

_SaffronGymWelcomeEmpty::
	text "Welcome to the"
	line "SAFFRON CITY GYM."
	
	done