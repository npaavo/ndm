_PewterGymFirstFightIntroText::
	text "Hey <PLAYER>!"
	
	para "Yep, it's still me!"
	line "LARS, the rock-"
	cont "guy!"

	para "In battle or when"
	line "spelunking, you've"
	cont "gotta trust in"
	cont "yourself and your"
	cont "gear!"

	para "That's why my"
	line "#MON are all"
	cont "tough as nails!"
	cont "Nothing phases"
	cont "them!"

	para "You had heart to"
	line "find me in the"
	cont "bottom of that"
	cont "dark cave, but"
	cont "do you have that"
	cont "same bravery in"
	cont "#MON battle?"
	
	para "Let's find out,"
	line "buddy! You and"
	cont "me, right here!"
	
	para "There's a nice"
	line "BADGE in it for"
	cont "you if you win!"
	
	prompt

_PewterGymHowManyBadgesText::
	text "Speakin' a, how"
	line "many BADGES have" 
	cont "you got under" 
	cont "your belt? ..."
	
	para "@"
	TX_NUM wEffectiveNumBadgesOwned, 1, 1
	text " eh? Hahah!"
	line "Well aren't you"
	cont "a young hotshot!" 
	
	para "I'll use these"
	line "#MON, then!"
	
	para "Let's rock! I'll"
	line "cave you in!"
	
	done

_PewterGymHowManyBadgesText0::
	text "Speakin' a, how"
	line "many BADGES have" 
	cont "you got under" 
	cont "your belt? ..."
	
	para "None yet?!"
	line "Shucks! Well, no"
	cont "problem. I got a"
	cont "set of #MON" 
	cont "for newcomers," 
	cont "too!"
	
	para "Don't think I'll"
	line "go easy on you," 
	cont "though!"
	
	para "Let's rock! I'll"
	line "cave you in!"

	done

_PewterGymWinText::
	text "Hoowee!"
	line "Now that's a"
	cont "battle!"
	
	para "You really know" 
	line "your stuff!"

	para "You beat me fair"
	line "and square, so"
	cont "that means this"
	cont "ADVENTURE BADGE"
	cont "is yours!@@"

_PewterGymRematchText::
	text "Hey hey! It's"
	line "<PLAYER>! Welcome"
	cont "back!"
	
	para "I can see it in"
	line "your eyes, you"
	cont "want a rematch!"
	
	para "Hahah! And I'll"
	line "happily oblige!"
	cont "Let's do this!"
	
	prompt
	
	
_PewterGymCantRematchYetText::
	text "Oh, hey again!"
	line "<PLAYER>, you"
	cont "want to fight"
	cont "again already?"
	
	para "Slow your roll," 
	line "friend!"
	
	para "Come back after"
	line "you've come up"
	cont "with some new"
	cont "strategies!"
	
	done 

_PewterGymRematchWinText::
	text "Again!?"
	
	para "I thought I had"
	line "you this time!"
	
	para "Nice work! You"
	line "got heart, and"
	cont "it shows!@@"

_PewterGymAfterVictoryText::
	text "It's not every"
	line "day a TRAINER"
	cont "like you comes"
	cont "to my doorstep."
	
	para "I can already"
	line "tell you're gonna"
	cont "be a big name"
	cont "around here."
	
	para "But fortune will"
	line "pass you by if"
	cont "you're not bold."
	
	para "Go out in the"
	line "world and make"
	cont "this adventure"
	cont "yours!"
	
	para "Set your own"
	line "path from the"
	cont "heart, and you'll"
	cont "never truly be"
	cont "lost."
	
	para "Keep that"
	line "ADVENTURE BADGE"
	cont "close to remind"
	cont "you if you lose"
	cont "your north!"
	
	para "Take these, too!"
	
	para "<PLAYER> got 3"
	line "ULTRA BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
	para "There's some real"
	line "strong #MON"
	cont "out there that"
	cont "don't take kindly"
	cont "to being caught!"
	
	para "Give those hard-"
	line "to-please #MON"
	cont "an ULTRA BALL to"
	cont "convince 'em"
	cont "otherwise!"
	
	para "And hey, if you"
	line "find yourself in"
	cont "PEWTER again,"
	cont "come back for a"
	cont "rematch!"
	
	para "Can't give ya'"
	line "another badge,"
	cont "but I'll give you"
	cont "a run for your"
	cont "money! See ya!"
	
	done

_PewterGymAfterRematchText::
	text "Every battle is"
	line "a new adventure!"
	
	para "It's a dang shame"
	line "adventures with"
	cont "you always send"
	cont "me to the"
	cont "#MON CENTER!"
	cont "Huahahaha!"
	
	para "Anyway, here's a"
	line "little prize for"
	cont "your victory."
	
	para "<PLAYER> got 3"
	line "GREAT BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
		
	para "Those are GREAT"
	line "BALLs, courtesy"
	cont "of the PEWTER GYM!"
	
	para "The KANTO LEAGUE"
	line "sends us GYM"
	cont "LEADERs way too"
	cont "many of the darn"
	cont "things."
	
	para "I know you'll get"
	line "more use out of"
	cont "'em than I will!"
	
	done
	
_TM34PreReceiveText::
	text "Wait! Take this"
	line "with you!"
	done

_ReceivedTM34Text::
	text "uu got tm"

_TM34ExplanationText::
	text ""

	para "uu TM34 exp"
	done

_TM34NoRoomText::
	text "You don't have"
	line "room for this!"
	done

_PewterGymText_5c4c1::
	text ""

	para "Take it! You"
	line "sure earned it!"
	prompt

_PewterGymBattleText1::
	text "uu battle1"
	done

_PewterGymEndBattleText1::
	text "uu endbattle1"
	prompt

_PewterGymAfterBattleText1::
	text "uu afterbattle1"
	done

_PewterGymWelcomeHere::
	text "Welcome to the"
	line "PEWTER CITY GYM."
	
	para "LEADER LARS is"
	line "in right now."
	cont "Good luck in"
	cont "your battle!"
	done

_PewterGymWelcomeEmpty::
	text "Welcome to the"
	line "PEWTER CITY GYM."
	
	para "...Unfortunately,"
	line "LEADER LARS is,"
	cont "umm... away."
	
	para "He went exploring,"
	line "as he tends to"
	cont "when there aren't" 
	cont "any challengers."
	
	para "I don't know when"
	line "he will be back."
	cont "It might be "
	cont "faster to find "
	cont "him yourself..."
	
	para "Sorry!"
	
	done

