_OakAppearsText::
	text "OAK: Hey! <PLAYER>!"
	line "There you are!"
	done

_OakWalksUpText::
IF DEF(_RED)
	text "We must've just" 
	line "passed by each"
	cont "other! I came by" 
	cont "your place to" 
	cont "pick you up!"
	
	para "I guess it's good"
	line "you're up and out"
	cont "earlier than me!"
	cont "Hahah!"

	para "Come on back to"
	line "my lab so we can" 
	cont "get to work!"
	done
ENDC
IF DEF(_BLUE)
	text "a" 
	done
ENDC
_PalletTownText2::
	text "PALLET CAMP is"
	line "alright, I guess."

	para "I can't imagine"
	line "living here,"
	cont "though. No shops!"
	
	para "Oh, you're the one"
	line "that moved into"
	cont "that tiny shack?"
	
	para "It's... quaint."
	done

_PalletTownText3::
	text "Technology is"
	line "incredible!"

	para "You can even get"
	line "a signal all the"
	cont "way out here!"
	done

_PalletTownText4::
	text "OAK #MON"
	line "RESEARCH LAB"
	done

_PalletTownText5::
	text "CAMP PALLET"
	
	para "Please don't"
	line "litter!"
	done

_PalletTownText6::
	text "It's a permit to"
	line "construct a"
	cont "temporary home."
	
	para "You live here"
	line "now!"
	done
