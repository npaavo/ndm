_VermilionGymFirstFightIntroText::
	text "Oh, hey there!"
	line "Who are you?"
	
	para "...<PLAYER>? Okay,"
	line "<PLAYER>. I'm in"
	cont "the middle of"
	cont "practice. Shows"
	cont "won't be until"
	cont "tomorrow."
	
	para "Oh, wait, you're"
	line "here for battles?"
	cont "Hahah! Whoops!"
	
	para "Sometimes I forget"
	line "I'm also the"
	cont "VERMILION GYM"
	cont "leader!"
	
	para "My name's TORI!"
	line "I grew up around"
	cont "the coastline!"
	cont "That's where I"
	cont "also discovered"
	cont "the joy of"
	cont "#MON!"
	
	para "They're my partners"
	line "in both shows"
	cont "and battle! Think"
	cont "you can beat us?"
	cont "Think again!"
	
	para ""
	
	done

_VermilionGymHowManyBadgesText::
	text "Anyway, how"
	line "many BADGES have" 
	cont "you won so far?" 
	
	para "@"
	TX_NUM wEffectiveNumBadgesOwned, 1, 1
	text ", dang! Okay!"
	line "You ARE serious"
	cont "about this!" 
	
	para "I'll use these"
	line "#MON, then!"
	
	para "It's showtime!"
	
	done

_VermilionGymHowManyBadgesText0::
	text "Anyway, how"
	line "many BADGES have" 
	cont "you won so far?" 
	
	para "None? Well, okay."
	line "Do you need some"
	cont "pointers... or"
	cont "something?" 
	
	para "No? Okay then."
	line "Good luck!"
	
	para "It's showtime!"

	done

_VermilionGymWinText::
	text "Whoa!"
	line "What a show!"
	
	para "You and your" 
	line "#MON are"
	cont "totally in sync!"

	para "I'll be sure to"
	line "keep practicing!"
	cont "In the mean time,"
	cont "you've earned this"
	cont "FLOW BADGE!@@"

_VermilionGymRematchText::
	text "Heeey! It's"
	line "<PLAYER>! Welcome"
	cont "back!"
	
	para "You're just the"
	line "TRAINER I've been"
	cont "looking for!"
	
	para "I've practiced a lot"
	line "since our last"
	cont "battle. Don't"
	cont "underestimate me!"
	
	prompt
	
	
_VermilionGymCantRematchYetText::
	text "Encore already?"
	line "Hah, no thanks!"
	
	para "Come back some"
	line "other time!"
	
	done 

_VermilionGymRematchWinText::
	text "WHOA!"
	
	para "You're really"
	line "making waves!@@"

_VermilionGymAfterVictoryText::
	text "I wasn't ready for"
	line "that! Rats!"
	
	para "Well, only one"
	line "way forward- to"
	cont "keep practicing!"
	
	para "I hope you keep"
	line "moving forward,"
	cont "too! Never lose"
	cont "that flow!"
	
	para "Oh! Right! You"
	line "also get these!"	
	
	para "<PLAYER> got 3"
	line "ULTRA BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
	para "Catch some strong"
	line "ones, you hear?"
	
	para "And when you do,"
	line "come on back for"
	cont "a rematch!"
	
	para "You can also,"
	line "you know, stick"
	cont "around for a"
	cont "show afterwards."
	
	para "Hahah! I'm joking!"
	line "...or am I?"
	
	done

_VermilionGymAfterRematchText::
	text "Bummer man!"
	line "Well, back to the"
	cont "kiddie pool!"
	
	para "Anyway, here's a"
	line "little prize for"
	cont "your victory."
	
	para "<PLAYER> got 3"
	line "GREAT BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
		
	para "Those are GREAT"
	line "BALLs, courtesy"
	cont "of the VERMILION"
	cont "GYM!"
	
	para "I don't need to"
	line "tell you how to"
	cont "use 'em!"
	
	done
	
_VermilionGymText_5c4c1::
	text ""

	para "Take it! You"
	line "sure earned it!"
	prompt

_VermilionGymBattleText1::
	text "uu battle1"
	done

_VermilionGymEndBattleText1::
	text "uu endbattle1"
	prompt

_VermilionGymAfterBattleText1::
	text "uu afterbattle1"
	done

_VermilionGymWelcomeHere::
	text "Welcome to the"
	line "Vermilion CITY GYM."
	
	para "LEADER TORI is"
	line "in right now."
	cont "Good luck in"
	cont "your battle!"
	done

_VermilionGymWelcomeEmpty::
	text "Welcome to the"
	line "Vermilion CITY GYM."
	
	done

