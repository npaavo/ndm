_OakSpeechText1::
IF DEF(_RED)
	text "Hello there!"
	line "I'm glad you got"
	cont "my invitation!"

	para "My name is OAK!"
	line "I study #MON"
	cont "at an outpost"
	cont "in KANTO!"
	
	para "My research has"
	line "gone great! ..."
	cont "until recently."
	
	para "Our cities and"
    line "towns are growing"
	cont "at an incredible"
	cont "rate. Hundreds"
	cont "of people are"
	cont "moving here every"
	cont "day!"
	prompt
ENDC
IF DEF(_BLUE)
	text "a"
	prompt
ENDC

_OakSpeechText2A::
IF DEF(_RED)
	text "But this has come"
	line "at a great cost."
	
	para "As we build new"
	line "roads and homes,"
	cont "wild #MON are"
	cont "being forced out"
	cont "of their habitat!"
	prompt
ENDC
IF DEF(_BLUE)
	text "b"
	prompt
ENDC

_OakSpeechText2B::
IF DEF(_RED)
	text "Wild #MON"
	line "have become more"
	cont "and more hostile"
	cont "every day."
	
	para "I have a theory,"
	line "that they sense"
	cont "the danger we"
	cont "pose, and are"
	cont "fighting back!"
	
	prompt
ENDC
IF DEF(_BLUE)
	text $51,"c"
	prompt
ENDC

_IntroducePlayerText::
IF DEF(_RED)
	text "That is why I"
	line "reached out to"
	cont "expert #MON"
	cont "TRAINERs like"
	cont "yourself, all"
	cont "over the world!"
	
	para "I need your help"
	line "with a project!"
	
	para "Should you accept" 
	line "my invitation, I"
	cont "will ensure you"
	cont "have a KANTO"
	cont "TRAINER's LICENSE"
	cont "by the time you"
	cont "arrive."
	
	para "I'm honestly a"
	line "bit star-struck."
	cont "Is it really you?"
	prompt
ENDC
IF DEF(_BLUE)
	text "d"
	prompt
ENDC

_IntroduceRivalText::
IF DEF(_RED)
	text "I hope you don't"
	line "mind, but I've"
	cont "contacted other"
	cont "TRAINERS about"
	cont "this opportunity."
	
	para "We need all the"
	line "help we can get!"

	para "I'm sure you know"
	line "this one."
	prompt
ENDC
IF DEF(_BLUE)
	text "e"
	prompt 
ENDC

_OakSpeechText3::
IF DEF(_RED)
	text "<PLAYER>!"

	para "Together, we can"
	line "change KANTO for"
	cont "the better."

	para "We can't waste"
	line "another moment!"
	cont "I'll see you at"
	cont "CAMP PALLET!"
	done
ENDC 
IF DEF(_BLUE)
	text "f"
	done 
ENDC