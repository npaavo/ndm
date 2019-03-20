_OaksLabGaryText1::
	text "<RIVAL>: So, you"
	line "finally made it."
	para "OAK isn't here"
	line "yet. Why don't you"
	cont "make yourself"
	cont "useful and find"
	cont "him?"
	done

_OaksLabText40::
	text "<RIVAL>: I can"
	line "win with any of"
	cont "these."

	para "I'll let 2nd place"
	line "go first. Heh."
	done

_OaksLabText41::
	text "<RIVAL>: Already"
	line "doubting your"
	cont "choice? Tough!"
	
	para "I'm not into"
	line "trading."
	done

_OaksLabText39::
	text "OAK seems to "
	line "have left some"
	cont "#MON here."
	done

_OaksLabCharmanderText::
	text "It seems full of"
	line "promise, somehow."
	cont "Pick CHARMANDER?"
	done

_OaksLabSquirtleText::
	text "It reminds you"
	line "of home, somehow."
	cont "Pick SQUIRTLE?"
	done

_OaksLabBulbasaurText::
	text "Seeing it makes"
	line "you feel brave."
	cont "Pick BULBASAUR?"
	done

_OaksLabMonEnergeticText::
	text "Good choice! A"
	line "fine #MON!"
	prompt

_OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"

_OaksLabLastMonText::
	text "You can catch"
	line "your own."
	done

_OaksLabText_1d2f0::
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

_OaksLabText_1d2f5::
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

_OaksLabText_1d2fa::
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

_OaksLabDeliverParcelText1::
	text "OAK: Oh, <PLAYER>!"

	para "How is training"
	line "going?"

	para "The #MON I"
	line "gave you is"
	cont "looking strong."

	para "Your reputation"
	line "as a top TRAINER"
	cont "shines through!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL.@@"

_OaksLabDeliverParcelText2::
	text ""
	para "... Oh no! I was"
	line "supposed to"
	cont "stamp your ID"
	cont "before you left!"
	
	para "I just applied to"
	line "approve LICENSEs"
	cont "last month."
	
	para "It's illegal to"
	line "train #MON"
	cont "without a stamp"
	cont "of this seal!"
	
	para "... Wait! We"
	line "need to find"
	cont "<RIVAL> before he"
	cont "gets in trouble!"
	
	done

_OaksLabAroundWorldText::
	text "I'm beginning to"
	line "doubt <RIVAL>..."
	
	para "...but I can count"
	line "on you, right?"
	done

_OaksLabGivePokeballsText1::
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> got 5"
	line "# BALLs!@@"

_OaksLabGivePokeballsText2::
	text ""
	para "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and try"
	line "to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

_OaksLabPleaseVisitText::
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

_OaksLabText_1d31d::
	text "OAK: Good to see "
	line "you! How is your "
	cont "#DEX coming? "
	cont "Here, let me take"
	cont "a look!"
	prompt

_OaksLabText_1d32c::
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

_OaksLabText8::
	text "?"
	done

_OaksLabText_1d340::
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

_OaksLabRivalWaitingText::

IF DEF(_RED)
	text "<RIVAL>: About"
	line "time you show up!"
	
	para "I was about to"
	line "pack up and head"
	cont "back to JOHTO!"
	
	para "People there"
	line "respect my time!"
	done
ENDC
IF DEF(_BLUE)
	text "a" 
	done
ENDC

_OaksLabChooseMonText::
IF DEF(_RED)
	text "OAK: Sorry about"
	line "that! But, we're"
	cont "all here now."

	para "<PLAYER>! <RIVAL>!"
	line "Thank you again"
	cont "for answering my"
	cont "call. Allow me"
	cont "to fully brief"
	cont "you on our plan."
	
	para "This region is"
	line "full of wonderful"
	cont "kinds of #MON."
	
	para "Forests, caves,"
	line "rivers and seas"
	cont "all contain a"
	cont "wide variety of"
	cont "species!"
	
	para "But the cities"
	line "are pushing the"
	cont "wildlife out,"
	cont "and the #MON"
	cont "are becoming"
	cont "hostile!"
	
	para "I need you two"
	line "to capture one of"
	cont "every kind. We"
	cont "must understand"
	cont "these magnificent"
	cont "creatures, and"
	cont "find ways to"
	cont "coexist!"

	para "To help you do"
	line "that, I'll give"
	cont "you a #MON"
	cont "to start out!"
	
	para "You'll need one"
	line "to protect you"
	cont "from wild ones!"
	done
ENDC
IF DEF(_BLUE)
	text "b" 
	done
ENDC
_OaksLabRivalInterjectionText::
IF DEF(_RED)
	text "<RIVAL>: Tch."
	line "I don't see why"
	cont "we couldn't have"
	cont "brought our own"
	cont "#MON... You"
	cont "know, the ones"
	cont "that won the"
	cont "CHAMPIONSHIP?"
	
	para "...or, in the case"
	line "of <PLAYER>, at"
	cont "least came in 2nd."
	done
ENDC
IF DEF(_BLUE)
	text "c" 
	done
ENDC

_OaksLabBePatientText::
IF DEF(_RED)
	text "OAK: The last"
	line "thing we need is"
	cont "invasive species."
	
	para "Now! Go on and"
	line "choose!"
	
	para "Don't worry, they"
	line "aren't rare. You"
	cont "can catch these"
	cont "around VIRIDIAN!"
	done
ENDC
IF DEF(_BLUE)
	text "d" 
	done
ENDC
_OaksLabLeavingText::
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

_OaksLabRivalPickingMonText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "a @"
	TX_RAM wcd6d
	text "!@@"

_OaksLabRivalChallengeText::
IF DEF(_RED)
	text "<RIVAL>: Wait."
	line "<PLAYER>."
	
	para "It's been a hot"
	line "minute since I"
	cont "mopped the floor"
	cont "with you."
	
	para "Come on, I'll take"
	line "you on, and win!"
	
	para "Even with this"
	line "weak #MON!"
	done
ENDC
IF DEF(_BLUE)
	text "e" 
	done
ENDC

_OaksLabText_1d3be::
	text "Tch."
	line "You're lucky you"
	cont "picked a strong"
	cont "one."
	prompt

_OaksLabText_1d3c3::
	text "<RIVAL>: Deja"
	line "vu! Hahahah!"
	prompt

_OaksLabRivalToughenUpText::
IF DEF(_RED)
	text "<RIVAL>: Look,"
	line "OAK. I'll help you"
	cont "with the project."

	para "But my first"
	line "priority is to"
	cont "conquer the KANTO"
	cont "#MON LEAGUE."
	
	para "Thanks for the"
	line "TRAINER LICENSE."
	cont "Later."
	
	done
ENDC
IF DEF(_BLUE)
	text "f" 
	done
ENDC
_OaksLabText21::
	text "<RIVAL>: OOOAK!"
	done

_OaksLabText22::
IF DEF(_RED)
	text "What kind of hack"
	line "job is this?!"
	
	para "I almost got"
	line "arrested in"
	cont "VIRIDIAN for an"
	cont "unapproved ID!"

    para "Good thing they"
	line "recognized me!"
	done
ENDC
IF DEF(_BLUE)
	text "a" 
	done
ENDC
_OaksLabText23::
IF DEF(_RED)
	text "OAK: I'm so"
	line "sorry! I'm new"
	cont "to this!"
	
	para "I'm a researcher,"
	line "not a bureaucrat!"
	
	para "But, <PLAYER> has"
	line "delivered my"
	cont "stamp. We can fix"
	cont "this now."
	
	para "This is also a"
	line "good opportunity"
	cont "to give you this!"
	done
ENDC
IF DEF(_BLUE)
	text "b" 
	done
ENDC
_OaksLabText24::
IF DEF(_RED)
	text "On the desk there"
	line "is my invention,"
	cont "the #DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	
	done
ENDC
IF DEF(_BLUE)
	text "c" 
	done
ENDC

_OaksLabText25::
IF DEF(_RED)
	text "I was a little"
	line "unsure if I"
	cont "should give you"
	cont "it, since it is"
	cont "only a prototype"
	cont "right now, but"
	cont "what the heck!"
ENDC
IF DEF(_BLUE)
	text "d" 
	done
ENDC
	para "<PLAYER> got the"
	line "#DEX from OAK!@@"

_OaksLabText26::

IF DEF(_RED)
	text "Making a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

	para "Future TRAINERs"
	line "will be relying"
	cont "on our finds!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done
ENDC
IF DEF(_BLUE)
	text "e" 
	done
ENDC
_OaksLabText27::
IF DEF(_RED)
	text "<RIVAL>: Sure."
	line "I'm sure there's"
	cont "SOME strong ones"
	cont "out here."

	para "I'll catch what"
	line "I need to beat"
	cont "the KANTO GYM"
	cont "LEADERS."
	
	para "<PLAYER>, catch"
	line "the weak ones"
	cont "for me."
	
	para "See ya, nerds!"
	
	done
ENDC
IF DEF(_BLUE)
	text "f" 
	done
ENDC
_OaksLabText_1d405::
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

_OaksLabText_441cc::
	text "#DEX comp-"
	line "letion is:"

	para "@"
	TX_NUM hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	TX_NUM hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	prompt

_OaksLabText_44201::
	text "You still have"
	line "lots to do."
	cont "Look for #MON"
	cont "in grassy areas!"
	done

_OaksLabText_44206::
	text "You're on the"
	line "right track! "
	cont "Get a FLASH HM"
	cont "from my AIDE!"
	done

_OaksLabText_4420b::
	text "You still need"
	line "more #MON!"
	cont "Try to catch"
	cont "other species!"
	done

_OaksLabText_44210::
	text "Good, you're"
	line "trying hard!"
	cont "Get an ITEMFINDER"
	cont "from my AIDE!"
	done

_OaksLabText_44215::
	text "Looking good!"
	line "Go find my AIDE"
	cont "when you get 50!"
	done

_OaksLabText_4421a::
	text "You finally got at"
	line "least 50 species!"
	cont "Be sure to get"
	cont "EXP.ALL from my"
	cont "AIDE!"
	done

_OaksLabText_4421f::
	text "Ho! This is geting"
	line "even better!"
	done

_OaksLabText_44224::
	text "Very good!"
	line "Go fish for some"
	cont "marine #MON!"
	done

_OaksLabText_44229::
	text "Wonderful!"
	line "Do you like to"
	cont "collect things?"
	done

_OaksLabText_4422e::
	text "I'm impressed!"
	line "It must have been"
	cont "difficult to do!"
	done

_OaksLabText_44233::
	text "You finally got at"
	line "least 100 species!"
	cont "I can't believe"
	cont "how good you are!"
	done

_OaksLabText_44238::
	text "You even have the"
	line "evolved forms of"
	cont "#MON! Super!"
	done

_OaksLabText_4423d::
	text "Excellent! Trade"
	line "with friends to"
	cont "get some more!"
	done

_OaksLabText_44242::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_OaksLabText_44247::
	text "I have nothing"
	line "left to say!"
	cont "You're the"
	cont "authority now!"
	done

_OaksLabText_4424c::
	text "Your #DEX is"
	line "entirely complete!"
	cont "Congratulations!"
	done
