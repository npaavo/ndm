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

	para "I'll let you be"
	line "1st in something"
	cont "for once."
	
	para "Enjoy it while"
	line "you can."
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
	text "!@@@"
	prompt

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
	text "uu"
	done

_OaksLabDeliverParcelText1::
	text "uu"
	prompt 

_OaksLabDeliverParcelText2::
	text "uu"
	
	done

_OaksLabAroundWorldText::
	text "I'm beginning to"
	line "doubt <RIVAL>..."
	
	para "...but I can count"
	line "on you, right?"
	
	para "You've got your" 
	line "work cut out for"
	cont "you. Use these"
	cont "to capture wild"
	cont "#MON."	
	prompt

_OaksLabGivePokeballsText1::
	text "<PLAYER> got 5"
	line "#BALLs!@@"

_OaksLabGivePokeballsText2::
	text ""
	para "I believe in you,"
	line "<PLAYER>!" 
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
	cont "for traveling all"
	cont "the way out here."
	
	para "Let me fully brief"
	line "you two on our"
	cont "plan..."
	
	para "The once peaceful"
	line "wild #MON"
	cont "have been seen"
	cont "attacking people."
	
	para "I theorize this"
	line "behavior is"
	cont "related to the"
	cont "construction of"
	cont "our growing"
	cont "cities and towns."
	
	para "Some species are"
	line "even becoming"
	cont "endangered by"
	cont "habitat loss..."
	
	para "...which makes my"
	line "job as a #MON"
	cont "RESEARCHER"
	cont "a lot harder!"
	
	para "We must learn"
	line "what we can about"
	cont "KANTO's native"
	cont "#MON before"
	cont "it's too late!"

	para "I'd like you two"
	line "to capture one of"
	cont "every #MON."	
	
	para "With some luck,"
	line "we may be able"
	cont "to preserve the"
	cont "populations of"
	cont "every kind... "

	para "...even if only "
	line "in captivity."

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
	text "OAK: We must"
	line "observe how they"
	cont "interact with"
	cont "#MON they are"
	cont "familiar with!"
	
	para "Besides, I chose"
	line "you two because"
	cont "you were expert"
	cont "#MON TRAINERs."
	
	para "A fresh start"
	line "should be super"
	cont "easy for you!"
	
	para "Now! Go on and"
	line "choose!"
	
	para "Don't worry too"
	line "much about your"
	cont "choice, they are"
	cont "not rare at all."
	
	para "You can find more"
	line "of these #MON"
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
	text "<RIVAL>: Fine."
	line "This one's mine."
	done

_OaksLabRivalReceivedMonText::
	text "<RIVAL> chose"
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
	text "uu"
	done

_OaksLabText22::
IF DEF(_RED)
	text "uu"
	done
ENDC
IF DEF(_BLUE)
	text "a" 
	done
ENDC
_OaksLabText23::
IF DEF(_RED)
	text "uu"
	done
ENDC
IF DEF(_BLUE)
	text "b" 
	done
ENDC
_OaksLabText24::
IF DEF(_RED)
	text "uu"
	
	done
ENDC
IF DEF(_BLUE)
	text "c" 
	done
ENDC

_OaksLabText25::
IF DEF(_RED)
	text "You'll also need" 
	line "this! It's my new"
	cont "invention I call"
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
	line "my dream... so"	
	cont "don't go throwing"
	cont "it away, hahah!"
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
	cont "for me, will ya?"
	
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
	text "It's beautiful!"
	line "You've made a"
	cont "dream come true!"
	
	para "<PLAYER>, I am"
	line "forever in your"
	cont "debt!"
	done
