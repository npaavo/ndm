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
	cont "#MON with"
	cont "care!"
	
	para "It will help"
	line "you capture any"
	cont "wild #MON"
	cont "you find!"
	
	para "If you need"
	line "#BALLs, you'll"
	cont "need to go north"
	cont "to VIRIDIAN CITY!"
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

	para "What? You ran"
	line "into trouble"
	cont "trying to buy"
	cont "#BALLs?"
	prompt 

_OaksLabDeliverParcelText2::
	text ""
	para "... Oh no! I was"
	line "supposed to"
	cont "give you your ID"
	cont "before you left!"
	
	para "I just applied to"
	line "approve LICENSEs"
	cont "last month."
	
	para "It's illegal to"
	line "train #MON"
	cont "without it!"
	
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
	text "It's really high-"
	line "tech looking."
	para "Better not"
	line "touch it..."
	done

_OaksLabText8::
	text "?"
	done

_OaksLabText_1d340::
	text "PROF.OAK is a"
	line "real genius!"

	para "He may be young,"
	line "but is already"
	cont "making waves!"
	
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
	
	para "The relentless"
	line "expansion of the"
	cont "cities and roads"
	cont "of KANTO are"
	cont "pushing out the"
	cont "native #MON!"
	
	para "The once peaceful"
	line "wild #MON"
	cont "have been seen"
	cont "attacking humans!"
	
	para "Some species are"
	line "even becoming"
	cont "endangered by"
	cont "habitat loss."
	
	para "I need you two"
	line "to capture one of"
	cont "every kind."
	
	para "We must learn"
	line "what we can"
	cont "about the KANTO"
	cont "species before"
	cont "it's too late!"
	
	para "With any luck,"
	line "we may be able"
	cont "to preserve the"
	cont "populations of"
	cont "every kind,"
	cont "even if only "
	cont "in captivity."

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
	text "<RIVAL>: Pff."
	line "I don't see why"
	cont "we couldn't have"
	cont "brought our own"
	cont "#MON... "
	
	para "You know, the"
	line "ones that won"
	cont "a CHAMPIONSHIP?"
	
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
	line "#MON. See ya,"
	cont "nerds!"
	
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
	cont "VIRIDIAN!"

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
	
	para "Well, you're both"
	line "here... again."
	
    para "So, now is a"
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

	para "Whenever you catch"
	line "a #MON, be"
	cont "sure to record"
	cont "any information"
	cont "about it!"
	
	para "When it's finished,"
	line "the #DEX will"
	cont "be a priceless"
	cont "tool for all new" 
	cont "#MON TRAINERs!"
	
	para "At least, that's"
	line "my dream."
	
	done
ENDC
IF DEF(_BLUE)
	text "c" 
	done
ENDC

_OaksLabText25::
IF DEF(_RED)
	text "Even better, it's" 
	line "got a digital"
	cont "copy of your ID."
	
	para "So don't go"
	line "throwing it away,"
	cont "hahah!"
ENDC
IF DEF(_BLUE)
	text "d" 
	done
ENDC
	para "<PLAYER> got the"
	line "#DEX from OAK!@@"

_OaksLabText26::

IF DEF(_RED)
	text "<PLAYER>..."
	line "<RIVAL>..."
	
	para "It's frightening"
	line "to think that in"
	cont "a few decades,"
	cont "trainers may"
	cont "never encounter"
	cont "#MON we take"
	cont "for granted..."
	
	para "Please, capture"
	line "as many species"
	cont "as you can!"
	
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
	text "Your #DEX"
	line "has recorded..."

	para "@"
	TX_NUM hDexRatingNumMonsSeen, 1, 3
	text " #MON seen"
	line "@"
	TX_NUM hDexRatingNumMonsOwned, 1, 3
	text " #MON owned"

	para "OAK: I see..."
	prompt

_OaksLabText_44201::
	text "We're just getting"
	line "started! I can't"
	cont "wait to see what"
	cont "you catch!"
	
	done

_OaksLabText_44206::
	text "You're on the"
	line "right track! "
	cont "Keep at it!"
	done

_OaksLabText_4420b::
	text "Keep an eye out"
	line "for rare #MON"
	cont "when exploring!"
	done

_OaksLabText_44210::
	text "Your effort shows!"
	line "But we're not"
	cont "done yet!"
	done

_OaksLabText_44215::
	text "Looking good!"
	line "Your dedication is"
	cont "admirable!"
	done

_OaksLabText_4421a::
	text "I can't believe"
	line "it! Over 50"
	cont "already?!"
	done

_OaksLabText_4421f::
	text "The #DEX is"
	line "really coming"
	cont "together!"
	done

_OaksLabText_44224::
	text "Very good!"
	line "I've learned a"
	cont "lot from you!"
	done

_OaksLabText_44229::
	text "Wonderful!"
	line "You're quite the"
	cont "collector!"
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
	text "I've never seen"
	line "some of these!"
	cont "Where did you"
	cont "find them?"
	done

_OaksLabText_4423d::
	text "Your catalog of"
	line "#MON is still"
	cont "growing?! Wow!"
	done

_OaksLabText_44242::
	text "Outstanding!"
	line "You've become a"
	cont "real pro at this!"
	done

_OaksLabText_44247::
	text "Are there even"
	line "any left to find?"
	cont "Good luck!"
	done

_OaksLabText_4424c::
	text "It's... beautiful!"
	line "You've made a"
	cont "dream come true!"
	
	para "<PLAYER>, I am"
	line "forever in your"
	cont "debt!"
	done
