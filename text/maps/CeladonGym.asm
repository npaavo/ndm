_CeladonGymFirstFightIntroText::
	text "Hello again,"
	line "<PLAYER>."
	
	para "I must admit I"
	line "wasn't expecting"
	cont "you to follow"
	cont "through on my"
	cont "deal, but what's"
	cont "done is done."
	
	para "So now I must take"
	line "a moment from my"
	cont "very important"
	cont "work for a "
	cont "#MON battle."
	
	para "Hmph."
	
	para "Well, so be it!"
	line "It's time for an"
	cont "experiment."
	
	para "<PLAYER>, I don't"
	line "play games with"
	cont "#MON."
	
	para "There are some"
	line "truly remarkable"
	cont "creatures that"
	cont "have emerged"
	cont "from our works."
	
	para "Evolution is a"
	line "slow process. Why"
	cont "wait on nature"
	cont "when we can give"
	cont "it a jump-start!"
	
	para "So come! Face"
	line "the power of"
	cont "nature... guided"
	cont "by true genius!"
	
	done

_CeladonGymHowManyBadgesText::
	text "Fairness is a"
	line "hinderance, but I'm"
	cont "obligated to try"
	cont "to make things"
	cont "equal. How many"
	cont "BADGEs have you"
	cont "earned so far?"
	
	para "@"
	TX_NUM wEffectiveNumBadgesOwned, 1, 1
	text "? Fine."
	
	para "I'll use these"
	line "#MON, then."
	
	para "Don't lose your"
	line "head. You'll need"
	cont "it!"
	
	done

_CeladonGymHowManyBadgesText0::
	text "Fairness is a"
	line "hinderance, but I'm"
	cont "obligated to try"
	cont "to make things"
	cont "equal. How many"
	cont "BADGEs have you"
	cont "earned so far?"
	
	para "None? That's..."
	line "...unexpected."
	
	para "I'll use these"
	line "#MON, then."
	
	para "Don't lose your"
	line "head. You'll need"
	cont "it!"

	done

_CeladonGymWinText::
	text "..."
	line "Well, the "
	cont "evidence speaks"
	cont "for itself."
	
	para "It seems you did"
	line "your homework."

	para "As per procedure,"
	line "you've earned a"
	cont "PROGRESS BADGE.@@"

_CeladonGymRematchText::
	text "<PLAYER> again?"
	line "Ugh... I was just"
	cont "getting into"
	cont "something..."
	
	para "Fine, fine, it's"
	line "been a while"
	cont "since I was"
	cont "challenged."
	
	para "Not to a battle,"
	line "but by anything."
	cont "The curse of"
	cont "genius!"
	
	prompt
	
	
_CeladonGymCantRematchYetText::
	text "<PLAYER>? Do you"
	line "think I've got"
	cont "nothing to do but"
	cont "battle you?"
	
	para "Go do whatever it"
	line "is that you do"
	cont "that isn't science."
	
	done 

_CeladonGymRematchWinText::
	text "I could"
	line "probably have"
	cont "predicted this."
	
	para "But, my hypothesis"
	line "was incorrect."
	
	para "I suppose some"
	line "congratulations"
	cont "are in order.@@"

_CeladonGymAfterVictoryText::
	text "Words are cheap,"
	line "but you're good"
	cont "at this."
	
	para "You should stick"
	line "to battling. It's"
	cont "clearly a talent"
	cont "of yours."
	
	para "Take these. You'll"
	line "certainly find a"
	cont "use for them."
	
	para "<PLAYER> got 3"
	line "ULTRA BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
	para "Capture some new"
	line "specimens. The"
	cont "strong kind, of"
	cont "course."
	
	para "Keep experimenting"
	line "with new #MON."
	cont "Maybe we can"
	cont "rematch sometime."
	
	done

_CeladonGymAfterRematchText::
	text "Yes, yes, you won."
	line "Good work."
	
	para "If I give you a"
	line "prize, will you"
	cont "get out of my lab?"
	
	para "<PLAYER> got 3"
	line "GREAT BALLs!@"
	
	TX_SFX_KEY_ITEM
	
	text ""
		
	para "Good luck with"
	line "whatever it is you"
	cont "do, <PLAYER>."
	
	done
	
_CeladonGymText_5c4c1::
	text ""

	para "Take it! You"
	line "sure earned it!"
	prompt

_CeladonGymBattleText1::
	text "uu battle1"
	done

_CeladonGymEndBattleText1::
	text "uu endbattle1"
	prompt

_CeladonGymAfterBattleText1::
	text "uu afterbattle1"
	done

_CeladonGymWelcomeHere::
	text "Welcome to the"
	line "CELADON CITY GYM."
	
	para "LEADER MAXINE is"
	line "in right now."
	
	para "Please only"
	line "interrupt her if"
	cont "you intend to win."
	
	done

_CeladonGymWelcomeEmpty::
	text "Welcome to the"
	line "CELADON CITY GYM."	
	done

